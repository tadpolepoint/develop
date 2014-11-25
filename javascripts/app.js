(function() {
  var $artist, $body, $content, $externalLink, $hiddenPreLoader, $object, $objectTitle, $random, $togglers, DEBUG, counter, getItems, setBackground, showItem, showItems, xx;

  xx = function(t) {
    return DEBUG && console.log(t);
  };

  DEBUG = true;

  $body = $('body');

  $content = $('.content');

  counter = null;

  $body.on('click', 'a[href=#]', function(event) {
    return event.preventDefault();
  });

  $hiddenPreLoader = $('<div class="hide">').appendTo($body);

  _.each(data, function(item) {
    return $('<img>').attr('src', "/uploads/" + item.url).appendTo($hiddenPreLoader).on('load', function() {
      return $(this).remove();
    });
  });

  setBackground = function(url) {
    return $content.css('background-image', "url('/uploads/" + url + "')");
  };

  getItems = function(artist, length) {
    var res;

    res = _.where(data, {
      artist: artist
    });
    if (length != null) {
      res = _.sample(res, length);
    }
    return res;
  };

  showItems = function(artist) {
    var duration, index, items, _item, _next, _show;

    items = getItems(artist, 3);
    index = 0;
    duration = 3000;
    _item = function() {
      return items[index];
    };
    _next = function() {
      index++;
      if (index === items.length) {
        index = 0;
      }
      return _show();
    };
    _show = function() {
      if (counter != null) {
        clearTimeout(counter);
      }
      showItem(_item());
      return counter = setTimeout(_next, duration);
    };
    return _show();
  };

  showItem = function(item) {
    setBackground(item.url);
    $artist.text(item.artist_name);
    $object.text(item.object.name);
    return $objectTitle.text(item.object.title);
  };

  $random = $('.random');

  if ($random.length) {
    setBackground(_.sample(data).url);
  }

  $artist = $('.artist');

  $object = $('.object');

  $objectTitle = $('.object-title');

  $externalLink = $('.external-link');

  $togglers = $('[data-artist]');

  $togglers.on('click', function() {
    var $toggler, artist;

    $toggler = $(this);
    artist = $toggler.data('artist');
    $togglers.removeClass('active');
    $toggler.addClass('active');
    showItems(artist);
    return $externalLink.removeClass('hide');
  });

  $togglers.eq(0).trigger('click');

}).call(this);

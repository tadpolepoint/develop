######################
# GLOBAL
######################

xx = (t) -> DEBUG && console.log t
DEBUG = true
$body = $('body')
$content = $('.content')
counter = null

$body.on 'click', 'a[href=#]', (event) -> event.preventDefault()
$hiddenPreLoader = $('<div class="hide">').appendTo($body)
_.each data, (item) ->
  $('<img>').attr('src', "/uploads/#{item.url}").appendTo($hiddenPreLoader).on('load', -> $(@).remove())

######################
# FUNCTIONS
######################

setBackground = (url) ->
  $content.css('background-image', "url('/uploads/#{url}')")

getItems = (artist, length) ->
  res = _.where(data, {artist: artist})
  res = _.sample(res, length) if length?
  res

showItems = (artist) ->
  items = getItems(artist, 3)
  index = 0
  duration = 3000
  _item = -> items[index]
  _next = ->
    index++
    index = 0 if index == items.length
    _show()
  _show = ->
    clearTimeout(counter) if counter?
    showItem(_item())
    counter = setTimeout _next, duration
  _show()

showItem = (item) ->
  setBackground(item.url)
  $artist.text(item.artist_name)
  $object.text(item.object.name)
  $objectTitle.text(item.object.title)

######################
# INDEX
######################

$random = $('.random')
setBackground(_.sample(data).url) if $random.length


######################
# 9 x 9
######################

$artist = $('.artist')
$object = $('.object')
$objectTitle = $('.object-title')
$externalLink = $('.external-link')

$togglers = $('[data-artist]')

$togglers.on 'click', ->
  $toggler = $(@)
  artist = $toggler.data('artist')
  $togglers.removeClass('active')
  $toggler.addClass('active')
  showItems(artist)
  $externalLink.removeClass('hide')

$togglers.eq(0).trigger('click')

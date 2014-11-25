(function() {
  window.rawData = [
    {
      artist: 'Yao Teng Yuan',
      artist_name: '姚',
      object: {
        name: '榆鈞',
        title: '表演者'
      },
      items: ['500T-01007.jpg', '500T-02013.jpg', 'Negative0-21-21(1).jpg', 'Negative0-24-24(1).jpg', 'Negative0-29-29(1).jpg']
    }, {
      artist: 'Etang Chen',
      artist_name: '陳',
      object: {
        name: 'ＺＯＥＹ',
        title: '表演者'
      },
      items: ['000032410034.jpg', '000032470005.jpg', '000032490002.jpg', '000032510009.jpg']
    }, {
      artist: 'JaMie Lin',
      artist_name: '林小嬉',
      object: {
        name: '育君',
        title: '表演者'
      },
      items: ['Negative0-1.jpg', 'Negative0-2.jpg', 'Negative0-3.jpg', 'Negative0-7.jpg']
    }, {
      artist: 'Jan Kay',
      artist_name: '詹凱',
      object: {
        name: '宛璇',
        title: '表演者'
      },
      items: ['1.jpg', '2.jpg', '5.jpg', '6.jpg']
    }, {
      artist: 'Jersey Hsin-le Yen',
      artist_name: '顏',
      object: {
        name: 'ａｍｙ',
        title: '表演者'
      },
      items: ['Negative0-09-09(1).jpeg', 'Negative0-24-24(1).jpeg', 'Negative0-25-25(1).jpeg', 'Negative0-32-32(1).jpeg']
    }, {
      artist: 'Tai Ju Hsieh',
      artist_name: '謝',
      object: {
        name: '孟書',
        title: '表演者'
      },
      items: ['F1040006-1.jpg', 'F1040014-1.jpg', 'F1040021.jpg', 'F1050028-1.jpg']
    }, {
      artist: 'Tai Ju Hsieh',
      artist_name: '謝',
      object: {
        name: '紅旗',
        title: '表演者'
      },
      items: ['1295S.jpg', '1303S.jpg', '1351S.jpg', '1353S.jpg', '1365S.jpg']
    }, {
      artist: 'You Wei Chen',
      artist_name: '陳',
      object: {
        name: '啊寡',
        title: '表演者'
      },
      items: ['22680001.jpg', '22680006.jpg', '22680010.jpg', '22690001.jpg', '22710004.jpg', '22710011.jpg']
    }, {
      artist: 'You-Na Wang',
      artist_name: '王',
      object: {
        name: '修和',
        title: '表演者'
      },
      items: ['scan053.jpg', 'scan143拷貝.jpg', 'scan151.jpg', 'scan158.jpg']
    }
  ];

  window.data = _.flatten(_.map(rawData, function(hash) {
    return _.map(hash.items, function(filename) {
      return {
        url: filename,
        object: hash.object,
        artist: hash.artist,
        artist_name: hash.artist_name
      };
    });
  }));

}).call(this);

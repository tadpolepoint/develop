window.rawData = [
  {
    id: 'Yao Teng Yuan'
    artist:{name: 'Yao Teng Yuan', zh_name: '姚登元', url: 'https://www.flickr.com/photos/stevenyao/'}
    object: {name: '榆鈞', title: '音樂家', url: 'http://blog.roodo.com/yujunwang' }
    items: ['500T-01007.jpg', '500T-02013.jpg', 'Negative0-21-21(1).jpg', 'Negative0-24-24(1).jpg', 'Negative0-29-29(1).jpg']
  },
  {
    id: 'Chi-Teng Huang'
    artist:{name: 'Chi-Teng Huang', zh_name: '黃紀滕', url: 'http://hans-huang.com/'}
    object: {name: '李孟書', title: '二皿手作紙', url: 'https://www.facebook.com/pages/%E4%BA%8C%E7%9A%BF%E6%89%8B%E4%BD%9C%E7%B4%99%E8%A8%AD%E8%A8%88/230266423698526?fref=ts' }
    items: ['F1040006-1.jpg', 'F1040014-1.jpg', 'F1040021.jpg', 'F1050028-1.jpg']
  },
  {
    id: 'Etang Chen'
    artist:{name: 'Etang Chen', zh_name: '陳藝堂', url: 'http://www.etangchen.com'}
    object: {name: 'ＺＯＥＹ', title: '廚師', url: undefined }
    items: ['000032410034.jpg', '000032470005.jpg', '000032490002.jpg', '000032510009.jpg']
  },
  {
    id: 'JaMie Lin'
    artist:{name: 'JaMie Lin', zh_name: '林小嬉', url: 'https://www.flickr.com/photos/71/'}
    object: {name: '葉育君', title: '行為藝術家', url: 'http://yujunye.blogspot.tw/' }
    items: ['Negative0-1.jpg', 'Negative0-2.jpg', 'Negative0-3.jpg', 'Negative0-7.jpg']
  },
  {
    id: 'Jan Kay'
    artist:{name: 'Jan Kay', zh_name: '詹凱', url: 'http://slotkay.com/'}
    object: {name: '蔡宛璇', title: '詩人', url: 'https://www.facebook.com/atelierhuikan' }
    items: ['1.jpg', '2.jpg', '5.jpg', '6.jpg']
  },
  {
    id: 'Jersey Hsin-le Yen'
    artist:{name: 'Jersey Hsin-le Yen', zh_name: '顏芯樂', url: 'https://www.flickr.com/photos/fujr/'}
    object: {name: 'Amy Cheng', title: '立方計劃空間', url: 'http://thecubespace.com/' }
    items: ['Negative0-09-09(1).jpeg', 'Negative0-24-24(1).jpeg', 'Negative0-25-25(1).jpeg', 'Negative0-32-32(1).jpeg']
  },
  {
    id: 'Tai Ju Hsieh'
    artist:{name: 'Tai Ju Hsieh', zh_name: '謝岱汝', url: 'http://cargocollective.com/naownaow2012'}
    object: {name: '鄭鴻旗', title: 'Open Lab. Taipei', url: 'http://www.openlabtaipei.org/' }
    items: ['1295S.jpg', '1303S.jpg', '1351S.jpg', '1353S.jpg', '1365S.jpg']
  },
  {
    id: 'You Wei Chen'
    artist:{name: 'You Wei Chen', zh_name: '陳又維', url: 'http://www.processing-studio.com/'}
    object: {name: '吳寡', title: '獨立刊物', url: 'https://www.facebook.com/einoedeberg' }
    items: ['22680001.jpg', '22680006.jpg', '22680010.jpg', '22690001.jpg', '22710004.jpg', '22710011.jpg']
  },
  {
    id: 'You-Na Wang'
    artist:{name: 'You-Na Wang', zh_name: '王幽娜', url: 'http://jijifujiji.tumblr.com/'}
    object: {name: '吳修和', title: '劇場美術', url: undefined }
    items: ['scan053.jpg', 'scan143拷貝.jpg', 'scan151.jpg', 'scan158.jpg']
  }
]

window.data = _.flatten(_.map(rawData, (hash) -> _.map(hash.items, (filename) -> {url: filename, object: hash.object, artist: hash.artist, id: hash.id})))

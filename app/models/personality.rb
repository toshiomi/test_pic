class Personality < ActiveHash::Base
  self.data = [
      {id: 1, name: 'いじっぱり(A↑C↓)'}, {id: 2, name: 'うっかりや(C↑D↓)'}, {id: 3, name: 'おくびょう(S↑A↓)'},
      {id: 4, name: 'おだやか(D↑A↓)'}, {id: 5, name: 'おっとり(C↑B↓)'}, {id: 6, name: 'おとなしい(D↑B↓)'},
      {id: 7, name: 'がんばりや(無補正)'}, {id: 8, name: 'きまぐれ(無補正)'}, {id: 9, name: 'さみしがり(A↑B↓)'},
      {id: 10, name: 'しんちょう(D↑C↓)'}, {id: 11, name: 'すなお(無補正)'}, {id: 12, name: 'ずぶとい(B↑A↓)'},
      {id: 13, name: 'せっかち(S↑B↓)'}, {id: 14, name: 'てれや(無補正)'}, {id: 15, name: 'なまいき(D↑S↓)'},
      {id: 16, name: 'のうてんき(B↑D↓)'}, {id: 17, name: 'のんき(B↑S↓)'}, {id: 18, name: 'ひかえめ(C↑A↓)'},
      {id: 19, name: 'まじめ(無補正)'}, {id: 20, name: 'むじゃき(S↑D↓)'}, {id: 21, name: 'やんちゃ(A↑D↓)'},
      {id: 22, name: 'ゆうかん(A↑S↓)'}, {id: 23, name: 'ようき(S↑C↓)'}, {id: 24, name: 'れいせい(C↑S↓)'},
      {id: 25, name: 'わんぱく(B↑C↓)'}
  ]
end

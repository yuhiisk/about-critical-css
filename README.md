Critical CSS
=======

## クリティカルCSSとは

*Critical CSS* 直訳すると「*重要なCSS*」  

元ネタはGoogle PageSpeed。  
> *「スクロールせずに見える範囲のコンテンツのサイズを削減する」*

> リクエストされたデータの量が初期の輻輳ウィンドウを超える場合、サーバーとユーザーのブラウザ間で追加の往復が必要になります。モバイル ネットワークのような遅延の多いネットワークの場合、これによってページの読み込みが大幅に遅れる可能性があります。

CSSconf EU 2014においてGoogleのAddy Osmaniの講演内で大々的に手法が紹介された。

- HTMLからスタイルシートを抽出
    ツールが抽出するか、あらかじめ *.cssファイルを事前に指定するか。どちらでもよい。
- ファーストビューのCSSを生成
    ターゲットとするviewportを決める。モバイルとデスクトップのバランスから最適解を一つに絞るか、サーバ側で判別して対応するか。
    14KB以下におさめる。
- クリティカルパスのCSSをにインライン化
- 残りのスタイルは非同期で読込む

## クリティカルCSSで変わること

## クリティカルCSSのメリット

## クリティカルCSSのデメリット
- うかつにCSSを直接いじれなくなる。
    もうツールを使わないと絶対に無理。運用面も考慮した選択を。

## クリティカルCSSの実例

### Tool
npm Packages

[critical](https://www.npmjs.com/package/critical)

- grunt
- gulp

[Critical Path CSS Generator](http://jonassebastianohlsson.com/criticalpathcssgenerator/)

## クリティカルCSSの実用性

- ページが縦長になりがちなレスポンシブWebデザイン（RWD）スマートフォンサイトに特に有用。

## Next Step
- サーバ側でキャッシュさせる

## 参考
[Inlining critical CSS for first-time visits](https://adactio.com/journal/8504)


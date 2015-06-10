Critical CSS
=======

去年辺りから主に海外で「クリティカルCSS」という言葉を聞くようになりました。  
そこで今日はクリティカルな話題をお届けしようと思います。

## クリティカルCSSとは

*Critical CSS* 直訳すると「*重要なCSS*」。  
某RPGのクリティカルヒットとかそんな大げさなことではないです。

元ネタはGoogle PageSpeed Insights。  
> *「スクロールせずに見える範囲のコンテンツのサイズを削減する」*
>
> リクエストされたデータの量が初期の輻輳ウィンドウを超える場合、サーバーとユーザーのブラウザ間で追加の往復が必要になります。モバイル ネットワークのような遅延の多いネットワークの場合、これによってページの読み込みが大幅に遅れる可能性があります。

CSSconf EU 2014においてGoogleのAddy Osmaniの講演内で大々的に手法が紹介された。

- HTMLからスタイルシートを抽出
    ツールが抽出するか、あらかじめ *.cssファイルを事前に指定するか。どちらでもよい。
- ファーストビューのCSSを生成
    ターゲットとするviewportを決める。モバイルとデスクトップのバランスから最適解を一つに絞るか、サーバ側で判別して対応するか。
    14KB以下におさめる。
- クリティカルパスのCSSをHTMLにインライン化
- 残りのスタイルは非同期で読込む

・コード画像

## クリティカルCSSの効果

![before](/images/before.png)
![after](/images/after.png)

- 微々たるものだが各数字は改善された。
- でもそんなに変わらなくない？
- いや、違うんですよ。

## クリティカルCSSのメリット
- ページの読み込み速度自体はそれほど変わらないが、レンダリングブロックを軽減できるので、ユーザにとってページ表示の体感速度が変わる。
- 回線が細くページが縦長になりがちなレスポンシブWebデザイン（RWD）スマートフォンサイトに特に有用。


## クリティカルCSSのデメリット
- そもそもインライン展開するのって大変。
- うかつにCSSを直接いじれなくなる。
    もうツールを使わないと絶対に無理。運用面も考慮した選択を。


## クリティカルCSSに関するTool
### npm Packages

[critical](https://www.npmjs.com/package/critical)

![critical](/images/package.png)]

タスクランナーで手軽に扱えるようになったことで、人気上昇。
デプロイする時に一回実行すれば良い。

- [grunt-critical](https://github.com/bezoerb/grunt-critical)
- gulp

### Web service
[Critical Path CSS Generator](http://jonassebastianohlsson.com/criticalpathcssgenerator/)


## Next Step
- サーバ側でキャッシュさせて初期訪問時のみクリティカルCSSを。2回目以降の訪問時、キャッシュしたフルCSSを読み込む。

## 参考
[Inlining critical CSS for first-time visits](https://adactio.com/journal/8504)
[addyosmani/critical](https://github.com/addyosmani/critical)
[addyosmani/critical-path-css-demo](https://github.com/addyosmani/critical-path-css-demo)

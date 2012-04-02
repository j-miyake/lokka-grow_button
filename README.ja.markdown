Lokka Grow! Button
============================

[Grow!ボタン](http://blog.growbutton.com/tutorial/)を作成する[Lokka](http://lokka.org)用のプラグインです。

インストール方法
----------------

    $ cd public/plugin
    $ git clone git://github.com/johnny-miyake/lokka-grow_button.git
    $ cd lokka-grow_button
    $ rm -rf .git

使用方法
--------

まず、Lokka管理画面の [プラグイン]->[Grow! Button] でボタンの設定をしてください。
この設定画面では、ボタンの形状とAPIキーを設定できます。

次に、以下のヘルパーメソッドをテンプレートの任意の位置に挿入してください。
    <%= grow_button( <Postクラスのオブジェクト> ) %>
このヘルパーメソッドは、引数に与えたPostクラスのオブジェクトが示す記事に対して Grow するボタンを生成します。

また、引数を省略すると、表示しているページに対して Grow するボタンが生成されます。

設置例1（テンプレート「curvy」を使用している場合）
---------------------------------------------------
article.erb の中で、任意の場所に
    <%= grow_button(entry) %>
と記述すると、記事ページや記事リストページで Grow ボタンを表示できます。

設置例2（テンプレート「jarvi」を使用している場合）
---------------------------------------------------
entry.erb の中で、任意の場所に
    <%= grow_button(@entry) %>
と記述すると、記事ページで Grow ボタンを表示できます。

記事リストページで、それぞれの記事に Grow ボタンを表示するには、
entries.erb の中において @posts オブジェクトを each している所で
    <%= grow_button(post) %>
と記述します。

確認
----
Grow!ボタンと、その押された回数が表示されたら正常に設置できています。

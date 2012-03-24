Lokka Grow! Button
============================

[Grow!ボタン]（ http://blog.growbutton.com/tutorial/ ）を作成する[Lokka]（ http://lokka.org ）用のプラグインです。

インストール方法
--------------

    $ cd public/plugin
    $ git clone git://github.com/johnny-miyake/lokka-grow_button.git

使用方法
------

まず、管理画面の [プラグイン]->[Grow! Button] でボタンの設定をしてください。
この設定画面では、ボタンの形状とAPIキーを設定できます。

次に、以下のヘルパーメソッドをテンプレートの任意の位置に挿入してください。

    <%= grow_button %>

Grow!ボタンと、それが押された回数が表示されたら正常に設置できています。

Lokka Grow! Button
==============================

This is a [Lokka](http://lokka.org) plugin to add ["Grow! Button"](http://blog.growbutton.com/en/tutorial/) .

Installation
------------

Run following commands:

    $ cd public/plugin
    $ git clone git://github.com/johnny-miyake/lokka-grow_button.git
    $ cd lokka-grow_button
    $ rm -rf .git

Usage
-----

1) Set options in the admin page [Plugins]->[Grow Button]. You can choose the shape of the button and set API key for the button.

2) Insert following helper method into your template.
    <%= grow_button( < an object of Post class > ) %>
The helper method generates a "Grow" button.

If the argument is omitted, a button for the page being shown is generated.

ex) The case that you use "curvy" template.
--------------------------------------------
If you insert the code below into article.erb,  "Grow" button is generated in each article page and article list pages.
    <%= grow_button(entry) %>

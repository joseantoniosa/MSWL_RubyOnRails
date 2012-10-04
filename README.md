MSWL_RubyOnRails
================

Ruby On Rails Workshop Exercise 

http://www.MasterSoftwareLibre.com 

== 2.1. Add authors ==

You must add the post author. To do so we ask you to:

-     Generate an author model. Author only has one attribute: name
rails generate resource NAME [field[:type][:index] field[:type][:index]] [options]
 rails g resource post title:string content:text
 
 rails g model comment post:references author:string content:text
 
  rails g model author post:references name:string 
 
 rake db:migrate
 
  rails c
  
-    Migrate the database accordingly. Ensure all posts have an author

-    Add relations between the author and the posts

-    Show "by <author name>" in the post views

-    Use eager loading to avoid the n+1 query problem when fetching the authors

-    Change the new/edit post form to include the author field. Use a HTML select component

Hints: generate, references, belongs_to, has_many, includes, select, map

== 2.2. Add pagination ==

You must paginate the post in the main page. To do so we ask you to:

    Find the suitable plugin or gem (don’t reinvent the wheel!). There are some solution that excels.

    Paginate the post index, two posts per page

    Add pagination links: next and previous page and links to page numbers

Hints: kaminari, will_paginate, paginate

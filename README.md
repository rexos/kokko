kokko
=====

(Dea Dormi)

Clone this repository in your local workarea using

git clone https://github.com/rexos/kokko

$ cd kokko // Change Directory to the app dir

$ bundle install --without production // install gems 

$ rails server // start the server

 browser ==> localhost:3000

$ git pull // update your local repository to the latest version

$ git add --all // add your changes to tour local repository

$ git commit -m " commit description " 

$ git push origin master // updates the remote repo on GutHub 


ADDING BOOTSTRAP

gem install less-rails

nel gemfile:
gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"

bundle install

rails generate bootstrap:install less

bundle install

rails g bootstrap:layout application fixed

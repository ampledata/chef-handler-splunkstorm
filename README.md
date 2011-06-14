Description
===========

A Chef handler that Tweets

Usage
=====

See [Enable the Chef Handler with the chef_handler LWRP](http://wiki.opscode.com/display/chef/Distributing+Chef+Handlers#DistributingChefHandlers-EnabletheChefHandlerwiththe%7B%7Bchefhandler%7D%7DLWRP)

Example Chef recipe:

```ruby
include_recipe "chef_handler"

gem_package "chef-handler-twitter"

chef_handler "TwitterReport::TwitterHandler" do
  source "chef/handler/twitter"
  arguments [ node[:chef_handler][:twitter][:consumer_key],
              node[:chef_handler][:twitter][:consumer_secret],
              node[:chef_handler][:twitter][:oauth_token],
              node[:chef_handler][:twitter][:oauth_token_secret] ]
  supports :report => true, :exception => true
  action :enable
end
```

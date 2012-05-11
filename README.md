Description
===========

A Chef Exception & Reporting Handler for
[Splunk Storm](https://www.splunkstorm.com).

Usage
=====

1. Create a [Splunk Storm](https://www.splunkstorm.com) account.
2. Retrieve your Splunk Storm [REST API Credentials](http://docs.splunk.com/Documentation/Storm/Beta/User/UseStormsRESTAPI).
3. Download the [chef_handler](http://community.opscode.com/cookbooks/chef_handler)
Cookbook.
4. Given you've retrieved your Access Token as **ACCESS_TOKEN** and Project ID
as **PROJECT_ID**, add a Recipe similar to the example below:

```ruby
include_recipe 'chef_handler'

gem_package('chef-handler-splunkstorm'){action :nothing}.run_action(:install)

chef_handler 'Chef::Handler::SplunkStorm' do
  action :enable
  arguments ['ACCESS_TOKEN', 'PROJECT_ID']
  source File.join(Gem.all_load_paths.grep(/chef-handler-splunkstorm/).first,
                   'chef', 'handler', 'splunkstorm.rb')
end
```

See also: [Enable Chef Handler with LWRP](http://wiki.opscode.com/display/chef/Distributing+Chef+Handlers#DistributingChefHandlers-EnabletheChefHandlerwiththe%7B%7Bchefhandler%7D%7DLWRP)

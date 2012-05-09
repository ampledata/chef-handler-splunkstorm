Description
===========

A Chef Exception & Reporting Handler for
[Splunk Storm](https://www.splunkstorm.com).

Usage
=====

1. Create a [Splunk Storm](https://www.splunkstorm.com) account.
2. Retrieve your Splunk Storm [REST API Credentials](http://docs.splunk.com/Documentation/Storm/Beta/User/UseStormsRESTAPI).
3. Download the [chef_handler](https://github.com/ampledata/chef_handler/tree/feature/COOK-1208_splunkstorm_handler) Cookbook.
4. Add the **chef_handler** Cookbook to your Run List.
5. Given you've retrieved your Access Token as **ACCESS_TOKEN** and Project ID
as **PROJECT_ID**, add a chef_handler Resource to one of your Recipes:

```ruby
include_recipe 'chef_handler'

gem_package 'chef-handler-splunkstorm'

chef_handler 'SplunkStormHandler' do
  action :enable
  arguments ['ACCESS_TOKEN', 'PROJECT_ID']
  source 'chef/handler/splunkstorm_handler'
end
```

See also: [Enable Chef Handler with LWRP](http://wiki.opscode.com/display/chef/Distributing+Chef+Handlers#DistributingChefHandlers-EnabletheChefHandlerwiththe%7B%7Bchefhandler%7D%7DLWRP)

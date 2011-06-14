#
# Copyright:: 2011, Heavy Water Software Inc.  <darrin@heavywater.ca>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
# implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "chef/handler"
require "twitter"

module TwitterReport
  class TwitteHandler < Chef::Handler
    def initialize( consumer_key,
                    consumer_secret,
                    oauth_token,
                    oauth_token_secret )
      Twitter.configure do |config|
        config.consumer_key = consumer_key
        config.consumer_secret = consumer_secret
        config.oauth_token = oauth_token
        config.oauth_token_secret = oauth_token_secret
      end
    end

    def report
      if run_status.success?
        Twitter.update( "Chef run succeeded in #{run_status.elapsed_time} seconds on #{node.name}" )
      else
        Twitter.update( "Chef run failed on #{node.name}" )
      end
    end

  end
end

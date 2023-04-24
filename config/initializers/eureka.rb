require 'eureka'

Eureka.setup do |config|
  config.eureka_url = 'http://localhost:8761/eureka/'
end

# Register your Rails app with Eureka
instance_info = {
  'instance' => {
    'hostName' => 'localhost',
    'app' => 'ruby-service',
    'ipAddr' => '127.0.0.1',
    'port' => {
      '$' => '3000',
      '@enabled' => 'true'
    },
    'status' => 'UP',
    'healthCheckUrl' => 'http://localhost:4070/health_check',
    'homePageUrl' => 'http://localhost:4070',
    'statusPageUrl' => 'http://localhost:4070/info',
    'vipAddress' => 'ruby-service',
    'dataCenterInfo' => {
      '@class' => 'com.netflix.appinfo.InstanceInfo$DefaultDataCenterInfo',
      'name' => 'MyOwn'
    }
  }
}

require 'net/http'
require 'json'

uri = URI("#{Eureka.eureka_url}apps/#{instance_info['instance']['app']}")
req = Net::HTTP::Post.new(uri, 'Content-Type' => 'application/json')
req.body = instance_info.to_json
res = Net::HTTP.start(uri.hostname, uri.port) do |http|
  http.request(req)
end
puts res.body

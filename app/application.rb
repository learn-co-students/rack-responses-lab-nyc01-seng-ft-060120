require 'rack'
class Application
    def call(env)
      hello = Rack::Response.new  
        
      if Time.now.hour < 12
            hello.write "Good Morning!"
        else
            hello.write "Good Afternoon!"
      end
      hello.finish
    end
end
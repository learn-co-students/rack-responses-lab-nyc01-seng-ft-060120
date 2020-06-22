
class Application

    def call(env)
      resp = Rack::Response.new
      now = Time.now
      now.hour >=12 ? resp.write("Good Afternoon") : resp.write("Good Morning")
      resp.finish
    end
  
  end
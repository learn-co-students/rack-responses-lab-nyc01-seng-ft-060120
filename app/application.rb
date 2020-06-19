class Application
  
  def call(env)
    resp = Rack::Response.new

    greeting = Time.now.hour > 12 ? "Good Afternoon!" : "Good Morning!" 
    resp.write greeting
    resp.finish
  
  end
  
end
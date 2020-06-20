class Application
    def call(env)
        resp = Rack::Response.new
        resp.write time_greet
        resp.finish
    end

    def time_greet
        rn = Time.now
        if rn.hour >= 12
            "Good Afternoon!"
        else
            "Good Morning!"
        end
    end
end
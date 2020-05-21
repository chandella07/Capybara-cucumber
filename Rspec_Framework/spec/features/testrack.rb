class Application
  def call(env)
    handle_request(env["REQUEST_METHOD"], env["PATH_INFO"])
  end

  private

    def handle_request(method, path)
      if method == "GET"
        get(path)
      else
        method_not_allowed(method)
      end
    end

    def get(path)
      [200, { "Content-Type" => "text/html" }, ["You have requested the path #{path}, using GET"]]
    end

    def method_not_allowed(method)
      [405, {}, ["Method not allowed: #{method}"]]
    end
end


describe Application do
  context "get to /ruby/monstas" do
    it "returns the body" do
      env = { "REQUEST_METHOD" => "GET", "PATH_INFO" => "/ruby/monstas" }
      response = app.call(env)
      body = response[2][0]
      expect(body).to eq "You have requested the path /ruby/monstas, using GET"
    end
  end
end
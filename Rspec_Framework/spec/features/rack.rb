require "rack/test"

#RSpec.configure do |config|
#  config.include Rack::Test::Methods
#end

class HelloWorld
include Rack::Test::Methods
   def say_hello(path)
      #"Hello World!"
	  get(path)
   end
   
end

describe HelloWorld do
include Rack::Test::Methods
  

   context "When testing the HelloWorld class" do 
      
      it "should say 'Hello World' when we call the say_hello method" do 
         hw = HelloWorld.new 
         message = hw.say_hello('http://www.google.com/') 
         #expect(message).to eq "Hello World!"
		 expect(message).to eq 200
      end
      
   end
end
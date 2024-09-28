require_relative "../src/main/ruby/ruby_library"

describe RubyLibrary do
  describe "#greet" do
    it "prints input to the console" do
      rlib = RubyLibrary.new
      rlib.static_method("input")
    end
  end
end

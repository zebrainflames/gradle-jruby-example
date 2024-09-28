class RubyLibrary
  java_package 'com.zebtech'

  attr_accessor :some_value

  def initialize(value = 101)
    @some_value = value
    puts "RubyLibrary.new called with input #{@some_value}"
  end

  class << self
    java_signature 'String greet(String name)'
    def greet(name)
      "Hello, #{name}! This is a message from Ruby!"
    end
  end
end

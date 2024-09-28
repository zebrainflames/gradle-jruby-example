java_package 'com.zebtech'

# using some Java dependencies for demonstration purposes
java_import 'com.google.common.collect.ImmutableList'
java_import 'com.google.common.base.Splitter'

require_relative 'guava_example'

class RubyLibrary

  attr_accessor :some_value

  def initialize(value = 101)
    @some_value = value
    puts "RubyLibrary.new called with input #{@some_value}"
  end

  # attr_accessor getters and setters aren't unfortunately directly generated to Java side it seems
  # so they need to be created manually if really needed
  def setSomeValue(value)
    @some_value = value
  end
  def getSomeValue
    @some_value
  end

  def some_instance_method
    puts "some instance method called"
  end

  def method_from_different_ruby_class
    GuavaExample.create_immutable_list
  end

  # these annotations are helpful for correct type checking on java side
  java_signature 'static void static_method(int input)'
  def self.static_method(input)
    puts "static ruby method prints: #{input}"
  end
end

package com.zebtech;


public class App {

	public String getGreeting() {
		return "This is a java method.";
	}

	public static void main(String[] args) {
		System.out.println(new App().getGreeting());

		// we can construct normal java objects out of jruby classes
		var rubyLib = new RubyLibrary(123);
		
		// calling instance methods works
		rubyLib.some_instance_method();

		// static method calls work too
		RubyLibrary.static_method(2332);

		System.out.println("rubyLib.some_value = " + rubyLib.getSomeValue());

		// we can call java methods within ruby classes
		Object list = rubyLib.method_from_different_ruby_class();
		System.out.println(list);
		var guavaExample = new GuavaExample();
		System.out.println(guavaExample.split_string("asdsad, banana, carrot, cake"));
	}
}

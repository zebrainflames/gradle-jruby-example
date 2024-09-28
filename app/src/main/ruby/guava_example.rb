java_package 'com.zebtech'

# using some Java dependencies for demonstration purposes
java_import 'com.google.common.collect.ImmutableList'
java_import 'com.google.common.base.Splitter'

class GuavaExample
  def self.create_immutable_list
    ImmutableList.of('apple', 'banana', 'pancake')
  end

  def self.split_string(input)
    Splitter.on(',').trim_results.omit_empty_strings.split(input)
  end
end

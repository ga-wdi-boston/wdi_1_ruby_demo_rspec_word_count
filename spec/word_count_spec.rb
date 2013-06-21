require 'word_count'
require_relative 'spec_helper'


describe String, "#unique_word_count" do
  it "should return 0 with an empty string" do
    empty_string = String.new
    word_count = empty_string.unique_word_count
    word_count.should == 0
  end
  it "should return '1' when the sentence is one words long" do
    a_string = "coffee"
    word_count = a_string.unique_word_count
    word_count.should == 1
  end
  it "should return '6' when the sentence is six words long" do
    a_string = "It was the best of times"
    word_count = a_string.unique_word_count
    word_count.should == 6
  end
  it "should ignore puntucation" do
    a_string = "I'm (kinda) having fun with this!"
    word_count = a_string.unique_word_count
    word_count.should == 6
  end
end

describe String, "#word_frequency_count" do
  it "should return {} with an empty string" do
    empty_string = String.new
    frequencies = empty_string.word_frequency_count
    frequencies.should == {}
  end

  it "should return frequency of one when all words are unique" do
    a_string = "I really need some coffee"
    frequencies = a_string.word_frequency_count
    frequencies.values.max.should == 1
  end

  it "should return frequency of two when a word is repeated" do
    a_string = "I really really need some coffee"
    frequencies = a_string.word_frequency_count
    frequencies["really"].should == 2
  end
end

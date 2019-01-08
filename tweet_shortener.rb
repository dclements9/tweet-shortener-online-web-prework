require 'pry'

def dictionary

dictionary_hash = {
    "hello" => "hi",
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"}
end

def word_substituter(tweet_string)
  tweet_array = tweet_string.split
      tweet_array.map do |word|
    if dictionary.keys.include?(word)
      word = dictionary.values_at(word)
    else
      word
  end
  tweet_array.join(" ")
 end
 
end

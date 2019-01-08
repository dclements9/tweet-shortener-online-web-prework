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
    dictionary_hash = dictionary
  dictionary_hash.each do |key, value|
    tweet_array.each do |word|
      if word.downcase == key.to_s
        word.replace(value.to_s)
      end
    end
  end
  tweet_array.join(" ")
end

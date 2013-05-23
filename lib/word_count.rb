class String
  def unique_word_count
    array_of_individual_words = words_from_string(self)
    count_unique_words_in_array(array_of_individual_words)
  end
  
  def word_frequency_count
    array_of_individual_words = words_from_string(self)
    count_of_each_word(array_of_individual_words)
  end
  
  private
  
  def words_from_string(original_string)
    # Simpler (non-regex) method is to use .split() instead of .scan()
    # However, .split() will not remove extranious punctuation. 
    
    # This returns an array of individual words, stripped of punctiation and all lowercase
    original_string.downcase.scan(/[\w']+/)
  end 
  
  def count_unique_words_in_array(original_array_of_words)
    #Returns the number of unique words
    original_array_of_words.uniq.count
  end
  
  def count_of_each_word(original_array_of_words)
    # Creates a new hash, with each default value being 0 for keys that don't exist
    # Default value of non-existing keys otherwise is nil
    counts = Hash.new(0)
    
    # Iterates through the array of words, uses each word as a key, and increments that key
    original_array_of_words.each do |word|
      counts[word] += 1
    end
    
    counts
  end
end
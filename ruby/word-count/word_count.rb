class Phrase
  
  def initialize phrase
    @phrase = phrase
    @phrase_cleaned = @phrase.gsub(/[,\n]/,' ') #Recognizing comma and \n as word separators 
    @phrase_cleaned = @phrase_cleaned.gsub(/[^a-zA-Z0-9' ]/,'').downcase # Removing everything except letters, nos, single quote and space. Then converting lowercase
  end
  
  def word_count
    counts = Hash.new
    counts.default=0
    @phrase_cleaned.split.each{|word| 
      word = word.gsub(/^\'/,'').gsub(/\'$/,'') #Recognizing words in single quotes; Removing their quotes
      counts[word] += 1
    }
    return counts
  end
end

module BookKeeping
  VERSION = 1
end
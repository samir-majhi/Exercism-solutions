class Bob
  def self.hey(remark)
    remark.strip!
 
    # If yelling, answer 'Whoa, chill out!'
    if remark == remark.upcase && remark =~ /[A-Z]/ then return 'Whoa, chill out!' end    
    
    # If question, answer 'Sure.'
    if remark.end_with?('?') then return 'Sure.' end

    # If not saying anything, 'Fine. Be that way!'
    if remark.empty? then return 'Fine. Be that way!' end

    # Else 'Whatever.'
    return 'Whatever.'
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end

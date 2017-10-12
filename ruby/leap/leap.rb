class Year
  def self.leap?(year)
    isLeap = false
    if year %4 == 0 then isLeap = true end
    if year %100 == 0 then isLeap = false end
    if year %400 == 0 then isLeap = true end
    return isLeap
  end
end

module BookKeeping
  VERSION = 3 
end
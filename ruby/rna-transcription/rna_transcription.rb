class Complement
  COMPLEMENT_MAPPING = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }
  def self.of_dna(dna)
    # test if correct dna
    rna = dna.chars.map{|nucleotide| COMPLEMENT_MAPPING[nucleotide]}
    return (rna.include?(nil))? "":rna.join
  end
end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end
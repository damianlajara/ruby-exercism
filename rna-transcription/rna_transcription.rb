class Complement

  COMPLEMENTS = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna strand
    if strand.eql? "U"
      raise ArgumentError.new("No complement for 'U'")
    else
      strand.split("").map { |dna_code| COMPLEMENTS[dna_code] }.join
    end
  end

  def self.of_rna strand
    if strand.eql? "T"
      raise ArgumentError.new("No complement for 'T'")
    else
      strand.split("").map { |rna_code| COMPLEMENTS.key(rna_code) }.join
    end
  end

end

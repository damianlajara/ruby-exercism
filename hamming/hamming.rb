class Hamming
  VERSION = 1
  def self.compute(strandA,strandB)
    # Make sure both of the dna strands are of equal length
    raise ArgumentError if strandA.length != strandB.length
    mutations = 0
    # string#chars returns the string converted to an array
    # array#zip merges the array with another array given via the parameters and either returns a 2d array with them merged if no block was given, and if there was a block given, then it returns the values of each respective array at that given iteration to yield
    strandA.chars.zip(strandB.chars) { |dna1, dna2| mutations += 1 if dna1 != dna2 }
    # Return the amount of mutations between the two DNA strands
    mutations
  end
end

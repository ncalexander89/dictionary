dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings (passage, dictionary)
  #empty hash 0 default
  hash=Hash.new(0)
  #passage to word array and checked against dictionary words
  passage.downcase.split(" ").each do |word|
    dictionary.each {|ref| hash[ref]+=1 if word.include?(ref)}
  end
  hash
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)

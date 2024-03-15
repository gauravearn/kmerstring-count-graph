def kmers(sequence, kmer)
=BEGIN
#!/usr/bin/ruby
# Universitat Potsdam
# Date: 2024-3-15
# Author: Gaurav Sablok
=END 
   seqsplitter = sequence.split(//)
   kmeriter = kmer.to_i
   seqkmers = []
  for i in 0..seqsplitter.length-kmeriter
     seqkmers.push(seqsplitter.slice(i,i-i+kmeriter).join)
  end
  return seqkmers.each { | iter | puts iter.to_s + "\t" + seqkmers.count(iter).to_s }
end

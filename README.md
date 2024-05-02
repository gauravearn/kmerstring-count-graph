# kmerstring-count-graph
a ruby based version of kmer iterations and kmer graph preparation. It counts the kmers and gives the occurrences. An implementation of the exact match string algorithm. You can use this over the entire fasta by using the File.open(readlines). Saw this code [kmercount](https://github.com/uio-bmi/kmercount) so wrote this.
```
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
# run like this and it will output the frequency tables.
kmers("AAGAAATGAGAAGTAATCAGAAAACCACTTAAGG", 31)
AAGAAATGAGAAGTAATCAGAAAACCACTTA 1
AGAAATGAGAAGTAATCAGAAAACCACTTAA 1
GAAATGAGAAGTAATCAGAAAACCACTTAAG 1
AAATGAGAAGTAATCAGAAAACCACTTAAGG 1
```
Gaurav \
Academic Staff Member \
Bioinformatics \
Institute for Biochemistry and Biology \
University of Potsdam \
Potsdam,Germany

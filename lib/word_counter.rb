def open_file(file)
  f = File.open(file, "r")
  file_data = f.read
  f.close
  return file_data
end

def word_counter(corpus, dict)
  count = []
  ls_corpus = corpus.split(" ")
  if dict.class == String
    dict = dict.split("\n")
  end
  dict.each do |word|
    ls_corpus.each do |cor_word|
      wo_punct = cor_word.gsub(/[.,\/#!$%\^&\*;:{}=\-_`~()]/, "")
      if wo_punct == word
        count << wo_punct
      end
    end
  end
  count.tally
end

shak = open_file("shakespeare.txt")
dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
dico = open_file("curse_words.txt")

puts "Common words: #{word_counter(shak, dictionnary)}"
puts
puts "Curse words: #{word_counter(shak, dico)}"

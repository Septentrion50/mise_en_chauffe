def caesar_cipher(text, offset)
  array = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz',.?!"
  s = text.strip
  out = [] 
  s.each_char do |c|
    out << alpha[(alpha.index(c) + offset) % alpha.length]
  end
  return out
end

require "./crystal-sub-translator/*"
require "google_translate"

# TODO: Write documentation for `Crystal::Sub::Translator`
# module Crystal::Sub::Translator
  client = GoogleTranslate::Client.new
  tr = client.translate("en", "pt", "dance")

  puts "#{tr.source_lang} -> #{tr.target_lang}"
  puts "Query: #{tr.query}"
  puts "Corrected query: #{tr.corrected_query}"
  puts "Text: #{tr.text}"
  tr.variants.each do |word_class, words|
    puts word_class
    words.each do |word|
      puts "  #{word}"
    end
  end
# end

module ApplicationHelper

  # Builds all paragraphs. Adds "Namaste" to the final paragraph.

  def build_paragraphs(number_of_paragraphs)
    paragraphs = paragraph_count(number_of_paragraphs).times.collect { build_paragraph }
    paragraphs.last.concat(" Namaste.")
    paragraphs
  end

  private

  # Returns a paragaph of ipsum text built from the phrase dictionary.
  def build_paragraph
    @dictionary = Dictionary.new
    sentence_count.times.collect { build_sentence }.join(" ")
  end

  # Builds a sentence, capitalized, with comma and ending with a period.
  def build_sentence
    words = @dictionary.pluck(word_count)
    sentence = insert_comma_into_words(words).join(" ").concat(".")
    capitalize_sentence(sentence)
  end

  # Capitalizes the first word of a sentence, but leaves all other capitalization untouched.
  def capitalize_sentence(sentence)
    sentence.slice(0,1).capitalize + sentence.slice(1..-1)
  end

  # Inserts a comma into a word array.
  def insert_comma_into_words(words)
    comma_index = rand(MIN_WORDS_BEFORE_COMMA..(words.length - MIN_WORDS_AFTER_COMMA - 1))
    words[comma_index] += ","
    words
  end

  # Determine the number of paragraphs.
  # Count should be a number greater than or equal to one, no more than PARAGRAPH_COUNT_MAX.
  def paragraph_count(count)
    count.to_i < 1 ? PARAGRAPH_COUNT_DEFAULT : [count.to_i, PARAGRAPH_COUNT_MAX].min
  end

  def sentence_count
    rand(RANGE_SENTENCES_PER_PARAGRAPH)
  end

  def word_count
    rand(RANGE_PHRASES_PER_SENTENCE)
  end

end

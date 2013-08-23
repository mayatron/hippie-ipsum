class AppController < ApplicationController

  def show
    count = ( params[:p] || PARAGRAPH_COUNT_DEFAULT ).to_i
    @paragraphs = build_paragraphs(count)

    respond_to do |format|
      format.html { render :index }
      format.js { render json:
        { partial: render_to_string('_ipsum', layout: false), count: count } }
    end
  end

  private

  # Builds the dictionary from a file.
  # TODO: switch to YAML based dictionary.
  def build_dictionary
    IO.read("config/phrases.txt").split(/\n/)
  end

  # Builds all paragraphs. Adds "Namaste." to the final paragraph.
  def build_paragraphs(number_of_paragraphs)
    paragraphs = number_of_paragraphs.times.collect { build_paragraph }
    paragraphs.last.concat(" Namaste.")
    return paragraphs
  end

  # Returns a paragaph of ipsum text from the dictionary, with no phrases repeated.
  # TODO: split up this method, probably two functions here.
  def build_paragraph
    paragraph = []
    dictionary = build_dictionary
    sentence_count = rand(RANGE_SENTENCES_PER_PARAGRAPH)

    sentence_count.times do
      word_count = rand(RANGE_PHRASES_PER_SENTENCE)
      words = dictionary.sample(word_count)
      dictionary -= words
      words.map! { |word| word.include?(",") ? word.split(", ").sample : word }
      paragraph << build_sentence(words)
   end

    return paragraph.join(" ")
  end

  # Builds a sentence, capitalized, with comma, ends with period.
  def build_sentence(words)
    sentence = insert_comma_into_word_array(words).join(" ").concat(".")
    capitalize_first_letter(sentence)
  end

  # Inserts a comma into a word array.
  def insert_comma_into_word_array(words)
    comma_insertion_index_end = words.length - MIN_WORDS_AFTER_COMMA - 1
    comma_insertion_index = rand(MIN_WORDS_BEFORE_COMMA..comma_insertion_index_end)
    words[comma_insertion_index] += ","
    words
  end

  # Capitalize first letter of a string, leave all other letters untouched.
  def capitalize_first_letter(string)
    string.slice(0,1).capitalize + string.slice(1..-1)
  end

end

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Hippie::Application.initialize!

# Constants
RANGE_PARAGRAPHS               = 1..7
RANGE_SENTENCES_PER_PARAGRAPH  = 4..7
RANGE_PHRASES_PER_SENTENCE     = 5..11

PARAGRAPH_COUNT_DEFAULT        = 3
MIN_WORDS_BEFORE_COMMA         = 2
MIN_WORDS_AFTER_COMMA          = 2

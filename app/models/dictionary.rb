class Dictionary < ActiveRecord::Base
  # THIS DICTIONARY CLASS IS NOT USED YET
  # attr_accessible :title, :body

  after_initialize :build_dictionary

  def build_dictionary
    # require 'yaml'
    # self.words = YAML.load_file("config/phrases.yml")
  end

  def count
    self.values.collect(&:count).sum
  end

  def fetch(integer)
    # will pull entries out of the dictionary
  end

end

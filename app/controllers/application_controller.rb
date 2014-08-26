class ApplicationController < ActionController::Base
  include ApplicationHelper

  def index
    count = params[:p] || PARAGRAPH_COUNT_DEFAULT
    @paragraphs = build_paragraphs(count)
  end

end

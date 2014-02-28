class ApplicationController < ActionController::Base
  include ApplicationHelper

  def index
    count = params[:p] || PARAGRAPH_COUNT_DEFAULT
    @paragraphs = build_paragraphs(count)

    respond_to do |format|
      format.html { render :index }
      format.js { render json: { partial: render_to_string('_ipsum', layout: false), count: count } }
    end
  end

end

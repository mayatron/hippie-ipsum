module Api
  module V1
    class ApiController < ApplicationController
      include ApplicationHelper
      respond_to :json

      def index
        count = params[:id] || PARAGRAPH_COUNT_DEFAULT
        @paragraphs = build_paragraphs(count)
        render json: { paragraphs: @paragraphs }
      end

    end
  end
end

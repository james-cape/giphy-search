class SearchController < ApplicationController

  def index
    render locals: {
      facade: GiphyFacade.new(params[:q])
    }
  end
end

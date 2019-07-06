class GiphyFacade

  def initialize(params)
    @query = params
  end

  def search_results
    giphy_service.search_result_info(@query)[:data].take(5).map do |search_result|
      SearchResult.new(search_result)
    end
  end

  private

  def giphy_service
    GiphyService.new
  end

end

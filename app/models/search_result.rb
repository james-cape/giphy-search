class SearchResult
  attr_reader :name, :url
  def initialize(attributes)
    # require 'pry'; binding.pry
    @name = attributes[:id]
    # @url = attributes[:embed_url]
    @url = attributes[:images][:downsized_large][:url]
  end
end

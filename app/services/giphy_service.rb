class GiphyService
  def search_result_info(query)
    get_json('/v1/gifs/search', q: "#{query}")
  end

  private
  def get_json(url, params = nil)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://api.giphy.com') do |f|
      f.params['api_key'] = 'dc6zaTOxFJmzC'
      f.adapter Faraday.default_adapter
    end
  end
end

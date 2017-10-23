require 'http'

class GithubClient

  def initialize(api_key)
    @api_key = api_key
  end

  def request(query)
    @query = query
    call_api
  end

  private
  def call_api
    HTTP.auth("Bearer #{@api_key}").post("https://api.github.com/graphql", :json => { :query => @query })
  end

end

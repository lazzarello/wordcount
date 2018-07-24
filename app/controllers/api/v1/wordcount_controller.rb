class Api::V1::WordcountController < Api::V1::BaseController

  def index
    words = { count: "Hello World!"}
    render json: words.to_json
  end

  def echo
    render json: params['wordcount']
  end

  def count
    words = params['words'].downcase.gsub(/[^a-z0-9\s]/i, '')
    count = words.split.size
    words = words.split.inject(Hash.new(0)) { |h,v| h[v] +=1;h }
    resp = {:count => count, :words => words}
    render json: resp
  end
end

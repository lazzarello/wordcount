class Api::V1::WordcountController < Api::V1::BaseController

  def index
    words = { count: "Hello World!"}
    render json: words.to_json
  end

  def echo
    render json: params['wordcount']
  end

  def count
    words = params['words'].split
    count = words.size
    wordlist = {}
    words.each do |word|
      wordlist[word] = 1
    end
    resp = {:count => count, :words => wordlist}
    render json: resp
  end
end

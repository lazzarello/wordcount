class Api::V1::WordcountController < Api::V1::BaseController

  def index
    words = { count: "Hello World!"}
    render json: words.to_json
  end
end

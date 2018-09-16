class GeneralController < ApplicationController
  def info
  	json_response({status:'True'})
  end
end

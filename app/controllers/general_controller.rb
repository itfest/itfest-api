class GeneralController < ApplicationController
  def info
  	info = GeneralInfo.first
  	json_response info
  end
end

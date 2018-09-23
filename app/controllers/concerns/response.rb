module Response
  def json_response(object, status = :ok)
  	response_object = { status: status == :ok || status == :created }
  	if response_object[:status]
		response_object[:data] = object
	else
		response_object[:errors] = object
  	end
    render json: response_object, status: status
  end
end
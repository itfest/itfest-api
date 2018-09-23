module ExceptionHandler
  # provides the more graceful `included` method
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      json_response(e.record.errors, :not_found)
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      json_response(e.record.errors, :unprocessable_entity)
      puts e
    end
  end
end
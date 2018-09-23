class CustomNameValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /^[a-zA-Zа-яА-Я ,.'-]+$/
      record.errors[attribute] << (options[:message] || "is not valid")
    end
  end
end
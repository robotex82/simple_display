class DateDisplayer < SimpleDisplay::Displayers::Base
  def display(field, label = nil, options = {}, &block)
    options.reverse_merge!({ :format => :default })
    date_format = options.delete(:format)

    field_value = block_given? ? nil : extract_field_value(field)
    field_value = I18n.l(field_value, :format => date_format) if field_value.present?

    display_value(field_value, :field => field, &block)
  end
end

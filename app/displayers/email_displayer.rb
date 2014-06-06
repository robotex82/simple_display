class EmailDisplayer < SimpleDisplay::Displayers::Base
  def display_value(field_value, options = {}, &block)
    helper.mail_to value(field_value, &block)
  end
end


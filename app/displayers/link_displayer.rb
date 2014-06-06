class LinkDisplayer < SimpleDisplay::Displayers::Base
  def display_value(field_value, options = {}, &block)
    helper.link_to value(field_value, &block) ,value(field_value)
  end
end


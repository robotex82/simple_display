class UnorderedListDisplayBlock < SimpleDisplay::DisplayBlock::Base
  def display(field, options = {}, &block)
    label = extract_field_label(field)
    @field = field
    
    prefix +
    label_prefix + display_label(label) + label_suffix +
    value_prefix + super(field, options, &block) + value_suffix +
    suffix
  end
  
  private
  
  def display_label(label)
    label
  end

  def label_prefix
    "<span class=\"label #{@model.class.to_s.underscore}-#{@field}\">".html_safe
  end
  
  def label_suffix
    ":</span> ".html_safe
  end
  
  def value_prefix
    "<span class=\"value #{@model.class.to_s.underscore}-#{@field}\">".html_safe
  end
  
  def value_suffix
    "</span>".html_safe
  end
  
  def prefix
    "<li>".html_safe
  end
  
  def suffix
    "</li>".html_safe
  end
end

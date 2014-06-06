class DefinitionListDisplayBlock < SimpleDisplay::DisplayBlock::Base
  def display(field, options = {}, &block)
    label = extract_field_label(field)
    label_prefix + display_label(label) + label_suffix +
    value_prefix + super(field, options, &block) + value_suffix
  end
  
  private
  
  def display_label(label)
    label
  end

  def label_prefix
    "<dt>".html_safe
  end
  
  def label_suffix
    "</dt>".html_safe
  end
  
  def value_prefix
    "<dd>".html_safe
  end
  
  def value_suffix
    "</dd>".html_safe
  end
  
  def extract_field_label(field)
    model.class.human_attribute_name(field)
  end
end

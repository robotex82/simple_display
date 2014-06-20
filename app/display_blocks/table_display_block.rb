class TableDisplayBlock < SimpleDisplay::DisplayBlock::Base
  def display(field, options = {}, &block)
    label = extract_field_label(field)
    (value_prefix + super(field, options, &block) + value_suffix).html_safe
  end

#  def actions(options = {}, &block)
#    value_prefix + super(options, &block) + value_suffix
#  end

  def display_action(action, &block)
    (value_prefix + super(action, &block) + value_suffix).html_safe
  end

  private

  def value_prefix
    "<td>"
  end

  def value_suffix
    "</td>"
  end
end

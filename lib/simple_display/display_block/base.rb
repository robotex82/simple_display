require 'active_support/inflector'

module SimpleDisplay
  module DisplayBlock
    class Base
      attr_reader :model, :helper

      def initialize(model, helper)
        @model, @helper = model, helper
      end

      def display(field, options = {}, &block)
        options.reverse_merge!({ :as => :default })

        displayer(options[:as]).display(field, options[:label], &block)
      end

      def actions(options = {}, &block)
        options.reverse_merge!({ :as => :default })
        
        default_actions.each do |action|
          displayer(options[:as]).display_action(action, &block)
        end
      end
      
      private

      def displayer(displayer_type)
        klass = "#{displayer_type}_displayer".camelize
        klass = Object.class.const_get(klass)
        unless klass.is_a?(Class)
          raise DisplayerNotDefinedException, "#{klass.to_s} not defined"          
        end
        return klass.new(model, helper)
      end

      def extract_field_label(field)
        model.class.human_attribute_name(field)
      end
      
#      def value_prefix
#        "".html_safe
#      end
#      
#      def value_suffix
#        "".html_safe
#      end
     
      def default_actions
        [ show_action, edit_action, delete_action ]
      end
      
      def show_action
        helper.link_to 'Show', model
      end

      def edit_action
        helper.link_to 'Edit', [ :edit, model ]
      end

      def delete_action
        helper.link_to 'Destroy', model, :method => :delete, :data => { :confirm => 'Are you sure?' }
      end
    end
  end
end

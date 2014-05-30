module SimpleDisplay
  module ActionViewExtensions
    module DisplayHelper
      def display_for(model, options = {}, &block)
        options.reverse_merge!({ :as => :definition_list })
        klass = "#{options[:as].to_s.camelize}DisplayBlock"
        klass = Object.class.const_get(klass)
        if klass.is_a?(Class)
          capture(klass.new(model, self), &block)
        else
          capture(DefinitionListDisplayBlock.new(model, self), &block)
        end
      end
    end
  end
end

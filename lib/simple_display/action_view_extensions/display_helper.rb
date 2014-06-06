module SimpleDisplay
  module ActionViewExtensions
    module DisplayHelper
      def display_for(model, options = {}, &block)
        options.reverse_merge!({ :as => :default })
        klass = "#{options[:as].to_s.camelize}DisplayBlock"
        klass = Object.class.const_get(klass)
        if klass.is_a?(Class)
          capture(klass.new(model, self), &block)
        else
          raise DisplayBlockNotDefinedException, "#{klass.to_s} not defined"
        end
      end
    end
  end
end

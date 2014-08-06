module SimpleDisplay
  module Displayers
    class Base
      attr_reader :model, :helper

      def initialize(model, helper)
        @model = model
        @helper = helper
      end

      def display(field, label = nil, &block)
        field_value = extract_field_value(field)

        if field_value.present?
          display_value(field_value, :field => field, &block)
        end
      end

      def display_action(action, &block)
        return helper.capture(action, &block) if block_given?
        action
      end

      private

      def extract_field_value(field)
        if model.respond_to?(:public_send)
          field_value = model.public_send(field).to_s
        else
          field_value = model.send(field).to_s
        end
      end

      def display_value(field_value, options = {}, &block)
        value(field_value, options, &block)
      end

      def value(field_value, options = {}, &block)
        return helper.capture(field_value, &block) if block_given?
        # return helper.link_to field_value, field_value if options.has_key?(:field) and model.class.reflect_on_all_associations.map(&:name).include?(options[:field])
        field_value
      end
    end
  end
end

module SimpleDisplay
  class Engine < ::Rails::Engine
    config.eager_load_namespaces << SimpleDisplay if Rails::VERSION::MAJOR >= 4
    if Rails::VERSION::MAJOR < 4
      require 'simple_display/displayers/base'
      require 'simple_display/display_block/base'  
    end

    initializer 'simple_display.action_view_extensions.display_helper' do
      ActionView::Base.send :include, SimpleDisplay::ActionViewExtensions::DisplayHelper
    end
  end
end



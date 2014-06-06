module SimpleDisplay
  class Engine < ::Rails::Engine
    if Rails::VERSION::MAJOR < 4
      require 'simple_display/displayers/base'
      require 'simple_display/display_block/base'  
    else
      config.eager_load_namespaces << SimpleDisplay
    end

    initializer 'simple_display.action_view_extensions.display_helper' do
      ActionView::Base.send :include, SimpleDisplay::ActionViewExtensions::DisplayHelper
    end
  end
end


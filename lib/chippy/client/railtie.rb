module Chippy
  module Client
    class Railtie < Rails::Railtie
      config.chippy = ActiveSupport::OrderedOptions.new

      initializer "chippy.configure" do |app|
        Chippy::Client::RedisConsumer.configure do |config|
          config.queue_name = app.config.chippy.queue_name || "chippy:readings"
          config.enabled = app.config.chippy.enabled || false
        end
      end

      config.after_initialize do |app|
        if Chippy::Client::RedisConsumer.enabled
          Chippy::Client::RedisConsumer.new(Chippy::Client::RedisConsumer.queue_name).listen
        end
      end
    end
  end
end

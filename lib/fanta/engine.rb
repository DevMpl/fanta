require "nokogiri"
require "kaminari"
require "simple_form"
require "semantic-ui-sass"
require "ckeditor"
require "active_decorator"
require "jquery-rails"
require "jquery-ui-rails"
require "cocoon"
require "pry"
require "pry-rails"
require "pry-nav"
require "better_errors"
require "binding_of_caller"

module Fanta
  class Engine < ::Rails::Engine
    isolate_namespace Fanta
		
    #自分のローカル時間を記録
    config.time_zone = 'Tokyo'

    #Active Record Timezone
    config.active_record.default_timezone = :local
		config.i18n.default_locale = :ja
		
		config.assets.compress = false
		config.assets.debug = true
		
    initializer "sprite.assets.precompile" do |app|
      app.config.assets.precompile << %w( cocoon )
    end
		
  end
end

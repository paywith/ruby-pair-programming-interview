module ProgramManager
  class Engine < ::Rails::Engine
    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_bot
      g.factory_bot dir: "spec/factories"
    end

    initializer 'program_manager.factories', after: 'factory_bot.set_factory_paths' do
      if defined?(FactoryBot)
        FactoryBot.definition_file_paths << File.expand_path('../../spec/factories',
                                                             __dir__)
      end
    end

    initializer 'program_manager.migrations' do |app|
      unless app.root.to_s.match root.to_s + File::SEPARATOR
        app.config.paths['db/migrate'].concat(config.paths['db/migrate'].expanded)
      end
    end

    isolate_namespace ProgramManager
  end
end

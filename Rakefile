$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

require 'bundler/setup'
Bundler.require :default

require 'yaml'
require 'motion-testflight'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'SoundTester'
  app.frameworks += ['AudioToolbox']

  if File.exists?('./config.yml')
    config = YAML::load_file('./config.yml')
    app.testflight.sdk        = 'vendor/TestFlightSDK'
    app.testflight.api_token  = config['testflight']['api_token']
    app.testflight.team_token = config['testflight']['team_token']

    app.codesign_certificate = config['certificate']
    app.provisioning_profile = config['provisioning']
  end
end

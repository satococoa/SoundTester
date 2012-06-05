class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @controller = SoundTesterController.alloc.initWithStyle(UITableViewStylePlain)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = @controller
    @window.makeKeyAndVisible
    true
  end
end

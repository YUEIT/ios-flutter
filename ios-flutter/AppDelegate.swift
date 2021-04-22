import UIKit
import Flutter
import flutter_boost

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ app: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    let delegate = FlutterDelegate.init()
    window = UIWindow.init(frame: UIScreen.main.bounds)
        
    let navi = UINavigationController.init(rootViewController: FViewController.init())
    navi.navigationBar.isHidden = true
    delegate.navigationController = navi;
    window?.rootViewController = navi
    window?.makeKeyAndVisible()
    
    //flutterboost 注册
    FlutterBoost.instance().setup(app, delegate: delegate) { (engine: FlutterEngine?) in
        //自定义消息交互插件实现
        NetContectPlugin.bind(binaryMessenger: engine?.binaryMessenger)
        ConstantPlugin.bind(binaryMessenger: engine?.binaryMessenger)
        LogPlugin.bind(binaryMessenger: engine?.binaryMessenger)
    }
    return true
  }
}

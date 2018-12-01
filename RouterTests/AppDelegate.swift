import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow()
        
        if let window = window {
            let router = Router(window: window)
            window.makeKeyAndVisible()
            
            router.routeToVC3()
        }
        
        return true
    }
}


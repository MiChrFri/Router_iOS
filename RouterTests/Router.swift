import UIKit

class Router {
    private let window: UIWindow!
    let viewControllerFactory: ViewControllerFactory!
    
    init(window: UIWindow, viewControllerFactory: ViewControllerFactory) {
        self.window = window
        self.viewControllerFactory = viewControllerFactory
        updateViewControllerMap()
    }
    
    func dropToVc(vc: UIViewController) {
        if let nav = window.rootViewController as? UINavigationController {
            nav.popToViewController(vc, animated: true)
        } else {
            window.rootViewController = UINavigationController(rootViewController: vc)
        }
        
        updateViewControllerMap()
    }
    
    func routeToVc(vc: UIViewController) {
        if let nav = window.rootViewController as? UINavigationController {
            nav.pushViewController(vc, animated: true)
        } else {
            window.rootViewController = UINavigationController(rootViewController: vc)
        }
        
        updateViewControllerMap()
    }
    
    private func updateViewControllerMap() {
        if let viewControllers = (window.rootViewController as? UINavigationController)?.viewControllers {
            viewControllerFactory.viewControllers = viewControllers
        }
    }
    
}

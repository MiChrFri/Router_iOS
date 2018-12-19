import UIKit

class Router {
    private let window: UIWindow!
    let viewControllerFactory: ViewControllerFactory!
    
    init(window: UIWindow, viewControllerFactory: ViewControllerFactory) {
        self.window = window
        self.viewControllerFactory = viewControllerFactory
        updateViewControllerMap()
    }
    
    func getViewController(forTag tag :VcTag) -> UIViewController? {
        return viewControllerFactory.viewControllers.first(where: { $0.hashValue == viewControllerFactory.routesMap[tag] })
    }
    
    func dropTo(viewController: UIViewController) {
        if let nav = window.rootViewController as? UINavigationController {
            nav.popToViewController(viewController, animated: true)
        } else {
            window.rootViewController = UINavigationController(rootViewController: viewController)
        }
        
        updateViewControllerMap()
    }
    
    func push(viewController: UIViewController) {
        if let nav = window.rootViewController as? UINavigationController {
            nav.pushViewController(viewController, animated: true)
        } else {
            window.rootViewController = UINavigationController(rootViewController: viewController)
        }
        
        updateViewControllerMap()
    }
    
    private func updateViewControllerMap() {
        if let viewControllers = (window.rootViewController as? UINavigationController)?.viewControllers {
            viewControllerFactory.viewControllers = viewControllers
        }
    }
    
}

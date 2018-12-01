import UIKit

class Router {
    private let window: UIWindow!
    
    lazy var personClient = PersonClient()
    var vcMap: [UIViewController] = []
    
    var hashesMap: [VcTag:Int] = [:]
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func routeToVC1() {
        let vc1 = VC1(withRouter: self, personClient: personClient)
        hashesMap[.vc1] = vc1.hashValue
        
        routeToVc(vc: vc1)
    }
    
    func routeToVC2() {
        let vc2 = VC2(withRouter: self, personClient: personClient)
        hashesMap[.vc2] = vc2.hashValue
        
        routeToVc(vc: vc2)
    }
    
    func dropToVC2() {
        if let vc = vcMap.first(where: { $0.hashValue == hashesMap[VcTag.vc2] }) {
            dropToVc(vc: vc)
        } else {
            routeToVC2()
        }
    }
    
    func routeToVC3() {
        let vc3 = VC3(withRouter: self)
        hashesMap[.vc3] = vc3.hashValue
        
        routeToVc(vc: vc3)
    }
    
    private func dropToVc(vc: UIViewController) {
        if let nav = window.rootViewController as? UINavigationController {
            nav.popToViewController(vc, animated: true)
        } else {
            window.rootViewController = UINavigationController(rootViewController: vc)
        }
        
        print(window.rootViewController as? UINavigationController)
        
        updateVcMap()
    }
    
    private func routeToVc(vc: UIViewController) {
        if let nav = window.rootViewController as? UINavigationController {
            nav.pushViewController(vc, animated: true)
        } else {
            window.rootViewController = UINavigationController(rootViewController: vc)
        }
        
        updateVcMap()
    }
    
    private func updateVcMap() {
        if let viewControllers = (window.rootViewController as? UINavigationController)?.viewControllers {
            vcMap = viewControllers
        }
    }
    
}

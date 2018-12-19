import UIKit

protocol WeatherTodayRouteable {
    func routeToVC2()
    func dropToVC2()
}

class WeatherTodayRouter: Router {
//    lazy var personClient = PersonClient()
//    var vcMap: [UIViewController] = []
//    
//

//
//    func routeToVC2() {
//        let vc2 = VC2(withRouter: self, personClient: personClient)
//        routesMap[.vc2] = vc2.hashValue
//        
//        routeToVc(vc: vc2)
//    }
//    
//    func dropToVC2() {
//        if let vc = viewControllers.first(where: { $0.hashValue == routesMap[VcTag.vc2] }) {
//            dropToVc(vc: vc)
//        } else {
//            routeToVC2()
//        }
//    }
//
//    func routeToVC3() {
//        let vc3 = VC3(withRouter: self)
//        routesMap[.vc3] = vc3.hashValue
//        
//        routeToVc(vc: vc3)
//    }

}

extension WeatherTodayRouter: WeatherTodayRouteable {
    func dropToVC2() {
        //
    }
    
    func routeToVC2() {
        let vc3 = viewControllerFactory.vc3
        routesMap[.vc3] = vc3.hashValue

        routeToVc(vc: vc3)
    }
}

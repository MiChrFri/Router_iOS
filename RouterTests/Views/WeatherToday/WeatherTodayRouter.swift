import UIKit

protocol WeatherTodayRouteable {
    func routeToWeatherCompare()
    func dropToHome()
}

class WeatherTodayRouter: Router {}

extension WeatherTodayRouter: WeatherTodayRouteable {
    
    func dropToHome() {
        if let homeVc = getViewController(forTag: .home) {
            dropTo(viewCOntroller: homeVc)
        } else {
            routeToHome()
        }
    }
    
    private func routeToHome() {
        let homeVc = viewControllerFactory.createHomeViewController()
        viewControllerFactory.routesMap[.home] = homeVc.hashValue
        
        routeTo(viewController: homeVc)
    }
    
    func routeToWeatherCompare() {
        let wCVc = viewControllerFactory.createWeatherCompareViewController()
        viewControllerFactory.routesMap[.weatherCompare] = wCVc.hashValue

        routeTo(viewController: wCVc)
    }
}

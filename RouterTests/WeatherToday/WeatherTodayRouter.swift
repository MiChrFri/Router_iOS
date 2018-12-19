import UIKit

protocol WeatherTodayRouteable {
    func routeToWeatherCompare()
    func dropToHome()
}

class WeatherTodayRouter: Router {}

extension WeatherTodayRouter: WeatherTodayRouteable {
    
    func dropToHome() {
        if let homeVc = getViewController(forTag: .home) {
            dropToVc(vc: homeVc)
        } else {
            routeToHome()
        }
    }
    
    func routeToHome() {
        let homeVc = viewControllerFactory.createHomeViewController()
        viewControllerFactory.routesMap[.home] = homeVc.hashValue
        
        routeToVc(vc: homeVc)
    }
    
    func routeToWeatherCompare() {
        let wCVc = viewControllerFactory.createWeatherCompareViewController()
        viewControllerFactory.routesMap[.weatherCompare] = wCVc.hashValue

        routeToVc(vc: wCVc)
    }
}

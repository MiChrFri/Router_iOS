protocol WeatherCompareRouteble {
    func routeToWeatherToday()
    func dropToHome()
}

class WeatherCompareRouter: Router {}

extension WeatherCompareRouter: WeatherCompareRouteble {
    func dropToHome() {
        if let homeVc = getViewController(forTag: .home) {
            dropTo(viewCOntroller: homeVc)
        } else {
            routeToHome()
        }
    }
    
    func routeToHome() {
        let homeVc = viewControllerFactory.createHomeViewController()
        viewControllerFactory.routesMap[.home] = homeVc.hashValue
        
        routeTo(viewController: homeVc)
    }
    
    func routeToWeatherToday() {
        let wTVc = viewControllerFactory.createWeatherTodayViewController()
        viewControllerFactory.routesMap[.weatherToday] = wTVc.hashValue
        
        routeTo(viewController: wTVc)
    }
}

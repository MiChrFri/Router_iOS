protocol HomeRoutable {
    func routeToWeatherToday()
    func routeToWeatherCompare()
}

class HomeRouter: Router {}

extension HomeRouter: HomeRoutable {
    
    func routeToWeatherToday() {
        let wCVc = viewControllerFactory.createWeatherTodayViewController()
        viewControllerFactory.routesMap[.weatherToday] = wCVc.hashValue
        
        routeTo(viewController: wCVc)
    }
    
    func routeToWeatherCompare() {
        let wCVc = viewControllerFactory.createWeatherCompareViewController()
        viewControllerFactory.routesMap[.weatherCompare] = wCVc.hashValue
        
        routeTo(viewController: wCVc)
    }

}

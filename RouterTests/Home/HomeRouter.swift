protocol HomeRoutable {
    func routeToWeatherToday()
    func routeToWeatherCompare()
}

class HomeRouter: Router {}

extension HomeRouter: HomeRoutable {
    
    func routeToWeatherToday() {
        let wCVc = viewControllerFactory.createWeatherTodayViewController()
        viewControllerFactory.routesMap[.weatherToday] = wCVc.hashValue
        
        routeToVc(vc: wCVc)
    }
    
    func routeToWeatherCompare() {
        let wCVc = viewControllerFactory.createWeatherCompareViewController()
        viewControllerFactory.routesMap[.weatherCompare] = wCVc.hashValue
        
        routeToVc(vc: wCVc)
    }

}

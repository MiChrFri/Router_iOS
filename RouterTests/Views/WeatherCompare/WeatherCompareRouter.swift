protocol WeatherCompareRoutable {
    func pushWeatherToday()
    func dropToHome()
    func dropToWeatherToday()
}

class WeatherCompareRouter: Router {}

extension WeatherCompareRouter: WeatherCompareRoutable {
    func dropToHome() {
        if let homeVc = getViewController(forTag: .home) {
            dropTo(viewController: homeVc)
        } else {
            pushHome()
        }
    }
    
    func pushHome() {
        let homeVc = viewControllerFactory.createHomeViewController()
        push(viewController: homeVc)
    }

    func dropToWeatherToday() {
        if let weatherTodayVc = getViewController(forTag: .weatherToday) {
            dropTo(viewController: weatherTodayVc)
        } else {
            pushWeatherToday()
        }
    }
    
    func pushWeatherToday() {
        let wTVc = viewControllerFactory.createWeatherTodayViewController()
        push(viewController: wTVc)
    }
}

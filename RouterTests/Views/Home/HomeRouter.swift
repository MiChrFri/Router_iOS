protocol HomeRoutable {
    func pushWeatherToday()
    func pushWeatherCompare()
}

class HomeRouter: Router {}

extension HomeRouter: HomeRoutable {
    
    func pushWeatherToday() {
        let wCVc = viewControllerFactory.createWeatherTodayViewController()
        push(viewController: wCVc)
    }
    
    func pushWeatherCompare() {
        let wCVc = viewControllerFactory.createWeatherCompareViewController()
        push(viewController: wCVc)
    }

}

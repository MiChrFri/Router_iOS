protocol HomePresentable {
    func viewDidLoad(viewController: WeatherCompareViewable)
    func pushWeatherToday()
    func pushWeatherCompare()
}

class HomePresenter {
    weak var viewController: WeatherCompareViewable?
    let router: HomeRouter!
    
    init(withRouter router: HomeRouter) {
        self.router = router
    }
}

extension HomePresenter: HomePresentable {
    func viewDidLoad(viewController: WeatherCompareViewable) {
        self.viewController = viewController
    }
    
    func pushWeatherToday() {
        router.pushWeatherToday()
    }
    
    func pushWeatherCompare() {
        router.pushWeatherCompare()
    }
}

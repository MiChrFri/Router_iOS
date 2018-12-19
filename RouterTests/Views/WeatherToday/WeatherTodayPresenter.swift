protocol WeatherTodayPresentable {
    func viewDidLoad(viewController: WeatherTodayViewable)
    func pushWeatherCompare()
    func dropToHome()
}

class WeatherTodayPresenter {
    weak var viewController: WeatherTodayViewable?
    let router: WeatherTodayRoutable!
    let interactor: WeatherInteractable!
    
    init(withRouter router: WeatherTodayRoutable, interactor: WeatherInteractable) {
        self.router = router
        self.interactor = interactor
    }
}

extension WeatherTodayPresenter: WeatherTodayPresentable {
    func viewDidLoad(viewController: WeatherTodayViewable) {
        self.viewController = viewController
        viewController.showUI()
    }
    
    func pushWeatherCompare() {
        router.pushWeatherCompare()
    }
    
    func dropToHome() {
        router.dropToHome()
    }
}

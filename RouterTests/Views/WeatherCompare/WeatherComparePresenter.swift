protocol WeatherComparePresentable {
    func viewDidLoad(viewController: WeatherCompareViewable)
    func pushWeatherToday()
    func dropToHome()
}

class WeatherComparePresenter {
    weak var viewController: WeatherCompareViewable?
    let interactor: WeatherInteractable!
    let router: WeatherCompareRoutable!
    
    init(withRouter router: WeatherCompareRoutable, interactor: WeatherInteractable) {
        self.router = router
        self.interactor = interactor
    }
}

extension WeatherComparePresenter: WeatherComparePresentable {
    func viewDidLoad(viewController: WeatherCompareViewable) {
        self.viewController = viewController
        viewController.showUI()
    }
    
    func pushWeatherToday() {
        router.pushWeatherToday()
    }
    
    func dropToHome() {
        router.dropToHome()
    }
}

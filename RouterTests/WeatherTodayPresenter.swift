protocol WeatherTodayPresentable {
    func viewDidLoad(viewController: WeatherTodayViewable)
}

class WeatherTodayPresenter {
    weak var viewController: WeatherTodayViewable?
    let interactor: WeatherInteractable!
    
    init(interactor: WeatherInteractable) {
        self.interactor = interactor
    }
}

extension WeatherTodayPresenter: WeatherTodayPresentable {
    func viewDidLoad(viewController: WeatherTodayViewable) {
        self.viewController = viewController
        viewController.showUI()
    }
}

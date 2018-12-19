protocol WeatherComparePresentable {
    func viewDidLoad(viewController: WeatherCompareViewable)
}

class WeatherComparePresenter {
    weak var viewController: WeatherCompareViewable?
    let interactor: WeatherInteractable!
    
    init(interactor: WeatherInteractable) {
        self.interactor = interactor
    }
}

extension WeatherComparePresenter: WeatherComparePresentable {
    func viewDidLoad(viewController: WeatherCompareViewable) {
        self.viewController = viewController
        viewController.showUI()
    }
}

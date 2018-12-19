import UIKit

class ViewControllerFactory {
    private let window: UIWindow!
    private lazy var weatherTodayRouter = WeatherTodayRouter(window: window, viewControllerFactory: self)
    private lazy var weatherTodayInteractor = WeatherInteractor(withClient: WeatherApiClient())
    private lazy var weatherTodayPresenter = WeatherTodayPresenter(interactor: weatherTodayInteractor)
    
    lazy var weatherTodayViewController = WeatherTodayViewController(withRouter: weatherTodayRouter, presenter: weatherTodayPresenter)
    lazy var vc3 = VC3(withRouter: weatherTodayRouter)
    
    
    init(withWindow window: UIWindow) {
        self.window = window
        self.window.rootViewController = weatherTodayViewController
    }

    
    
    
    
    //lazy var vc1 = VC1(withRouter: weatherTodayRouter, personClient: personClient)
    
    
}

import UIKit

class ViewControllerFactory {
    private let window: UIWindow!
    
    var routesMap: [VcTag:Int] = [:]
    var viewControllers: [UIViewController] = []
    
    init(withWindow window: UIWindow) {
        self.window = window
        self.window.rootViewController = UINavigationController(rootViewController: createHomeViewController())
    }

    func createHomeViewController() -> HomeViewController {
        let router = HomeRouter(window: window, viewControllerFactory: self)
        return HomeViewController(withRouter: router)
    }
    
    func createWeatherTodayViewController() -> WeatherTodayViewController {
        let weatherInteractor = WeatherInteractor(withClient: WeatherApiClient())
        
        let weatherTodayRouter = WeatherTodayRouter(window: window, viewControllerFactory: self)
        let weatherTodayPresenter = WeatherTodayPresenter(interactor: weatherInteractor)
        let weatherTodayViewController = WeatherTodayViewController(withRouter: weatherTodayRouter, presenter: weatherTodayPresenter)
        
        return weatherTodayViewController
    }
    
    func createWeatherCompareViewController() -> WeatherCompareViewController {
        let weatherInteractor = WeatherInteractor(withClient: WeatherApiClient())
        
        let weatherCompareRouter = WeatherCompareRouter(window: window, viewControllerFactory: self)
        let weatherComparePresenter = WeatherComparePresenter(interactor: weatherInteractor)
        let weatherCompareViewController = WeatherCompareViewController(withRouter: weatherCompareRouter, presenter: weatherComparePresenter)
        
        return weatherCompareViewController
    }
    
}

import UIKit

class ViewControllerFactory {
    private let window: UIWindow!
    
    var routesMap: [VcTag:Int] = [:]
    var viewControllers: [UIViewController] = []
    
    init(withWindow window: UIWindow) {
        self.window = window
        
        let homeViewController = createHomeViewController()
        self.window.rootViewController = UINavigationController(rootViewController: homeViewController)
        routesMap[.home] = homeViewController.hashValue
    }

    func createHomeViewController() -> HomeViewController {
        let router = HomeRouter(window: window, viewControllerFactory: self)
        let presenter = HomePresenter(withRouter: router)
        let homeViewController = HomeViewController(withPresenter: presenter)
        
        routesMap[.home] = homeViewController.hashValue
        return homeViewController
    }
    
    func createWeatherTodayViewController() -> WeatherTodayViewController {
        let weatherInteractor = WeatherInteractor(withClient: WeatherApiClient())
        let weatherTodayRouter = WeatherTodayRouter(window: window, viewControllerFactory: self)
        let weatherTodayPresenter = WeatherTodayPresenter(withRouter: weatherTodayRouter, interactor: weatherInteractor)
        let weatherTodayViewController = WeatherTodayViewController(withPresenter: weatherTodayPresenter)
        
        routesMap[.weatherToday] = weatherTodayViewController.hashValue
        return weatherTodayViewController
    }
    
    func createWeatherCompareViewController() -> WeatherCompareViewController {
        let weatherInteractor = WeatherInteractor(withClient: WeatherApiClient())
        let weatherCompareRouter = WeatherCompareRouter(window: window, viewControllerFactory: self)
        let weatherComparePresenter = WeatherComparePresenter(withRouter: weatherCompareRouter, interactor: weatherInteractor)
        let weatherCompareViewController = WeatherCompareViewController(withPresenter: weatherComparePresenter)
        
        routesMap[.weatherCompare] = weatherCompareViewController.hashValue
        return weatherCompareViewController
    }
    
}

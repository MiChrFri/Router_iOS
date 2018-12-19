import UIKit

protocol WeatherTodayRoutable {
    func pushWeatherCompare()
    func dropToHome()
}

class WeatherTodayRouter: Router {}

extension WeatherTodayRouter: WeatherTodayRoutable {
    
    func dropToHome() {
        if let homeVc = getViewController(forTag: .home) {
            dropTo(viewController: homeVc)
        } else {
            pushHome()
        }
    }
    
    private func pushHome() {
        let homeVc = viewControllerFactory.createHomeViewController()
        push(viewController: homeVc)
    }
    
    func pushWeatherCompare() {
        let wCVc = viewControllerFactory.createWeatherCompareViewController()
        push(viewController: wCVc)
    }

}

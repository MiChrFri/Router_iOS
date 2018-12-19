import UIKit

protocol WeatherTodayViewable: class {
    func showUI()
}

class WeatherTodayViewController: UIViewController {
    let router: WeatherTodayRouteable!
    let presenter: WeatherTodayPresentable!
    
    init(withRouter router: WeatherTodayRouteable, presenter: WeatherTodayPresentable) {
        self.router = router
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
        
        print("🔅 init WeatherTodayViewController")
    }
    
    deinit {
        print("💢 deinit WeatherTodayViewController")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        presenter.viewDidLoad(viewController: self)
    }

    @IBAction func next(_ sender: Any) {
        router.routeToWeatherCompare()
    }
    
    @IBAction func home(_ sender: Any) {
        router.dropToHome()
    }
}

extension WeatherTodayViewController: WeatherTodayViewable {
    func showUI() {
        print("🏞 some amazing UI")
    }
}


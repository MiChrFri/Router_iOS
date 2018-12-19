import UIKit

protocol WeatherCompareViewable: class {
    func showUI()
}

class WeatherCompareViewController: UIViewController {
    let router: WeatherCompareRouteble!
    let presenter: WeatherComparePresentable!
    
    init(withRouter router: WeatherCompareRouteble, presenter: WeatherComparePresentable) {
        self.router = router
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
        
        print("🔅 init WeatherCompareViewController")
    }

    deinit {
        print("💢 deinit WeatherCompareViewController")
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        presenter.viewDidLoad(viewController: self)
    }

    @IBAction func weatherToday(_ sender: Any) {
        router.routeToWeatherToday()
    }

    @IBAction func home(_ sender: Any) {
        router.dropToHome()
    }
    
}

extension WeatherCompareViewController: WeatherCompareViewable {
    func showUI() {
        print("🏞 more amazing UI")
    }
}



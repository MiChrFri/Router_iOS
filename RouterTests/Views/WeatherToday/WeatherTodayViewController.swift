import UIKit

protocol WeatherTodayViewable: class {
    func showUI()
}

class WeatherTodayViewController: UIViewController {
    let presenter: WeatherTodayPresentable!
    
    init(withPresenter presenter: WeatherTodayPresentable) {
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
        presenter.pushWeatherCompare()
    }
    
    @IBAction func home(_ sender: Any) {
        presenter.dropToHome()
    }
}

extension WeatherTodayViewController: WeatherTodayViewable {
    func showUI() {
        print("🏞 some amazing UI")
    }
}


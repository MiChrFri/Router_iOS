import UIKit

protocol WeatherCompareViewable: class {
    func showUI()
}

class WeatherCompareViewController: UIViewController {
    let presenter: WeatherComparePresentable!
    
    init(withPresenter presenter :WeatherComparePresentable) {
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
        presenter.pushWeatherToday()
    }

    @IBAction func home(_ sender: Any) {
        presenter.dropToHome()
    }
    
}

extension WeatherCompareViewController: WeatherCompareViewable {
    func showUI() {
        print("🏞 more amazing UI")
        
        let newBackButton = UIBarButtonItem(title: "Back Home", style: UIBarButtonItem.Style.plain, target: self, action: #selector(back(sender:)))
            self.navigationItem.leftBarButtonItem = newBackButton
    }
    
    @objc func back(sender: UIBarButtonItem) {
        presenter.dropToHome()
    }
}



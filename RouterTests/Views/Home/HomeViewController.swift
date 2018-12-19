import UIKit

class HomeViewController: UIViewController {
    let presenter: HomePresenter!
    
    init(withPresenter presenter: HomePresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
        print("🔅 init HomeViewController")
    }
    
    deinit {
        print("💢 deinit HomeViewController")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @IBAction func weatherToday(_ sender: Any) {
        presenter.pushWeatherToday()
    }
    
    @IBAction func weatherCompare(_ sender: Any) {
        presenter.pushWeatherCompare()
    }
    
}

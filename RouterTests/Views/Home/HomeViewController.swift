import UIKit

class HomeViewController: UIViewController {
    let router: HomeRoutable!
    
    init(withRouter router: HomeRoutable) {
        self.router = router
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
        router.routeToWeatherToday()
    }
    
    @IBAction func weatherCompare(_ sender: Any) {
        router.routeToWeatherCompare()
    }
    
}

import UIKit

class VC3: UIViewController {
    let router: Router!
    
    init(withRouter router: Router) {
        self.router = router
        super.init(nibName: nil, bundle: nil)
        print("🔅 init VC3")
    }
    
    deinit {
        print("💢 deinit VC3")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func next(_ sender: Any) {
        router.routeToVC1()
    }
    
}

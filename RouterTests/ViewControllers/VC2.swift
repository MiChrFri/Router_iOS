import UIKit

class VC2: UIViewController {
    let router: Router!
    let client: PersonClient!
    
    init(withRouter router: Router, personClient: PersonClient) {
        self.router = router
        self.client = personClient
        super.init(nibName: nil, bundle: nil)
        print("🔅 init VC2")
    }
    
    deinit {
        print("💢 deinit VC2")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        print("😈 \(client.myPerson().name) will not get older than \(client.myPerson().age)")
    }

    @IBAction func next(_ sender: Any) {
        router.routeToVC3()
    }
}

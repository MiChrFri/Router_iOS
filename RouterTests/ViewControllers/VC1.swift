import UIKit

class VC1: UIViewController {
    let router: Router!
    let client: PersonClient!
    
    init(withRouter router: Router, personClient: PersonClient) {
        self.router = router
        self.client = personClient
        super.init(nibName: nil, bundle: nil)
        print("🔅 init VC1")
    }
    
    deinit {
        print("💢 deinit VC1")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        print("👤 \(client.myPerson().name) is \(client.myPerson().age) years old")
    }

    @IBAction func next(_ sender: Any) {
        router.dropToVC2()
    }
    
}

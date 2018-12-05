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

    /**
     * By switching the argument passed to the factory (logged / notLogged Person)
     * we go to two different controllers
     */
    @IBAction func conditionalNext(_ sender: Any) {
        //let notLoggedPerson = Person(name: "MikaWithCredentials :D", age: 30, credentials: nil)
        let loggedPerson = Person(name: "MikaWithCredentials :D", age: 30, credentials: "Valid Credentials")
        let bootRouter =  RouterFactory.buildBootRouter(person: loggedPerson, applicationView: iOSApplicationView(viewController: self))
        bootRouter.route()
    }

    
}

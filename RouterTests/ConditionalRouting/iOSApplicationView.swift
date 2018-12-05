import UIKit

class iOSApplicationView : ApplicationView {

    let viewController: UIViewController

    init(viewController: UIViewController) {
        self.viewController = viewController
    }

    /**
     - tag controllers and handle navigation
      (we can replicate here the Router's logic)
     */

    func routeToVC1() {
        print("routing to ***** VC1 *****")
    }

    func routeToVC2() {
        print("routing to ***** VC2 *****")
    }

    func routeToVC3() {
        print("routing to ***** VC3 *****")
    }

    func dropToVC2() {
        print("routing back to ***** VC2 *****")
    }

}

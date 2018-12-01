import UIKit

class VCStack {
    static var shared = VCStack()

    var stack: [String:UIViewController]!
    
    private init() {
        stack = [:]
    }
}


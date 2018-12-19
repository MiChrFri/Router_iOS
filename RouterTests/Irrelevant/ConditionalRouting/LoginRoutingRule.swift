class LoginRoutingRule : RoutingRule {

    let person: Person
    let view: ApplicationView

    init(with person: Person, applicationView: ApplicationView) {
        self.person = person
        self.view = applicationView
    }

    func isValid() -> Bool {
        return person.credentials == nil
    }

    func apply() {
        if isValid() {
            view.routeToVC1()
        }
    }


}

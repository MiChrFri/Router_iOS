class MainRoutingRule: RoutingRule {

    let view: ApplicationView
    let person: Person

    init(person: Person, view: ApplicationView) {
        self.person = person
        self.view = view
    }

    func isValid() -> Bool {
        return person.credentials != nil
    }

    func apply() {
        if isValid() {
            view.routeToVC2()
        }
    }
}


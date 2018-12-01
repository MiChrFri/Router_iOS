class RouterFactory {

    static func buildBootRouter(person: Person, applicationView: ApplicationView) -> AnotherRouter {
        let loginRule = LoginRoutingRule(with: person, applicationView: applicationView)
        let mainRoutingRule = MainRoutingRule(person: person, view: applicationView)
        return AnotherRouter(routingRule: loginRule || mainRoutingRule)
    }
}

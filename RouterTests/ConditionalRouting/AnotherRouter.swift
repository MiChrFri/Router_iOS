class AnotherRouter {
    fileprivate let routingRule: RoutingRule

    init(routingRule: RoutingRule) {
        self.routingRule = routingRule
    }

    func route() {
        if(routingRule.isValid()) {
            routingRule.apply()
        }
    }
}

class ExclusiveRoutingRule: RoutingRule {
    fileprivate let firstRule: RoutingRule
    fileprivate let secondRule: RoutingRule

    init(_ firstRule: RoutingRule, _ secondRule: RoutingRule) {
        self.firstRule = firstRule
        self.secondRule = secondRule
    }

    func isValid() -> Bool {
        return firstRule.isValid() || secondRule.isValid()
    }

    func apply() {
        if firstRule.isValid() {
            firstRule.apply()
        } else {
            secondRule.apply()
        }
    }
}

func || (first: RoutingRule, second: RoutingRule) -> RoutingRule {
    return ExclusiveRoutingRule(first, second)
}

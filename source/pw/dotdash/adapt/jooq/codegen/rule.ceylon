import org.jooq.util.jaxb {
    MatcherRule,
    MatcherTransformType
}

"Java class for MatcherRule complex type."
shared MatcherRule rule(
        "A replacement expression that transforms the matched expression in a new value."
        String expression,
        "A pre-defined transformation type that transforms this rule's output into a specific format."
        MatcherTransformType? transform = null) {
    value rule = MatcherRule();

    rule.expression = expression;
    if (exists transform) {
        rule.transform = transform;
    }

    return rule;
}
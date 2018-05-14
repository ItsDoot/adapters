import org.jooq.util.jaxb {
    Strategy,
    Matchers
}

"Definitions of custom naming strategies (declarative or programmatic) to define how generated Java objects should be named."
shared Strategy strategy(
        "The class used to provide a naming strategy for generated source code.
         You may override this with your custom naming strategy.
         This cannot be combined with a matcher configuration."
        String name = "org.jooq.util.DefaultGeneratorStrategy",
        "The matcher strategy configuration used when applying an XML-based strategy.
         This cannot be combined with a named strategy configuration."
        Matchers? matchers = null) {
    value strategy = Strategy();

    strategy.name = name;
    if (exists matchers) {
        strategy.matchers = matchers;
    }

    return strategy;
}
import org.jooq.util.jaxb {
    MatchersSequenceType,
    MatcherRule
}

"Declarative naming strategy configuration for sequence names."
shared MatchersSequenceType matcherSequence(
        "This sequence matcher applies to all unqualified or qualified sequence names matched by this expression.
         If left empty, this matcher applies to all sequences."
        String? expression = null,
        "This rule influences the naming of the generated [[org.jooq::Sequence]] identifier."
        MatcherRule? sequenceIdentifier = null) {
    value sequence = MatchersSequenceType();

    if (exists expression) {
        sequence.expression = expression;
    }
    if (exists sequenceIdentifier) {
        sequence.sequenceIdentifier = sequenceIdentifier;
    }

    return sequence;
}
import org.jooq.util.jaxb {
    MatchersFieldType,
    MatcherRule
}

"Declarative naming strategy configuration for field names."
shared MatchersFieldType matcherField(
        "This field matcher applies to all unqualified or qualified field names matched by this expression.
         If left empty, this matcher applies to all fields."
        String? expression = null,
        "This rule influences the naming of the generated [[org.jooq::Field]] identifier."
        MatcherRule? fieldIdentifier = null,
        "This rule influences the naming of generated members (e.g. in POJOs) corresponding to this [[org.jooq::Field]]"
        MatcherRule? fieldMember = null,
        "This rule influences the naming of generated setters (e.g. in [[org.jooq::TableRecord]] and/or POJOs)
         corresponding to this [[org.jooq::Field]]."
        MatcherRule? fieldSetter = null,
        "This rule influences the naming of generated getters (e.g. in {@link org.jooq.TableRecord} and/or POJOs)
         corresponding to this [[org.jooq::Field]]"
        MatcherRule? fieldGetter = null) {
    value field = MatchersFieldType();

    if (exists expression) {
        field.expression = expression;
    }
    if (exists fieldIdentifier) {
        field.fieldIdentifier = fieldIdentifier;
    }
    if (exists fieldMember) {
        field.fieldMember = fieldMember;
    }
    if (exists fieldSetter) {
        field.fieldSetter = fieldSetter;
    }
    if (exists fieldGetter) {
        field.fieldGetter = fieldGetter;
    }

    return field;
}
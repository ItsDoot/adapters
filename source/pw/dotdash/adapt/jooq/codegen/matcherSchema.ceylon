import org.jooq.util.jaxb {
    MatchersSchemaType,
    MatcherRule
}

"Declarative naming strategy configuration for schema names."
shared MatchersSchemaType matcherSchema(
        "This schema matcher applies to all unqualified or qualified schema names matched by this expression.
         If left empty, this matcher applies to all schemas."
        String? expression = null,
        "This rule influences the naming of the generated [[org.jooq::Schema]] object."
        MatcherRule? schemaClass = null,
        "This rule influences the naming of the generated [[org.jooq::Schema]] identifier."
        MatcherRule? schemaIdentifier = null,
        "This string provides additional interfaces that a generated [[org.jooq::Schema]] should implement."
        String? schemaImplements = null) {
    value schema = MatchersSchemaType();

    if (exists expression) {
        schema.expression = expression;
    }
    if (exists schemaClass) {
        schema.schemaClass = schemaClass;
    }
    if (exists schemaIdentifier) {
        schema.schemaIdentifier = schemaIdentifier;
    }
    if (exists schemaImplements) {
        schema.schemaImplements = schemaImplements;
    }

    return schema;
}
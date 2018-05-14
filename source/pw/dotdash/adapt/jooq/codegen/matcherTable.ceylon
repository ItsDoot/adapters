import org.jooq.util.jaxb {
    MatchersTableType,
    MatcherRule
}

"Declarative naming strategy configuration for table names."
shared MatchersTableType matcherTable(
        "This table matcher applies to all unqualified or qualified table names matched by this expression.
         If left empty, this matcher applies to all tables."
        String? expression = null,
        "This rule influences the naming of the generated [[org.jooq::Table]] object."
        MatcherRule? tableClass = null,
        "This rule influences the naming of the generated [[org.jooq::Table]] identifier."
        MatcherRule? tableIdentifier = null,
        "This string provides additional interfaces that a generated [[org.jooq::Table]] should implement."
        String? tableImplements = null,
        "This rule influences the naming of the generated [[org.jooq::TableRecord]] object."
        MatcherRule? recordClass = null,
        "This string provides additional interfaces that a generated [[org.jooq::TableRecord]] should implement."
        String? recordImplements = null,
        "This rule influences the naming of the generated interface implemented by the [[org.jooq::TableRecord]] and/or the POJO."
        MatcherRule? interfaceClass = null,
        "This string provides additional interfaces that a generated interface (which is implemented by the [[org.jooq::TableRecord]] and/or POJO) should implement."
        String? interfaceImplements = null,
        "This rule influences the naming of the generated [[org.jooq::DAO]] object."
        MatcherRule? daoClass = null,
        "This string provides additional interfaces that a generated [[org.jooq::DAO]] should implement."
        String? daoImplements = null,
        "This rule influences the naming of the generated POJOs object."
        MatcherRule? pojoClass = null,
        "This string provides a super class that a generated POJO should extend."
        String? pojoExtends = null,
        "This string provides additional interfaces that a generated POJO should implement."
        String? pojoImplements = null) {
    value table = MatchersTableType();

    if (exists expression) {
        table.expression = expression;
    }
    if (exists tableClass) {
        table.tableClass = tableClass;
    }
    if (exists tableIdentifier) {
        table.tableIdentifier = tableIdentifier;
    }
    if (exists tableImplements) {
        table.tableImplements = tableImplements;
    }
    if (exists recordClass) {
        table.recordClass = recordClass;
    }
    if (exists recordImplements) {
        table.recordImplements = recordImplements;
    }
    if (exists interfaceClass) {
        table.interfaceClass = interfaceClass;
    }
    if (exists interfaceImplements) {
        table.interfaceImplements = interfaceImplements;
    }
    if (exists daoClass) {
        table.daoClass = daoClass;
    }
    if (exists daoImplements) {
        table.daoImplements = daoImplements;
    }
    if (exists pojoClass) {
        table.pojoClass = pojoClass;
    }
    if (exists pojoExtends) {
        table.pojoExtends = pojoExtends;
    }
    if (exists pojoImplements) {
        table.pojoImplements = pojoImplements;
    }

    return table;
}
import java.lang {
    JBoolean=Boolean
}

import org.jooq.util.jaxb {
    ForcedType
}

"A forced type declaration."
shared ForcedType forcedType(
        "The name (in [[org.jooq.impl::SQLDataType]]) to force any matches to"
        String? name = null,
        "The type of the user type - e.g. [[java.time::LocalDateTime]]."
        String? userType = null,
        "A converter implementation for the [[userType]]."
        String? converter = null,
        "Whether the converter is an [[org.jooq.impl::EnumConverter]]."
        Boolean? enumConverter = null,
        "A [[org.jooq::Binding]] implementation for the custom type."
        String? binding = null,
        "A Java regular expression matching columns, parameters, attributes,
         etc to be forced to have this type. If provided, both 'expressions' and
         'types' must match."
        String? expression = null,
        "The same as expression. This is kept for backwards compatibility reasons."
        String? expressions = null,
        "A Java regular expression matching data types to be forced to have this
         type. If provided, both 'expression' and 'types' must match."
        String? types = null) {
    value forcedType = ForcedType();

    if (exists name) {
        forcedType.name = name;
    }
    if (exists userType) {
        forcedType.userType = userType;
    }
    if (exists converter) {
        forcedType.converter = converter;
    }
    if (exists enumConverter) {
        forcedType.setEnumConverter(JBoolean(enumConverter));
    }
    if (exists binding) {
        forcedType.binding = binding;
    }
    if (exists expression) {
        forcedType.expression = expression;
    }
    if (exists expressions) {
        forcedType.expressions = expressions;
    }
    if (exists types) {
        forcedType.types = types;
    }

    return forcedType;
}
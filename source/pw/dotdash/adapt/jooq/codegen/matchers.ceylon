import java.util {
    Arrays,
    ArrayList
}

import org.jooq.util.jaxb {
    Matchers,
    MatchersSchemaType,
    MatchersTableType,
    MatchersFieldType,
    MatchersRoutineType,
    MatchersSequenceType
}

"Declarative naming strategy configuration."
shared Matchers matchers(
        [MatchersSchemaType*] schemas = [],
        [MatchersTableType*] tables = [],
        [MatchersFieldType*] fields = [],
        [MatchersRoutineType*] routines = [],
        [MatchersSequenceType*] sequences = []) {
    value matchers = Matchers();

    if (nonempty schemas) {
        matchers.schemas =ArrayList(Arrays.asList(*schemas));
    }
    if (nonempty tables) {
        matchers.tables =ArrayList(Arrays.asList(*tables));
    }
    if (nonempty fields) {
        matchers.fields =ArrayList(Arrays.asList(*fields));
    }
    if (nonempty routines) {
        matchers.routines =ArrayList(Arrays.asList(*routines));
    }
    if (nonempty sequences) {
        matchers.sequences =ArrayList(Arrays.asList(*sequences));
    }

    return matchers;
}
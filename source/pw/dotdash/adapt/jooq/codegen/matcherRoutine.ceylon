import org.jooq.util.jaxb {
    MatchersRoutineType,
    MatcherRule
}

"Declarative naming strategy configuration for routine names."
shared MatchersRoutineType matcherRoutine(
        "This routine matcher applies to all unqualified or qualified routine names matched by this expression.
         If left empty, this matcher applies to all routines."
        String? expression = null,
        "This rule influences the naming of the generated [[org.jooq::Routine]] object."
        MatcherRule? routineClass = null,
        "This rule influences the naming of generated convenience methods used to call the [[org.jooq::Routine]]."
        MatcherRule? routineMethod = null,
        "This string provides additional interfaces that a generated [[org.jooq::Routine]] should implement."
        String? routineImplements = null) {
    value routine = MatchersRoutineType();

    if (exists expression) {
        routine.expression = expression;
    }
    if (exists routineClass) {
        routine.routineClass = routineClass;
    }
    if (exists routineMethod) {
        routine.routineMethod = routineMethod;
    }
    if (exists routineImplements) {
        routine.routineImplements = routineImplements;
    }

    return routine;
}
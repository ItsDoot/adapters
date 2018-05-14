import org.jooq.util.jaxb {
    Generator,
    Strategy,
    Database,
    Generate,
    Target
}

"Configuration that affects the way code is being generated."
shared Generator generator(
        "The class used to generate source code. This can be overridden with a custom code generator implementation."
        String name = "org.jooq.util.DefaultGenerator",
        "Definitions of custom naming strategies (declarative or programmatic) to define how generated Java objects should be named."
        Strategy? strategy = null,
        "Configuration of the database meta data source."
        Database? database = null,
        "Options strictly related to generated code."
        Generate? generate = null,
        "Options to define where the generated code should be located."
        Target? target = null) {
    value generator = Generator();

    generator.name = name;
    if (exists strategy) {
        generator.strategy = strategy;
    }
    if (exists database) {
        generator.database = database;
    }
    if (exists generate) {
        generator.generate = generate;
    }
    if (exists target) {
        generator.target = target;
    }

    return generator;
}
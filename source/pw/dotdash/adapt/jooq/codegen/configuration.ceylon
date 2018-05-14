import org.jooq.util.jaxb {
    Configuration,
    Logging,
    Jdbc,
    Generator
}

"Java class for anonymous complex type."
shared Configuration configuration(
        "The GENERATOR configuration element contains information about source code generation itself."
        Generator generator,
        "The JDBC configuration element contains information about how to set up the database connection used for source code generation."
        Jdbc? jdbc = null,
        "The logging configuration element specifies the code generation logging threshold."
        Logging? logging = null) {
    value configuration = Configuration();

    configuration.generator = generator;
    if (exists jdbc) {
        configuration.jdbc = jdbc;
    }
    if (exists logging) {
        configuration.logging = logging;
    }

    return configuration;
}
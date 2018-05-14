import java.util {
    Arrays,
    ArrayList
}

import org.jooq.util.jaxb {
    Jdbc,
    Property
}

"JDBC connection configuration."
shared Jdbc jdbc(
        "The JDBC connection URL."
        String url,
        "The JDBC driver class."
        String? driver = null,
        deprecated ("Use database schema configuration elements instead.")
        String? schema = null,
        "The JDBC connection user. Be sure this user has all required GRANTs to the dictionary views/tables to generate the desired artefacts."
        String? username = null,
        "The JDBC connection password."
        String? password = null,
        [Property|<String->String>*] properties = []) {
    value jdbc = Jdbc();

    jdbc.url = url;
    if (exists driver) {
        jdbc.driver = driver;
    }
    if (exists schema) {
        jdbc.schema = schema;
    }
    if (exists username) {
        jdbc.user = username;
    }
    if (exists password) {
        jdbc.password = password;
    }
    if (nonempty properties) {
        jdbc.properties =ArrayList(Arrays.asList(*properties.collect(
                    (prop) => if (is Property prop) then prop else property(prop.key, prop.item)
        )));
    }

    return jdbc;
}
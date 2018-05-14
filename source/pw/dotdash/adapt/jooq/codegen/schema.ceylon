import org.jooq.util.jaxb {
    Schema
}
import java.lang {
    JBoolean=Boolean
}

"Configuration of an input schema and its mappings."
shared Schema schema(
        "See also [[database.inputSchema]]"
        String inputSchema = "",
        "See also [[database.outputSchema]]"
        String? outputSchema = null,
        "See also [[database.outputSchemaToDefault]]"
        Boolean outputSchemaToDefault = false) {
    value schema = Schema();

    schema.inputSchema = inputSchema;
    if (exists outputSchema) {
        schema.outputSchema = outputSchema;
    }
    schema.setOutputSchemaToDefault(JBoolean(outputSchemaToDefault));

    return schema;
}
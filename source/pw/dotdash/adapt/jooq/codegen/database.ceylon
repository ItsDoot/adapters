import java.lang {
    JBoolean=Boolean
}
import java.util {
    Arrays,
    ArrayList
}

import org.jooq.util.jaxb {
    Database,
    RegexFlag,
    Property,
    Catalog,
    Schema,
    CustomType,
    EnumType,
    ForcedType
}

"Configuration of the database meta data source."
shared Database database(
        "The database dialect from jooq-meta.
         Available dialects are named `org.util.[database].[database]Database`."
        String? name = null,
        "The flags that will be applied to all regular expressions from this configuration by default."
        [RegexFlag*] regexFlags = [],
        "All elements that are generated from your schema."
        String includes = ".*",
        "All elements that are excluded from your schema."
        String excludes = "",
        "This flag indicates whether include / exclude patterns should also match columns within tables."
        Boolean includeExcludeColumns = false,
        "This flag indicates whether tables should be included in output produced by this database."
        Boolean includeTables = true,
        "This flag indicates whether routines should be included in output produced by this database."
        Boolean includeRoutines = true,
        "This flag indicates whether packages should be included in output produced by this database"
        Boolean includePackages = true,
        "This flag indicates whether udts should be included in output produced by this database."
        Boolean includeUDTs = true,
        "This flag indicates whether sequences should be included in output produced by this database."
        Boolean includeSequences = true,
        "This flag indicates whether indexes should be included in output produced by this database."
        Boolean includeIndexes = true,
        "This flag indicates whether primary keys should be included in output produced by this database."
        Boolean includePrimaryKeys = true,
        "This flag indicates whether unique keys should be included in output produced by this database."
        Boolean includeUniqueKeys = true,
        "This flag indicates whether foreign keys should be included in output produced by this database."
        Boolean includeForeignKeys = true,
        "All table and view columns that are used as 'version' fields for optimistic locking."
        String recordVersionFields = "",
        "All table and view columns that are used as 'timestamp' fields for optimistic locking."
        String recordTimestampFields = "",
        "A regular expression matching all columns that represent identities."
        String syntheticIdentities = "",
        "A regular expression matching all columns that participate in 'synthetic' primary keys,
         which should be placed on generated [[org.jooq::UpdatableRecord]]"
        String syntheticPrimaryKeys = "",
        "All (UNIQUE) key names that should be used instead of primary keys on generated [[org.jooq::UpdatableRecord]]."
        String overridePrimaryKeys = "",
        "Generate [[java.sql::Timestamp]] fields for DATE columns. This is particularly useful for Oracle databases."
        Boolean dateAsTimestamp = false,
        "Ignore procedure return values in Transact-SQL generated code."
        Boolean ignoreProcedureReturnValues = false,
        "Generate jOOU data types for your unsigned data types, which are not natively supported in Java."
        Boolean unsignedTypes = true,
        "The catalog that is used locally as a source for meta information."
        String inputCatalog = "",
        "The catalog that is used in generated source code."
        String? outputCatalog = null,
        "A flag to indicate that the outputCatalog should be the 'default' catalog,
         which generates catalog-less, unqualified tables, procedures, etc."
        Boolean outputCatalogToDefault = false,
        "The schema that is used locally as a source for meta information."
        String inputSchema = "",
        "The schema that is used in generated source code."
        String? outputSchema = null,
        "A flag to indicate that the outputSchema should be the 'default' schema,
         which generates schema-less, unqualified tables, procedures, etc."
        Boolean outputSchemaToDefault = false,
        "A custom version number that, if available, will be used to assess whether the
         [[inputSchema]] will need to be regenerated."
        String schemaVersionProvider = "",
        "A custom version number that, if available, will be used to assess whether the
         [[inputCatalog]] from a given catalog will need to be regenerated."
        String catalogVersionProvider = "",
        "A custom [[java.util::Comparator]] that can compare two [[org.jooq.util::Definition]] objects to determine their order."
        String orderProvider = "",
        "Whether table valued functions should be reported as tables."
        Boolean? tableValuedFunctions = null,
        [Property|<String->String>*] properties = [],
        [Catalog*] catalogs = [],
        [Schema*] schemata = [],
        [CustomType*] customTypes = [],
        [EnumType*] enumTypes = [],
        [ForcedType*] forcedTypes = []) {
    value database = Database();

    if (exists name) {
        database.name = name;
    }
    if (nonempty regexFlags) {
        database.withRegexFlags(ArrayList(Arrays.asList(*regexFlags)));
    }
    database.includes = includes;
    database.excludes = excludes;
    database.setIncludeExcludeColumns(JBoolean(includeExcludeColumns));
    database.setIncludeTables(JBoolean(includeTables));
    database.setIncludeRoutines(JBoolean(includeRoutines));
    database.setIncludePackages(JBoolean(includePackages));
    database.setIncludeUDTs(JBoolean(includeUDTs));
    database.setIncludeSequences(JBoolean(includeSequences));
    database.setIncludeIndexes(JBoolean(includeIndexes));
    database.setIncludePrimaryKeys(JBoolean(includePrimaryKeys));
    database.setIncludeUniqueKeys(JBoolean(includeUniqueKeys));
    database.setIncludeForeignKeys(JBoolean(includeForeignKeys));
    database.recordVersionFields = recordVersionFields;
    database.recordTimestampFields = recordTimestampFields;
    database.syntheticIdentities = syntheticIdentities;
    database.syntheticPrimaryKeys = syntheticPrimaryKeys;
    database.overridePrimaryKeys = overridePrimaryKeys;
    database.setDateAsTimestamp(JBoolean(dateAsTimestamp));
    database.setIgnoreProcedureReturnValues(JBoolean(ignoreProcedureReturnValues));
    database.setUnsignedTypes(JBoolean(unsignedTypes));
    database.inputCatalog = inputCatalog;
    if (exists outputCatalog) {
        database.outputCatalog = outputCatalog;
    }
    database.setOutputCatalogToDefault(JBoolean(outputCatalogToDefault));
    database.inputSchema = inputSchema;
    if (exists outputSchema) {
        database.outputSchema = outputSchema;
    }
    database.setOutputSchemaToDefault(JBoolean(outputSchemaToDefault));
    database.schemaVersionProvider = schemaVersionProvider;
    database.catalogVersionProvider = catalogVersionProvider;
    database.orderProvider = orderProvider;
    if (exists tableValuedFunctions) {
        database.setTableValuedFunctions(JBoolean(tableValuedFunctions));
    }
    database.properties =ArrayList(Arrays.asList(*properties.collect(
                (prop) => if (is Property prop) then prop else property(prop.key, prop.item)
    )));
    database.catalogs =ArrayList(Arrays.asList(*catalogs));
    database.schemata =ArrayList(Arrays.asList(*schemata));
    database.customTypes =ArrayList(Arrays.asList(*customTypes));
    database.enumTypes =ArrayList(Arrays.asList(*enumTypes));
    database.forcedTypes =ArrayList(Arrays.asList(*forcedTypes));

    return database;
}
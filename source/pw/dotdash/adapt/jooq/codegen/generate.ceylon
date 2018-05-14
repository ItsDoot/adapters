import java.lang {
    JBoolean=Boolean
}

import org.jooq.util.jaxb {
    Generate
}

"Options strictly related to generated code."
shared Generate generate(
        "Generate index information."
        Boolean indexes = true,
        "Primary key / foreign key relations should be generated and used.
         This is a prerequisite for various advanced features."
        Boolean relations = true,
        "Generate deprecated code for backwards compatibility."
        Boolean deprecated = true,
        "Generate deprecation annotations on references to unknown data types.
         This helps identifying columns, attributes, and parameters, which may not be usable through
         jOOQ API, without adding custom data type bindings to them."
        Boolean deprecationOnUnknownTypes = true,
        deprecated Boolean instanceFields = true,
        "Generate the [[javax.annotation::Generated]] annotation to indicate
         jOOQ version used for source code"
        Boolean generatedAnnotation = true,
        "Generate Routine classes."
        Boolean routines = true,
        "Generate Sequence classes."
        Boolean sequences = true,
        "Generate UDT classes."
        Boolean udts = true,
        "Generate Queue classes."
        Boolean queues = true,
        "Generate database Link classes."
        Boolean links = true,
        "Generate Table classes."
        Boolean tables = true,
        "Generate TableRecord classes."
        Boolean records = true,
        "Generate TableRecord classes that implement Record[N] super types."
        Boolean recordsImplementingRecordN = true,
        "Generate POJOs."
        Boolean pojos = false,
        "Generate basic equals() and hashCode() methods in POJOs."
        Boolean pojosEqualsAndHashCode = false,
        "Generate basic toString() methods in POJOs."
        Boolean pojosToString = true,
        "Generate immutable POJOs."
        Boolean immutablePojos = false,
        "Generated interfaces to be implemented by records and/or POJOs."
        Boolean interfaces = false,
        "Generate immutable interfaces."
        Boolean immutableInterfaces = false,
        "Generate DAOs."
        Boolean daos = false,
        "Annotate POJOs and Records with JPA annotations."
        Boolean jpaAnnotations = false,
        "Annotate POJOs and Records with JSR-303 validation annotations."
        Boolean validationAnnotations = false,
        "Annotate DAOs with useful spring annotations such as @Repository or @Autowired."
        Boolean springAnnotations = false,
        "Turn off generation of all global object references."
        Boolean globalObjectReferences = true,
        "Turn off generation of global catalog references."
        Boolean globalCatalogReferences = true,
        "Turn off generation of global schema references."
        Boolean globalSchemaReferences = true,
        "Turn off generation of global table references."
        Boolean globalTableReferences = true,
        "Turn off generation of global sequence references."
        Boolean globalSequenceReferences = true,
        "Turn off generation of global UDT references."
        Boolean globalUDTReferences = true,
        "Turn off generation of global routine references."
        Boolean globalRoutineReferences = true,
        "Turn off generation of global queue references."
        Boolean globalQueueReferences = true,
        "Turn off generation of global database link references."
        Boolean globalLinkReferences = true,
        "Generate fluent setters in records, POJOs, interfaces."
        Boolean fluentSetters = false,
        "Modify DefaultGeneratorStrategy behaviour to generate getters and setters in JavaBeans style in records, POJOs, interfaces."
        Boolean javaBeansGettersAndSetters = false,
        "Generate varargs setters for array types for convenience."
        Boolean varargSetters = true,
        "A regular expression matching all the types in generated code that should be fully qualified."
        String fullyQualifiedTypes = "",
        "Whether empty catalogs (e.g. empty because of <excludes/> configurations) should still be generated."
        Boolean emptyCatalogs = false,
        "Whether empty schemas (e.g. empty because of <excludes/> configurations) should still be generated."
        Boolean emptySchemas = false,
        "A flag indicating whether Java 8's java.time types should be used by the
         source code generator, rather than JDBC's java.sql types."
        Boolean javaTimeTypes = false) {
    value generate = Generate();

    generate.setIndexes(JBoolean(indexes));
    generate.setRelations(JBoolean(relations));
    generate.setDeprecated(JBoolean(deprecated));
    generate.setDeprecationOnUnknownTypes(JBoolean(deprecationOnUnknownTypes));
    generate.setInstanceFields(JBoolean(instanceFields));
    generate.setGeneratedAnnotation(JBoolean(generatedAnnotation));
    generate.setRoutines(JBoolean(routines));
    generate.setSequences(JBoolean(sequences));
    generate.setUdts(JBoolean(udts));
    generate.setQueues(JBoolean(queues));
    generate.setLinks(JBoolean(links));
    generate.setTables(JBoolean(tables));
    generate.setRecords(JBoolean(records));
    generate.setRecordsImplementingRecordN(JBoolean(recordsImplementingRecordN));
    generate.setPojos(JBoolean(pojos));
    generate.setPojosEqualsAndHashCode(JBoolean(pojosEqualsAndHashCode));
    generate.setPojosToString(JBoolean(pojosToString));
    generate.setImmutablePojos(JBoolean(immutablePojos));
    generate.setInterfaces(JBoolean(interfaces));
    generate.setImmutableInterfaces(JBoolean(immutableInterfaces));
    generate.setDaos(JBoolean(daos));
    generate.setJpaAnnotations(JBoolean(jpaAnnotations));
    generate.setValidationAnnotations(JBoolean(validationAnnotations));
    generate.setSpringAnnotations(JBoolean(springAnnotations));
    generate.setGlobalObjectReferences(JBoolean(globalObjectReferences));
    generate.setGlobalCatalogReferences(JBoolean(globalCatalogReferences));
    generate.setGlobalSchemaReferences(JBoolean(globalSchemaReferences));
    generate.setGlobalTableReferences(JBoolean(globalTableReferences));
    generate.setGlobalSequenceReferences(JBoolean(globalSequenceReferences));
    generate.setGlobalUDTReferences(JBoolean(globalUDTReferences));
    generate.setGlobalRoutineReferences(JBoolean(globalRoutineReferences));
    generate.setGlobalQueueReferences(JBoolean(globalQueueReferences));
    generate.setGlobalLinkReferences(JBoolean(globalLinkReferences));
    generate.setFluentSetters(JBoolean(fluentSetters));
    generate.setJavaBeansGettersAndSetters(JBoolean(javaBeansGettersAndSetters));
    generate.setVarargSetters(JBoolean(varargSetters));
    generate.fullyQualifiedTypes = fullyQualifiedTypes;
    generate.setEmptyCatalogs(JBoolean(emptyCatalogs));
    generate.setEmptySchemas(JBoolean(emptySchemas));
    generate.setJavaTimeTypes(JBoolean(javaTimeTypes));

    return generate;
}
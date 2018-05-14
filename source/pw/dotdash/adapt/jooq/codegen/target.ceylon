import org.jooq.util.jaxb {
    Target
}

"Options to define where the generated code should be located."
shared Target target(
        "The destination package of your generated classes (within the destination directory)"
        String packageName = "org.jooq.generated",
        "The destination directory of your generated classes"
        String directory = "target/generated-sources/jooq",
        "The file encoding to be used with all output files."
        String encoding = "UTF-8") {
    value target = Target();

    target.packageName = packageName;
    target.directory = directory;
    target.encoding = encoding;

    return target;
}
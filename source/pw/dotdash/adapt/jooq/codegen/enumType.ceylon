import org.jooq.util.jaxb {
    EnumType
}

"Java class for EnumType complex type."
shared EnumType enumType(String name, String literals) {
    value enumType = EnumType();

    enumType.name = name;
    enumType.literals = literals;

    return enumType;
}
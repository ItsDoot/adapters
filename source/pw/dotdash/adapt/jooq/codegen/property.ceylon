import org.jooq.util.jaxb {
    Property
}

"Custom properties that are useful for Database implementations."
shared Property property(String key, String item) {
    value property = Property();

    property.key = key;
    property.\ivalue = item;

    return property;
}
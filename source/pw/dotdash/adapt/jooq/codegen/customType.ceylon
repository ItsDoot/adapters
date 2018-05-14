import java.lang {
    JBoolean=Boolean
}

import org.jooq.util.jaxb {
    CustomType
}

"Use [[forcedType]] only"
deprecated ("Use [[forcedType]] only")
shared CustomType customType(
        deprecated ("Use [[forcedType]] only")
        String name,
        deprecated ("Use [[forcedType]] only")
        String? type = null,
        deprecated ("Use [[forcedType]] only")
        String? converter = null,
        deprecated ("Use [[forcedType]] only")
        Boolean? enumConverter = null,
        deprecated ("Use [[forcedType]] only")
        String? binding = null) {
    value customType = CustomType();

    customType.name = name;
    if (exists type) {
        customType.type = type;
    }
    if (exists converter) {
        customType.converter = converter;
    }
    if (exists enumConverter) {
        customType.setEnumConverter(JBoolean(enumConverter));
    }
    if (exists binding) {
        customType.binding = binding;
    }

    return customType;
}
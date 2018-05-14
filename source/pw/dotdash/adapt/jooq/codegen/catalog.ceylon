import java.lang {
    JBoolean=Boolean
}
import java.util {
    Arrays,
    ArrayList
}

import org.jooq.util.jaxb {
    Catalog,
    Schema
}

"Configuration of an input catalog and its mappings."
shared Catalog catalog(
        "See also [[database.inputCatalog]]"
        String inputCatalog = "",
        "See also [[database.outputCatalog]]"
        String? outputCatalog = null,
        "See also [[database.outputCatalogToDefault]]"
        Boolean outputCatalogToDefault = false,
        [Schema*] schemata = []) {
    value catalog = Catalog();

    catalog.inputCatalog = inputCatalog;
    if (exists outputCatalog) {
        catalog.outputCatalog = outputCatalog;
    }
    catalog.setOutputCatalogToDefault(JBoolean(outputCatalogToDefault));
    catalog.schemata =ArrayList(Arrays.asList(*schemata));

    return catalog;
}
import org.jooq.tools {
    StringUtils
}
import org.jooq.util {
    DefaultGeneratorStrategy,
    Definition
}

shared class CeylonicGeneratorStrategy() extends DefaultGeneratorStrategy() {

    shared actual String getJavaIdentifier(Definition definition) {
        return StringUtils.toCamelCaseLC(definition.outputName);
    }
}
"Ceylonic adapters for jooq-codegen classes."
native ("jvm")
module pw.dotdash.adapt.jooq.codegen "3.10.7" {
    value jooqVersion = "3.10.7";
    shared import java.base "8";
    shared import java.jdbc "8";

    shared import ceylon.interop.java "1.3.3";
    shared import ceylon.time "1.3.3";

    shared import maven:"org.jooq:jooq" jooqVersion;
    shared import maven:"org.jooq:jooq-meta" jooqVersion;
    shared import maven:"org.jooq:jooq-codegen" jooqVersion;
}
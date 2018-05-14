import ceylon.time {
    DateTime,
    Instant
}

import java.lang {
    JString=String,
    JInteger=Integer,
    JFloat=Float,
    JBoolean=Boolean,
    Class,
    Types
}
import java.sql {
    Timestamp
}

import org.jooq {
    Converter
}

shared class StringConverter() satisfies Converter<JString,String> {

    shared actual String? from(JString? str) => str?.string;

    shared actual Class<JString> fromType() => Types.classForType<JString>();

    shared actual JString? to(String? str) => if (exists str) then Types.nativeString(str) else null;

    shared actual Class<String> toType() => Types.classForType<String>();
}

shared class IntegerConverter() satisfies Converter<JInteger,Integer> {

    shared actual Integer? from(JInteger? int) => int?.intValue();

    shared actual Class<JInteger> fromType() => Types.classForType<JInteger>();

    shared actual JInteger? to(Integer? int) => if (exists int) then JInteger(int) else null;

    shared actual Class<Integer> toType() => Types.classForType<Integer>();
}

shared class FloatConverter() satisfies Converter<JFloat,Float> {

    shared actual Float? from(JFloat? float) => float?.floatValue();

    shared actual Class<JFloat> fromType() => Types.classForType<JFloat>();

    shared actual JFloat? to(Float? float) => if (exists float) then JFloat(float) else null;

    shared actual Class<Float> toType() => Types.classForType<Float>();
}

shared class BooleanConverter() satisfies Converter<JBoolean,Boolean> {

    shared actual Boolean? from(JBoolean? bool) => bool?.booleanValue();

    shared actual Class<JBoolean> fromType() => Types.classForType<JBoolean>();

    shared actual JBoolean? to(Boolean? bool) => if (exists bool) then JBoolean(bool) else null;

    shared actual Class<Boolean> toType() => Types.classForType<Boolean>();
}

shared class DateTimeConverter() satisfies Converter<Timestamp,DateTime> {

    shared actual DateTime? from(Timestamp? ts) => if (exists ts) then Instant(ts.time).dateTime() else null;

    shared actual Class<Timestamp> fromType() => Types.classForType<Timestamp>();

    shared actual Timestamp? to(DateTime? dt) => if (exists dt) then Timestamp(dt.instant().millisecondsOfEpoch) else null;

    shared actual Class<DateTime> toType() => Types.classForType<DateTime>();
}
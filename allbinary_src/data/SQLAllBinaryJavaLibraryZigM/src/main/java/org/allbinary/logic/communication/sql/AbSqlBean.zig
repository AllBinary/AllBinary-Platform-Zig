//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// 
// Created By: Travis Berthelot
//  
// Generated Code Do Not Modify
// package org.allbinary.logic.communication.sql

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const ResultSet = @import("java/sql/ResultSet.zig").ResultSet;
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
const DbConnectionInfo = @import("org/allbinary/business/init/db/DbConnectionInfo.zig").DbConnectionInfo;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbSqlRow = @import("org/allbinary/logic/communication/sql/AbSqlRow.zig").AbSqlRow;

pub const AbSqlBean = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.sql.AbSqlBean";
    base: AbSqlRow = undefined,
    logUtil: ?*LogUtil = null,
    METHOD_GET_FIELD: ?*String = null,
    METHOD_IS_SUBSET_OF_ENTRY: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.METHOD_GET_FIELD = String.literal("getField");
        this.METHOD_IS_SUBSET_OF_ENTRY = String.literal("isSubsetOfEntry");
    }
    

    pub fn create1(databaseConnectionInfoInterface: ?*DbConnectionInfo) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbSqlRow, "create1", .{ databaseConnectionInfoInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getField3(self: *Self, key: ?*String, value: ?*String, requestedField: ?*String) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SELECT });
        _ = Inheritance.call(stringBuffer.?, "append", .{ requestedField });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.FROM });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getTableName").getTableName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.WHERE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ key });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.EQUAL_QUOTE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ value });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE });
        const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        { // try
            var field: ?*String = Inheritance.upcast(?*String, Inheritance.fieldPointer(self, "stringUtil").*.?.EMPTY_STRING);
            const rset: ?*ResultSet = Inheritance.upcast(?*ResultSet, Inheritance.call(self, "executeSQLStatement", .{ sqlStatement }));
            while (rset.?.next()) {
                field = Inheritance.upcast(@TypeOf(field), Inheritance.call(rset.?, "getString", .{ requestedField }));
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SQL_STATEMENT_LABEL });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ sqlStatement });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.FIELD_VALUE });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ field });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.METHOD_GET_FIELD });
                }
                return field;
            }
            return null;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").*, sqlStatement), self, self.METHOD_GET_FIELD, e });
//             }
//             return Inheritance.upcast(?*String, String.plus(Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").*, sqlStatement));
    }
    

    pub fn getField(self: *Self, keysAndValues: ?*HashMap, requestedField: ?*String) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SELECT });
        _ = Inheritance.call(stringBuffer.?, "append", .{ requestedField });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.FROM });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getTableName").getTableName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.WHERE });
        { // try
            var field: ?*String = Inheritance.upcast(?*String, Inheritance.fieldPointer(self, "stringUtil").*.?.EMPTY_STRING);
            const set: ?*Set = Inheritance.upcast(?*Set, keysAndValues.?.keySet());
            const keyArray: []?Object = set.?.toArray();
            const size: i32 = @as(i32, @intCast(keyArray.len));
            var key: ?*String = null;
            var value: ?*String = null;
            {
                var i: i32 = 0;
                while (i < size) : (i += 1) {
                key = Inheritance.cast(?*String, keyArray[@intCast(i)]);
                value = Inheritance.callStatic(String, "create1", .{ Inheritance.cast(?*String, Inheritance.call(keysAndValues.?, "get", .{ key })) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ key });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.EQUAL_QUOTE });
                _ = Inheritance.call(stringBuffer.?, "append", .{ value });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE });
                if (i < size - 1) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.AND });
                }
                }
            }
            const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            const rset: ?*ResultSet = Inheritance.upcast(?*ResultSet, Inheritance.call(self, "executeSQLStatement", .{ sqlStatement }));
            while (rset.?.next()) {
                field = Inheritance.upcast(@TypeOf(field), Inheritance.call(rset.?, "getString", .{ requestedField }));
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SQL_STATEMENT_LABEL });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ sqlStatement });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.FIELD_VALUE });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ field });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.METHOD_GET_FIELD });
                }
                return field;
            }
            return null;
        }
        // catch (Exception e):
//             const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").*, sqlStatement), self, self.METHOD_GET_FIELD, e });
//             }
//             return Inheritance.upcast(?*String, String.plus(Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").*, sqlStatement));
    }
    

    pub fn isSubsetOfEntry(self: *Self, key: ?*String, value: ?*String, columnsAndValues: ?*HashMap) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SELECT });
        { // try
            const keyArray: []?Object = Inheritance.receiverOf(columnsAndValues.?.keySet().?, "toArray").toArray();
            const size: i32 = @as(i32, @intCast(keyArray.len));
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "commonSeps").*.?.SPACE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ key });
            {
                var i: i32 = 0;
                while (i < size) : (i += 1) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "commonSeps").*.?.SPACE });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(keyArray[@intCast(i)])) });
                }
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.FROM });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getTableName").getTableName() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.WHERE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ key });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.EQUAL_QUOTE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ value });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE });
            const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            const rset: ?*ResultSet = Inheritance.upcast(?*ResultSet, Inheritance.call(self, "executeSQLStatement", .{ sqlStatement }));
            var columnName: ?*String = null;
            var field: ?*String = null;
            while (rset.?.next()) {
                const keyArray2: []?Object = Inheritance.receiverOf(columnsAndValues.?.keySet().?, "toArray").toArray();
                const size2: i32 = @as(i32, @intCast(keyArray2.len));
                {
                    var i: i32 = 0;
                    while (i < size2) : (i += 1) {
                    columnName = Inheritance.upcast(@TypeOf(columnName), Object.toString(Object.of(keyArray2[@intCast(i)])));
                    field = Inheritance.upcast(@TypeOf(field), Object.toString(Object.of(Inheritance.call(rset.?, "getObject", .{ columnName }))));
                    if (Inheritance.call(field.?, "compareTo", .{ Inheritance.cast(?*String, Inheritance.call(columnsAndValues.?, "get", .{ columnName })) }) != 0) {
                        return Inheritance.upcast(?*String, org.allbinary.?.globals.?.GLOBALS2.?.NOTASUBSET);
                    }
                    }
                }
            }
            if (rset.?.getRow() != 1) {
                return Inheritance.upcast(?*String, org.allbinary.?.globals.?.GLOBALS2.?.NOTASUBSET);
            } else {
                return Inheritance.upcast(?*String, org.allbinary.?.globals.?.GLOBALS2.?.ISASUBSET);
            }
        }
        // catch (Exception e):
//             const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").*, sqlStatement), self, self.METHOD_IS_SUBSET_OF_ENTRY, e });
//             }
//             return Inheritance.upcast(?*String, String.plus(Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").*, sqlStatement));
    }
};


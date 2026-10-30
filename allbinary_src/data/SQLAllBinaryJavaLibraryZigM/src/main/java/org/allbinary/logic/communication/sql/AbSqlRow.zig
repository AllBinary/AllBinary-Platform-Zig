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
// const ResultSetMetaData = @import("java/sql/ResultSetMetaData.zig").ResultSetMetaData;
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const DbConnectionInfo = @import("org/allbinary/business/init/db/DbConnectionInfo.zig").DbConnectionInfo;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const Replace = @import("org/allbinary/logic/string/regex/replace/Replace.zig").Replace;
const AbSqlColumn = @import("org/allbinary/logic/communication/sql/AbSqlColumn.zig").AbSqlColumn;

pub const AbSqlRow = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.sql.AbSqlRow";
    base: AbSqlColumn = undefined,
    logUtil: ?*LogUtil = null,
    EQUAL_QUOTE: ?*String = null,
    ESCAPE_QUOTES: ?*String = null,
    GET_ROW: ?*String = null,
    METHOD_GET_ROW: ?*String = null,
    METHOD_GET_ROWS: ?*String = null,
    METHOD_GET_ALL_ROWS: ?*String = null,
    METHOD_UPDATE_WHERE: ?*String = null,
    METHOD_GET_ROWS_WHERE_BETWEEN: ?*String = null,
    METHOD_DELETE_WHERE: ?*String = null,
    ROW_VALUE_LABEL: ?*String = null,
    ROW_VALUES_LABEL: ?*String = null,
    NO_RESULTS_IN_RESULT_SET: ?*String = null,
    COLUMN_NAME_LABEL: ?*String = null,
    INSERT_END: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.EQUAL_QUOTE = String.literal("=\"");
        this.ESCAPE_QUOTES = String.literal("\\\"");
        this.GET_ROW = String.literal("Row Value: ");
        this.METHOD_GET_ROW = String.literal("getRow()");
        this.METHOD_GET_ROWS = String.literal("getRows()");
        this.METHOD_GET_ALL_ROWS = String.literal("getAllRows()");
        this.METHOD_UPDATE_WHERE = String.literal("updateWhere()");
        this.METHOD_GET_ROWS_WHERE_BETWEEN = String.literal("getRowsWhereBetween()");
        this.METHOD_DELETE_WHERE = String.literal("deleteWhere()");
        this.ROW_VALUE_LABEL = String.literal("Row Value: ");
        this.ROW_VALUES_LABEL = String.literal("Row Values: ");
        this.NO_RESULTS_IN_RESULT_SET = String.literal("No Results in ResultSet");
        this.COLUMN_NAME_LABEL = String.literal("columnName: ");
        this.INSERT_END = String.literal("')");
    }
    

    pub fn create1(databaseConnectionInfoInterface: ?*DbConnectionInfo) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbSqlColumn, "create1", .{ databaseConnectionInfoInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getValue(self: *Self, value: ?*String) ?*String {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ value })) {
            return Inheritance.upcast(?*String, Inheritance.fieldPointer(self, "stringUtil").*.?.EMPTY_STRING);
        } else {
            return value;
        }
    }
    

    pub fn updateWhere3(self: *Self, key: ?*String, value: ?*String, updatedKeyValuePairs: ?*HashMap) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.UPDATE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getTableName").getTableName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SET });
        { // try
            const keyArray: []?Object = Inheritance.receiverOf(updatedKeyValuePairs.?.keySet().?, "toArray").toArray();
            const size: i32 = @as(i32, @intCast(keyArray.len));
            {
                var i: i32 = 0;
                while (i < size) : (i += 1) {
                const columnName: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(keyArray[@intCast(i)])));
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "commonSeps").*.?.SPACE });
                _ = Inheritance.call(stringBuffer.?, "append", .{ columnName });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.EQUAL_QUOTE });
                var columnValue: ?*String = Inheritance.cast(?*String, Inheritance.call(updatedKeyValuePairs.?, "get", .{ columnName }));
                if (columnValue == null) {
                    columnValue = Inheritance.upcast(@TypeOf(columnValue), Inheritance.fieldPointer(self, "stringUtil").*.?.EMPTY_STRING);
                } else {
                    columnValue = Inheritance.upcast(@TypeOf(columnValue), Inheritance.call(Inheritance.callStatic(Replace, "create2", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE, self.ESCAPE_QUOTES }), "all", .{ columnValue }));
                }
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self, "getValue", .{ columnValue }) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE });
                if (i < size - 1) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "commonSeps").*.?.COMMA });
                }
                }
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.WHERE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ key });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.EQUAL_QUOTE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self, "getValue", .{ value }) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE });
            const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            _ = Inheritance.call(self, "executeSQLStatement", .{ sqlStatement });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(self, "SUCCESS_SQL_STATEMENT").*, sqlStatement), self, self.METHOD_UPDATE_WHERE });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").* + stringBuffer, self, self.METHOD_UPDATE_WHERE, e });
//             }
    }
    

    // throws Exception
    pub fn updateWhere(self: *Self, whereKeyValuePairs: ?*HashMap, updatedKeyValuePairs: ?*HashMap) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.UPDATE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getTableName").getTableName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SET });
        { // try
            const keyArray: []?Object = Inheritance.receiverOf(updatedKeyValuePairs.?.keySet().?, "toArray").toArray();
            const size: i32 = @as(i32, @intCast(keyArray.len));
            {
                var i: i32 = 0;
                while (i < size) : (i += 1) {
                const columnName: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(keyArray[@intCast(i)])));
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "commonSeps").*.?.SPACE });
                _ = Inheritance.call(stringBuffer.?, "append", .{ columnName });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.EQUAL_QUOTE });
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.COLUMN_NAME_LABEL, columnName), self, self.METHOD_UPDATE_WHERE });
                }
                var columnValue: ?*String = Inheritance.cast(?*String, Inheritance.call(updatedKeyValuePairs.?, "get", .{ columnName }));
                if (columnValue == null) {
                    columnValue = Inheritance.upcast(@TypeOf(columnValue), Inheritance.fieldPointer(self, "stringUtil").*.?.EMPTY_STRING);
                } else {
                    columnValue = Inheritance.upcast(@TypeOf(columnValue), Inheritance.call(Inheritance.callStatic(Replace, "create2", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE, self.ESCAPE_QUOTES }), "all", .{ columnValue }));
                }
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self, "getValue", .{ columnValue }) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE });
                if (i < size - 1) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "commonSeps").*.?.COMMA });
                }
                }
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.WHERE });
            const set: ?*Set = Inheritance.upcast(?*Set, whereKeyValuePairs.?.keySet());
            const keyArray2: []?Object = set.?.toArray();
            const size2: i32 = @as(i32, @intCast(keyArray2.len));
            {
                var i: i32 = 0;
                while (i < size2) : (i += 1) {
                const key: ?*String = Inheritance.cast(?*String, keyArray2[@intCast(i)]);
                const value: ?*String = Inheritance.cast(?*String, Inheritance.call(whereKeyValuePairs.?, "get", .{ key }));
                {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ key });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.EQUAL_QUOTE });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self, "getValue", .{ value }) });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE });
                    if (i < size2 - 1) {
                        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.AND });
                    }
                }
                }
            }
            const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            _ = Inheritance.call(self, "executeSQLStatement", .{ sqlStatement });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(self, "SUCCESS_SQL_STATEMENT").*, sqlStatement), self, self.METHOD_UPDATE_WHERE });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").* + stringBuffer, self, self.METHOD_UPDATE_WHERE, e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    pub fn deleteWhere2(self: *Self, key: ?*String, value: ?*String) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.DELETE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.FROM });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getTableName").getTableName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.WHERE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ key });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.EQUAL_QUOTE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ value });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE });
        { // try
            const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            _ = Inheritance.call(self, "executeSQLStatement", .{ sqlStatement });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(self, "SUCCESS_SQL_STATEMENT").*, sqlStatement), self, self.METHOD_DELETE_WHERE });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").*, Object.toString(Object.of(stringBuffer))), self, self.METHOD_DELETE_WHERE, e });
//             }
    }
    

    pub fn deleteWhere(self: *Self, keysAndValues: ?*HashMap) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.DELETE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.FROM });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getTableName").getTableName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.WHERE });
        { // try
            const set: ?*Set = Inheritance.upcast(?*Set, keysAndValues.?.keySet());
            const keyArray: []?Object = set.?.toArray();
            const size: i32 = @as(i32, @intCast(keyArray.len));
            {
                var i: i32 = 0;
                while (i < size) : (i += 1) {
                const key: ?*String = Inheritance.cast(?*String, keyArray[@intCast(i)]);
                const value: ?*String = Inheritance.callStatic(String, "create1", .{ Inheritance.cast(?*String, Inheritance.call(keysAndValues.?, "get", .{ key })) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ key });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.EQUAL_QUOTE });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self, "getValue", .{ value }) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE });
                if (i < size - 1) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.AND });
                }
                }
            }
            const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            _ = Inheritance.call(self, "executeSQLStatement", .{ sqlStatement });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(self, "SUCCESS_SQL_STATEMENT").*, sqlStatement), self, self.METHOD_DELETE_WHERE });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").*, Object.toString(Object.of(stringBuffer))), self, self.METHOD_DELETE_WHERE, e });
//             }
    }
    

    pub fn insert(self: *Self, values: ?*BasicArrayList) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.INSERT_INTO });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getTableName").getTableName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.VALUES });
        { // try
            {
                var i: i32 = 0;
                while (i < values.?.size() - 1) : (i += 1) {
                var value: ?*String = Inheritance.upcast(?*String, Inheritance.call(self, "getValue", .{ Inheritance.cast(?*String, Inheritance.call(values.?, "get", .{ i })) }));
                value = Inheritance.upcast(@TypeOf(value), Inheritance.call(Inheritance.callStatic(Replace, "create2", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.ESCAPE, Inheritance.fieldPointer(self, "sqlStrings").*.?.DOUBLE_ESCAPE }), "all", .{ value }));
                _ = Inheritance.call(stringBuffer.?, "append", .{ value });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SINGLE_QUOTE_COMMA_SEP });
                }
            }
            var value: ?*String = Inheritance.upcast(?*String, Inheritance.call(self, "getValue", .{ Inheritance.cast(?*String, Inheritance.call(values.?, "get", .{ values.?.size() - 1 })) }));
            value = Inheritance.upcast(@TypeOf(value), Inheritance.call(Inheritance.callStatic(Replace, "create2", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.ESCAPE, Inheritance.fieldPointer(self, "sqlStrings").*.?.DOUBLE_ESCAPE }), "all", .{ value }));
            _ = Inheritance.call(stringBuffer.?, "append", .{ value });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.INSERT_END });
            const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            _ = Inheritance.call(self, "executeSQLStatement", .{ sqlStatement });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(self, "SUCCESS_SQL_STATEMENT").*, sqlStatement), self, Inheritance.fieldPointer(self, "INSERT").* });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").*, Object.toString(Object.of(stringBuffer))), self, INSERT, e });
//             }
    }
    

    pub fn getRow(self: *Self, keysAndValues: ?*HashMap) ?*HashMap {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SELECT_ALL_FROM });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getTableName").getTableName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.WHERE });
        { // try
            var result: ?*HashMap = null;
            const set: ?*Set = Inheritance.upcast(?*Set, keysAndValues.?.keySet());
            const keyArray: []?Object = set.?.toArray();
            const size: i32 = @as(i32, @intCast(keyArray.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const key: ?*String = Inheritance.cast(?*String, keyArray[@intCast(index)]);
                const value: ?*String = Inheritance.callStatic(String, "create1", .{ Inheritance.cast(?*String, Inheritance.call(keysAndValues.?, "get", .{ key })) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ key });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.EQUAL_QUOTE });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self, "getValue", .{ value }) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE });
                if (index < size - 1) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.AND });
                }
                }
            }
            const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(self, "sqlStrings").*.?.SQL_STATEMENT_LABEL, sqlStatement), self, self.METHOD_GET_ROW });
            }
            const rset: ?*ResultSet = Inheritance.upcast(?*ResultSet, Inheritance.call(self, "executeSQLStatement", .{ sqlStatement }));
            const resultSetMetaData: ?*ResultSetMetaData = Inheritance.upcast(?*ResultSetMetaData, rset.?.getMetaData());
            while (rset.?.next()) {
                result = Inheritance.upcast(@TypeOf(result), Inheritance.receiverOf(Inheritance.fieldPointer(self, "stdUtil").*.?, "createHashMap").createHashMap());
                const columnCount: i32 = resultSetMetaData.?.getColumnCount();
                {
                    var index: i32 = 1;
                    while (index <= columnCount) : (index += 1) {
                    const columnName: ?*String = Inheritance.upcast(?*String, Inheritance.call(resultSetMetaData.?, "getColumnName", .{ index }));
                    const field: ?*String = Inheritance.upcast(?*String, Inheritance.call(rset.?, "getString", .{ columnName }));
                    _ = Inheritance.call(result.?, "put", .{ columnName, field });
                    }
                }
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.ROW_VALUE_LABEL, Object.toString(Object.of(result))), self, self.METHOD_GET_ROW });
                }
                return result;
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ self.NO_RESULTS_IN_RESULT_SET, self, self.METHOD_GET_ROW });
            }
            return null;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").* + stringBuffer, self, self.METHOD_GET_ROW, e });
//             }
//             return null;
    }
    

    pub fn getRows(self: *Self, keysAndValues: ?*HashMap) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getRows", .{ keysAndValues, StringUtil.getInstance().?.EMPTY_STRING }));
    }
    

    pub fn getRows2(self: *Self, keysAndValues: ?*HashMap, more: ?*String) ?*BasicArrayList {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SELECT_ALL_FROM });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getTableName").getTableName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.WHERE });
        { // try
            const rows: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            const set: ?*Set = Inheritance.upcast(?*Set, keysAndValues.?.keySet());
            const keyArray: []?Object = set.?.toArray();
            const size: i32 = @as(i32, @intCast(keyArray.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const key: ?*String = Inheritance.cast(?*String, keyArray[@intCast(index)]);
                const value: ?*String = Inheritance.callStatic(String, "create1", .{ Inheritance.cast(?*String, Inheritance.call(keysAndValues.?, "get", .{ key })) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ key });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.EQUAL_QUOTE });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self, "getValue", .{ value }) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE });
                if (index < size - 1) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.AND });
                }
                }
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SQL_STATEMENT_LABEL + stringBuffer, self, self.METHOD_GET_ROWS });
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ more });
            const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            const rset: ?*ResultSet = Inheritance.upcast(?*ResultSet, Inheritance.call(self, "executeSQLStatement", .{ sqlStatement }));
            const resultSetMetaData: ?*ResultSetMetaData = Inheritance.upcast(?*ResultSetMetaData, rset.?.getMetaData());
            while (rset.?.next()) {
                const result: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(Inheritance.fieldPointer(self, "stdUtil").*.?, "createHashMap").createHashMap());
                const columnCount: i32 = resultSetMetaData.?.getColumnCount();
                {
                    var index: i32 = 1;
                    while (index <= columnCount) : (index += 1) {
                    const columnName: ?*String = Inheritance.upcast(?*String, Inheritance.call(resultSetMetaData.?, "getColumnName", .{ index }));
                    const field: ?*String = Inheritance.upcast(?*String, Inheritance.call(rset.?, "getString", .{ columnName }));
                    _ = Inheritance.call(result.?, "put", .{ columnName, field });
                    }
                }
                const resultAsString: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(result)));
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.GET_ROW, resultAsString), self, self.METHOD_GET_ROWS });
                }
                _ = Inheritance.call(rows.?, "add", .{ result });
            }
            return rows;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").* + stringBuffer, self, self.METHOD_GET_ROWS, e });
//             }
//             return null;
    }
    

    pub fn getAllRows(self: *Self) ?*BasicArrayList {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SELECT_ALL_FROM });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getTableName").getTableName() });
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SQL_STATEMENT_LABEL + stringBuffer, self, self.METHOD_GET_ALL_ROWS });
            }
            const rows: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            const rset: ?*ResultSet = Inheritance.upcast(?*ResultSet, Inheritance.call(self, "executeSQLStatement", .{ sqlStatement }));
            const resultSetMetaData: ?*ResultSetMetaData = Inheritance.upcast(?*ResultSetMetaData, rset.?.getMetaData());
            while (rset.?.next()) {
                const result: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(Inheritance.fieldPointer(self, "stdUtil").*.?, "createHashMap").createHashMap());
                const columnCount: i32 = resultSetMetaData.?.getColumnCount();
                {
                    var index: i32 = 1;
                    while (index <= columnCount) : (index += 1) {
                    const columnName: ?*String = Inheritance.upcast(?*String, Inheritance.call(resultSetMetaData.?, "getColumnName", .{ index }));
                    const field: ?*String = Inheritance.upcast(?*String, Inheritance.call(rset.?, "getString", .{ columnName }));
                    _ = Inheritance.call(result.?, "put", .{ columnName, field });
                    }
                }
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.ROW_VALUES_LABEL, Object.toString(Object.of(result))), self, self.METHOD_GET_ALL_ROWS });
                }
                _ = Inheritance.call(rows.?, "add", .{ result });
            }
            return rows;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").* + stringBuffer, self, self.METHOD_GET_ALL_ROWS, e });
//             }
//             return null;
    }
    

    pub fn getRowsWhereBetween4(self: *Self, whereKeyValuePairs: ?*HashMap, betweenColumn: ?*String, smallest: ?*String, largest: ?*String) ?*BasicArrayList {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SELECT_ALL_FROM });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getTableName").getTableName() });
        { // try
            const rows: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.WHERE });
            const set: ?*Set = Inheritance.upcast(?*Set, whereKeyValuePairs.?.keySet());
            var key: ?*String = null;
            var value: ?*String = null;
            const keyArray: []?Object = set.?.toArray();
            const size: i32 = @as(i32, @intCast(keyArray.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                key = Inheritance.cast(?*String, keyArray[@intCast(index)]);
                value = Inheritance.cast(?*String, Inheritance.call(whereKeyValuePairs.?, "get", .{ key }));
                _ = Inheritance.call(stringBuffer.?, "append", .{ key });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.EQUAL_QUOTE });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self, "getValue", .{ value }) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.AND });
                }
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ betweenColumn });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.MORE_THAN_QUOTE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ smallest });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.AND });
            _ = Inheritance.call(stringBuffer.?, "append", .{ betweenColumn });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.LESS_THAN_QUOTE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ largest });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE });
            const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(self, "sqlStrings").*.?.SQL_STATEMENT_LABEL, sqlStatement), self, self.METHOD_GET_ROWS_WHERE_BETWEEN });
            }
            const rset: ?*ResultSet = Inheritance.upcast(?*ResultSet, Inheritance.call(self, "executeSQLStatement", .{ sqlStatement }));
            const resultSetMetaData: ?*ResultSetMetaData = Inheritance.upcast(?*ResultSetMetaData, rset.?.getMetaData());
            var result: ?*HashMap = null;
            var columnNames: ?*BasicArrayList = null;
            var columnCount: i32 = 0;
            var columnName: ?*String = null;
            var field: ?*String = null;
            while (rset.?.next()) {
                result = Inheritance.upcast(@TypeOf(result), Inheritance.receiverOf(Inheritance.fieldPointer(self, "stdUtil").*.?, "createHashMap").createHashMap());
                columnNames = Inheritance.upcast(@TypeOf(columnNames), BasicArrayListD.create());
                columnCount = resultSetMetaData.?.getColumnCount();
                {
                    var index: i32 = 1;
                    while (index <= columnCount) : (index += 1) {
                    columnName = Inheritance.upcast(@TypeOf(columnName), Inheritance.call(resultSetMetaData.?, "getColumnName", .{ index }));
                    field = Inheritance.upcast(@TypeOf(field), Inheritance.call(rset.?, "getString", .{ columnName }));
                    _ = Inheritance.call(result.?, "put", .{ columnName, field });
                    }
                }
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.ROW_VALUE_LABEL, Object.toString(Object.of(result))), self, self.METHOD_GET_ROWS_WHERE_BETWEEN });
                }
                _ = Inheritance.call(rows.?, "add", .{ result });
            }
            return rows;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").* + stringBuffer, self, self.METHOD_GET_ROWS_WHERE_BETWEEN, e });
//             }
//             return null;
    }
    

    pub fn getRowsWhereBetween(self: *Self, betweenColumn: ?*String, smallest: ?*String, largest: ?*String) ?*BasicArrayList {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SELECT_ALL_FROM });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getTableName").getTableName() });
        { // try
            const rows: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.WHERE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ betweenColumn });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.MORE_THAN_QUOTE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ smallest });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.AND });
            _ = Inheritance.call(stringBuffer.?, "append", .{ betweenColumn });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.LESS_THAN_QUOTE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ largest });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE });
            const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(self, "sqlStrings").*.?.SQL_STATEMENT_LABEL, sqlStatement), self, self.METHOD_GET_ROWS_WHERE_BETWEEN });
            }
            const rset: ?*ResultSet = Inheritance.upcast(?*ResultSet, Inheritance.call(self, "executeSQLStatement", .{ sqlStatement }));
            const resultSetMetaData: ?*ResultSetMetaData = Inheritance.upcast(?*ResultSetMetaData, rset.?.getMetaData());
            var columnName: ?*String = null;
            var field: ?*String = null;
            var result: ?*HashMap = null;
            var columnNames: ?*BasicArrayList = null;
            var columnCount: i32 = 0;
            while (rset.?.next()) {
                result = Inheritance.upcast(@TypeOf(result), Inheritance.receiverOf(Inheritance.fieldPointer(self, "stdUtil").*.?, "createHashMap").createHashMap());
                columnNames = Inheritance.upcast(@TypeOf(columnNames), BasicArrayListD.create());
                columnCount = resultSetMetaData.?.getColumnCount();
                {
                    var index: i32 = 1;
                    while (index <= columnCount) : (index += 1) {
                    columnName = Inheritance.upcast(@TypeOf(columnName), Inheritance.call(resultSetMetaData.?, "getColumnName", .{ index }));
                    field = Inheritance.upcast(@TypeOf(field), Inheritance.call(rset.?, "getString", .{ columnName }));
                    _ = Inheritance.call(result.?, "put", .{ columnName, field });
                    }
                }
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.ROW_VALUE_LABEL, Object.toString(Object.of(result))), self, self.METHOD_GET_ROWS_WHERE_BETWEEN });
                }
                _ = Inheritance.call(rows.?, "add", .{ result });
            }
            return rows;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").* + stringBuffer, self, self.METHOD_GET_ROWS_WHERE_BETWEEN, e });
//             }
//             return null;
    }
};


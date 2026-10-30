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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const DbConnectionInfo = @import("org/allbinary/business/init/db/DbConnectionInfo.zig").DbConnectionInfo;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbSqlTable = @import("org/allbinary/logic/communication/sql/AbSqlTable.zig").AbSqlTable;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const AbSqlColumn = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.sql.AbSqlColumn";
    base: AbSqlTable = undefined,
    logUtil: ?*LogUtil = null,
    LARGEST_INT_VALUE_IN_COLUMN: ?*String = null,
    METHOD_GET_LARGETS_INTEGER_IN_COLUMN: ?*String = null,
    METHOD_GET_COLUMN: ?*String = null,
    METHOD_GET_COLUMN_WHERE: ?*String = null,
    INVALID_RESULT: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.LARGEST_INT_VALUE_IN_COLUMN = String.literal("\nLargest Int Value in column: ");
        this.METHOD_GET_LARGETS_INTEGER_IN_COLUMN = String.literal("getLargestIntegerInColumn");
        this.METHOD_GET_COLUMN = String.literal("getColumn");
        this.METHOD_GET_COLUMN_WHERE = String.literal("getColumnWhere");
        this.INVALID_RESULT = String.literal("-1");
    }
    

    pub fn create1(databaseConnectionInfoInterface: ?*DbConnectionInfo) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbSqlTable, "create1", .{ databaseConnectionInfoInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getLargestIntegerInColumnWhere(self: *Self, columnName: ?*String, key: ?*String, value: ?*String) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SELECT });
        _ = Inheritance.call(stringBuffer.?, "append", .{ columnName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.FROM });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getTableName").getTableName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.WHERE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ key });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.EQUAL_QUOTE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ value });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE });
        const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        { // try
            var largest: i32 = 0;
            const rset: ?*ResultSet = Inheritance.upcast(?*ResultSet, Inheritance.call(self, "executeSQLStatement", .{ sqlStatement }));
            while (rset.?.next()) {
                const intValue: i32 = Inheritance.call(rset.?, "getInt", .{ columnName });
                if (intValue > largest) {
                    largest = intValue;
                }
            }
            const largestAsString: ?*String = Inheritance.upcast(?*String, String.valueOf(Inheritance.callStatic(Integer, "create1", .{ largest }).?));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SQL_STATEMENT_LABEL });
                _ = Inheritance.call(stringBuffer.?, "append", .{ sqlStatement });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.LARGEST_INT_VALUE_IN_COLUMN });
                _ = Inheritance.call(stringBuffer.?, "append", .{ largestAsString });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.METHOD_GET_LARGETS_INTEGER_IN_COLUMN });
            }
            return largestAsString;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").*, sqlStatement), self, self.METHOD_GET_LARGETS_INTEGER_IN_COLUMN, e });
//             }
//             return self.INVALID_RESULT;
    }
    

    pub fn getColumn(self: *Self, columnName: ?*String) ?*BasicArrayList {
        const column: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SELECT });
        _ = Inheritance.call(stringBuffer.?, "append", .{ columnName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.FROM });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getTableName").getTableName() });
        const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        { // try
            const rset: ?*ResultSet = Inheritance.upcast(?*ResultSet, Inheritance.call(self, "executeSQLStatement", .{ sqlStatement }));
            while (rset.?.next()) {
                const field: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(rset.?, "getObject", .{ columnName }))));
                _ = Inheritance.call(column.?, "add", .{ field });
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SQL_STATEMENT_LABEL });
                _ = Inheritance.call(stringBuffer.?, "append", .{ sqlStatement });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.COLUMN_VALUE });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(column)) });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.METHOD_GET_COLUMN });
            }
            return column;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").*, sqlStatement), self, self.METHOD_GET_COLUMN, e });
//             }
//             return column;
    }
    

    pub fn getColumnWhere(self: *Self, columnName: ?*String, key: ?*String, value: ?*String) ?*BasicArrayList {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SELECT });
        _ = Inheritance.call(stringBuffer.?, "append", .{ columnName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.FROM });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getTableName").getTableName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.WHERE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ key });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.EQUAL_QUOTE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ value });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CLOSE_QUOTE });
        const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        const column: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        var rset: ?*ResultSet = null;
        var field: ?*String = null;
        { // try
            rset = Inheritance.upcast(@TypeOf(rset), Inheritance.call(self, "executeSQLStatement", .{ sqlStatement }));
            while (rset.?.next()) {
                field = Inheritance.upcast(@TypeOf(field), Object.toString(Object.of(Inheritance.call(rset.?, "getObject", .{ columnName }))));
                _ = Inheritance.call(column.?, "add", .{ field });
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.SQL_STATEMENT_LABEL });
                _ = Inheritance.call(stringBuffer.?, "append", .{ sqlStatement });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.COLUMN_VALUE });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(column)) });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.METHOD_GET_COLUMN_WHERE });
            }
            return column;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").*, sqlStatement), self, self.METHOD_GET_COLUMN_WHERE, e });
//             }
//             return column;
    }
};


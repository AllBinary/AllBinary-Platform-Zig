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
const DbConnectionInfo = @import("org/allbinary/business/init/db/DbConnectionInfo.zig").DbConnectionInfo;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlBasic = @import("org/allbinary/logic/communication/sql/AbSqlBasic.zig").AbSqlBasic;

pub const AbSqlTable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.sql.AbSqlTable";
    base: AbSqlBasic = undefined,
    logUtil: ?*LogUtil = null,
    tableName: ?*String = null,
    METHOD_CREATED_TABLE: ?*String = null,
    METHOD_DROP_TABLE: ?*String = null,
    TABLE_CREATION_SUCCESS: ?*String = null,
    DROPPED_SUCCESS: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.tableName = null;
        this.METHOD_CREATED_TABLE = String.literal("createTable()");
        this.METHOD_DROP_TABLE = String.literal("dropTable()");
        this.TABLE_CREATION_SUCCESS = String.literal("Table Creation Successful: ");
        this.DROPPED_SUCCESS = String.literal(" Dropped Successfully");
    }
    

    pub fn create1(databaseConnectionInfoInterface: ?*DbConnectionInfo) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbSqlBasic, "create1", .{ databaseConnectionInfoInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setTableName(self: *Self, tableName: ?*String) void {
        self.tableName = tableName;
    }
    

    pub fn getTableName(self: *Self) ?*String {
        return self.tableName;
    }
    

    pub fn createTable(self: *Self, data: ?*String) ?*String {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            _ = Inheritance.call(self, "executeSQLStatement", .{ data });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(self.TABLE_CREATION_SUCCESS, self.tableName), String.literal(" with statement: ")), data), self, self.METHOD_CREATED_TABLE });
            }
            return Inheritance.upcast(?*String, String.plus(self.tableName, Inheritance.fieldPointer(self, "sqlStrings").*.?.CREATE_RETURN));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(String.plus(String.plus(String.literal("Table Creation Failed: "), self.tableName), String.literal(" with statement: ")), data), self, self.METHOD_CREATED_TABLE, e });
//             }
//             return Inheritance.upcast(?*String, String.plus(String.plus(String.literal("Failed to Create "), self.tableName), String.literal(" table.")));
    }
    

    pub fn dropTable(self: *Self) ?*String {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const sqlStatement: ?*String = Inheritance.upcast(?*String, String.plus(Inheritance.fieldPointer(self, "sqlStrings").*.?.DROP_TABLE, self.tableName));
        { // try
            _ = Inheritance.call(self, "executeSQLStatement", .{ sqlStatement });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(Inheritance.fieldPointer(self, "SUCCESS_SQL_STATEMENT").*, sqlStatement), self, self.METHOD_DROP_TABLE });
            }
            return Inheritance.upcast(?*String, String.plus(self.tableName, self.DROPPED_SUCCESS));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(Inheritance.fieldPointer(self, "FAILED_SQL_STATEMENT").*, sqlStatement), self, self.METHOD_DROP_TABLE, e });
//             }
//             return Inheritance.upcast(?*String, String.plus(String.plus(String.literal("Failed to Drop "), self.tableName), String.literal(" table.")));
    }
};


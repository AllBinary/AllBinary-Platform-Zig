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
// const Connection = @import("java/sql/Connection.zig").Connection;
// const ResultSet = @import("java/sql/ResultSet.zig").ResultSet;
// const SQLException = @import("java/sql/SQLException.zig").SQLException;
// const Statement = @import("java/sql/Statement.zig").Statement;
const DatabaseConnectionInfoInterface = @import("org/allbinary/business/init/db/DatabaseConnectionInfoInterface.zig").DatabaseConnectionInfoInterface;
const DbConnectionInfo = @import("org/allbinary/business/init/db/DbConnectionInfo.zig").DbConnectionInfo;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SqlConnectionPool = @import("org/allbinary/logic/communication/sql/connection/pool/SqlConnectionPool.zig").SqlConnectionPool;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const SqlStrings = @import("org/allbinary/logic/communication/sql/SqlStrings.zig").SqlStrings;
const SqlTypeStrings = @import("org/allbinary/logic/communication/sql/SqlTypeStrings.zig").SqlTypeStrings;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const AbSqlBasic = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.sql.AbSqlBasic";
    logUtil: ?*LogUtil = null,
    sqlConnectionPool: ?*SqlConnectionPool = null,
    databaseConnectionInfoInterface: ?*DbConnectionInfo = null,
    connectAttemptCounter: i32 = 0,
    conn: ?*Connection = null,
    stringUtil: ?*StringUtil = null,
    commonStrings: ?*CommonStrings = null,
    commonSeps: ?*CommonSeps = null,
    stdUtil: ?*StdUtil = null,
    sqlTypeStrings: ?*SqlTypeStrings = null,
    sqlStrings: ?*SqlStrings = null,
    INSERT: ?*String = null,
    UPDATE: ?*String = null,
    FAILED_SQL_STATEMENT: ?*String = null,
    SUCCESS_SQL_STATEMENT: ?*String = null,
    METHOD_EXECUTED_SQL_STATEMENT: ?*String = null,
    METHOD_CREATE: ?*String = null,
    DATABASE_CREATED_LABEL: ?*String = null,
    DATABASE_CREATION_FAILED_LABEL: ?*String = null,
    SQL_CONNECTION_FAILED: ?*String = null,
    SQL_CONNECTION_RETRYING: ?*String = null,
    SQL_CONNECTION_RETRY: ?*String = null,
    METHOD_CREATE_CONNECTION: ?*String = null,
    METHOD_INITIALIZE: ?*String = null,
    LOAD_JDBC_DRIVER_FAILED_LABEL: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.sqlConnectionPool = Inheritance.upcast(?*SqlConnectionPool, SqlConnectionPool.getInstance());
        
        
        
        this.stringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.stdUtil = Inheritance.upcast(?*StdUtil, StdUtil.getInstance());
        this.sqlTypeStrings = Inheritance.upcast(?*SqlTypeStrings, SqlTypeStrings.getInstance());
        this.sqlStrings = Inheritance.upcast(?*SqlStrings, SqlStrings.getInstance());
        this.INSERT = String.literal("insert");
        this.UPDATE = String.literal("update");
        this.FAILED_SQL_STATEMENT = String.literal("Failed\nSQL Statement: ");
        this.SUCCESS_SQL_STATEMENT = String.literal("Success\nSQL Statement: ");
        this.METHOD_EXECUTED_SQL_STATEMENT = String.literal("executedSQLStatement");
        this.METHOD_CREATE = String.literal("create");
        this.DATABASE_CREATED_LABEL = String.literal("Database Created: ");
        this.DATABASE_CREATION_FAILED_LABEL = String.literal("Database Creation Failed: ");
        this.SQL_CONNECTION_FAILED = String.literal("SQL Connection Failed");
        this.SQL_CONNECTION_RETRYING = String.literal("SQL Connection Retrying");
        this.SQL_CONNECTION_RETRY = String.literal("SQL Connection Retry");
        this.METHOD_CREATE_CONNECTION = String.literal("createConnection()");
        this.METHOD_INITIALIZE = String.literal("initialize");
        this.LOAD_JDBC_DRIVER_FAILED_LABEL = String.literal("Load JDBC Driver Failed: ");
    }
    

    pub fn create1(databaseConnectionInfoInterface: ?*DbConnectionInfo) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.databaseConnectionInfoInterface = databaseConnectionInfoInterface;
        this.connectAttemptCounter = 0;
        this.conn = null;
        return this;
    }
    

    // throws SQLException
    pub fn executeSQLStatement(self: *Self, statement: ?*String) ?*ResultSet {
        { // try
            _ = self.initialize();
            const stmt: ?*Statement = Inheritance.upcast(?*Statement, self.conn.?.createStatement());
            _ = Inheritance.call(stmt.?, "execute", .{ statement });
            const rset: ?*ResultSet = Inheritance.upcast(?*ResultSet, stmt.?.getResultSet());
            _ = stmt.?.close();
            const tempConnection: ?*Connection = self.conn;
            self.conn = null;
            _ = Inheritance.call(self.sqlConnectionPool.?, "add", .{ Inheritance.receiverOf(self.getDatabaseConnectionInfoInterface().?, "getUrl").getUrl(), tempConnection });
            return rset;
        }
        // catch (SQLException e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(self.FAILED_SQL_STATEMENT, statement), self, self.METHOD_EXECUTED_SQL_STATEMENT, e });
//             }
//             _ = self.conn.?.close();
//             self.conn = null;
//             std.debug.panic("{any}", .{e});
    }
    

    pub fn create(self: *Self, databaseName: ?*String) ?*String {
        { // try
            _ = Inheritance.call(self, "executeSQLStatement", .{ String.plus(self.sqlStrings.?.CREATE_DATABASE, databaseName) });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.DATABASE_CREATED_LABEL, databaseName), self, self.METHOD_CREATE });
            }
            return Inheritance.upcast(?*String, String.plus(databaseName, self.sqlStrings.?.CREATE_RETURN));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(self.DATABASE_CREATION_FAILED_LABEL, databaseName), self, self.METHOD_CREATE, e });
//             }
//             return Inheritance.upcast(?*String, String.plus(self.DATABASE_CREATION_FAILED_LABEL, databaseName));
    }
    

    pub fn createConnection(self: *Self) void {
        { // try
            self.conn = Inheritance.upcast(@TypeOf(self.conn), Inheritance.call(self.sqlConnectionPool.?, "get", .{ Inheritance.receiverOf(self.getDatabaseConnectionInfoInterface().?, "getUrl").getUrl() }));
        }
        // catch (SQLException se):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.SQL_CONNECTION_RETRYING, self, self.METHOD_CREATE_CONNECTION, se });
//             }
//             { // try
//                 _ = Inheritance.call(Thread.currentThread().?, "sleep", .{ 2000 });
//                 if (self.connectAttemptCounter < 10) {
//                     self.connectAttemptCounter += 1;
//                     _ = self.initialize();
//                 }
//             }
//             // catch (Exception e):
// //                 if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
// //                     _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(self.SQL_CONNECTION_RETRY, String.fromBytes(@errorName(se.?))), self, self.METHOD_CREATE_CONNECTION, e });
// //                 }
    }
    

    pub fn initialize(self: *Self) void {
        { // try
            {
                { // try
                    const loader: ?*ClassLoader = Inheritance.upcast(?*ClassLoader, Inheritance.receiverOf(Thread.currentThread().?, "getContextClassLoader").getContextClassLoader());
                    const jdbcDriverClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, Inheritance.call(loader.?, "loadClass", .{ Inheritance.receiverOf(self.getDatabaseConnectionInfoInterface().?, "getJdbcDriver").getJdbcDriver() }));
                    _ = jdbcDriverClass.?.newInstance();
                }
                // catch (Exception e):
//                     if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                         _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(self.LOAD_JDBC_DRIVER_FAILED_LABEL, Inheritance.receiverOf(self.getDatabaseConnectionInfoInterface().?, "getJdbcDriver").getJdbcDriver()), self, self.METHOD_INITIALIZE, e });
//                     }
            }
            _ = self.createConnection();
        }
        // catch (Exception se):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.SQL_CONNECTION_FAILED, self, self.METHOD_INITIALIZE, se });
//             }
    }
    

    pub fn getDatabaseConnectionInfoInterface(self: *Self) ?*DatabaseConnectionInfoInterface {
        return Inheritance.upcast(?*DatabaseConnectionInfoInterface, self.databaseConnectionInfoInterface);
    }
    

    pub fn setDatabaseConnectionInfoInterface(self: *Self, databaseConnectionInfoInterface: ?*DbConnectionInfo) void {
        self.databaseConnectionInfoInterface = databaseConnectionInfoInterface;
    }
};


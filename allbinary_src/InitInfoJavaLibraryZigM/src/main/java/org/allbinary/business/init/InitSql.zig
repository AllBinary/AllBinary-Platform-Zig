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
// package org.allbinary.business.init

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Connection = @import("java/sql/Connection.zig").Connection;
// const DriverManager = @import("java/sql/DriverManager.zig").DriverManager;
// const ResultSet = @import("java/sql/ResultSet.zig").ResultSet;
// const ResultSetMetaData = @import("java/sql/ResultSetMetaData.zig").ResultSetMetaData;
// const SQLException = @import("java/sql/SQLException.zig").SQLException;
// const Statement = @import("java/sql/Statement.zig").Statement;
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const DatabaseConnectionInfoInterface = @import("org/allbinary/business/init/db/DatabaseConnectionInfoInterface.zig").DatabaseConnectionInfoInterface;
const DbConnectionInfo = @import("org/allbinary/business/init/db/DbConnectionInfo.zig").DbConnectionInfo;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const LogConfigTypeFactory = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.zig").LogConfigTypeFactory;
const LogConfigTypes = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypes.zig").LogConfigTypes;
const SqlStrings = @import("org/allbinary/logic/communication/sql/SqlStrings.zig").SqlStrings;
const SqlTypeStrings = @import("org/allbinary/logic/communication/sql/SqlTypeStrings.zig").SqlTypeStrings;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const InitSql = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.init.InitSql";
    stringUtil: ?*StringUtil = null,
    commonSeps: ?*CommonSeps = null,
    sqlTypeStrings: ?*SqlTypeStrings = null,
    sqlStrings: ?*SqlStrings = null,
    stdUtil: ?*StdUtil = null,
    INSERT: ?*String = null,
    UPDATE: ?*String = null,
    databaseConnectionInfoInterface: ?*DbConnectionInfo = null,
    userid: ?*String = null,
    password: ?*String = null,
    tableName: ?*String = null,
    conn: ?*Connection = null,
    useridAndPassword: bool = false,
    SUCCESS_SQL_STATEMENT: ?*String = null,
    FAILED_SQL_STATEMENT: ?*String = null,
    INIT_SQL: ?*String = null,
    commonStrings: ?*CommonStrings = null,
    EQUAL_QUOTE: ?*String = null,
    METHOD_GET_ROW: ?*String = null,
    METHOD_UPDATE_WHERE: ?*String = null,
    ROW_VALUE_LABEL: ?*String = null,
    NO_RESULTS_IN_RESULT_SET: ?*String = null,
    INSERT_END: ?*String = null,

    fn initFields(this: *Self) void {
        this.stringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.sqlTypeStrings = Inheritance.upcast(?*SqlTypeStrings, SqlTypeStrings.getInstance());
        this.sqlStrings = Inheritance.upcast(?*SqlStrings, SqlStrings.getInstance());
        this.stdUtil = Inheritance.upcast(?*StdUtil, StdUtil.getInstance());
        this.INSERT = String.literal("insert");
        this.UPDATE = String.literal("update");
        this.databaseConnectionInfoInterface = null;
        this.userid = null;
        this.password = null;
        this.tableName = null;
        this.conn = null;
        this.useridAndPassword = false;
        this.SUCCESS_SQL_STATEMENT = String.literal("Success\nSQL Statement: ");
        this.FAILED_SQL_STATEMENT = String.literal("Failed\nSQL Statement: ");
        this.INIT_SQL = String.literal("InitSql");
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.EQUAL_QUOTE = String.literal("=\"");
        this.METHOD_GET_ROW = String.literal("getRow()");
        this.METHOD_UPDATE_WHERE = String.literal("updateWhere()");
        this.ROW_VALUE_LABEL = String.literal("Row Value: ");
        this.NO_RESULTS_IN_RESULT_SET = String.literal("No Results in ResultSet");
        this.INSERT_END = String.literal("')");
    }
    

    pub fn create1(databaseConnectionInfoInterface: ?*DbConnectionInfo) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setDatabaseConnectionInfoInterface", .{ databaseConnectionInfoInterface });
        return this;
    }
    

    pub fn setTable(self: *Self, tableName: ?*String) void {
        self.tableName = tableName;
    }
    

    pub fn setDatabaseConnectionInfoInterface(self: *Self, databaseConnectionInfoInterface: ?*DbConnectionInfo) void {
        self.databaseConnectionInfoInterface = databaseConnectionInfoInterface;
    }
    

    pub fn createTable(self: *Self, tableData: ?*String) bool {
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Creating Table: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ tableData });
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(stringBuffer)), self.INIT_SQL, String.literal("createTable()") });
            _ = Inheritance.call(self, "executeSQLStatement", .{ tableData });
            return true;
        }
        // catch (Exception e):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ self.commonStrings.?.EXCEPTION, self.INIT_SQL, String.literal("createTable()"), e });
//             }
//             return false;
    }
    

    pub fn dropTable(self: *Self) bool {
        const sqlStatement: ?*String = Inheritance.upcast(?*String, String.plus(self.sqlStrings.?.DROP_TABLE, self.tableName));
        { // try
            _ = Inheritance.call(self, "executeSQLStatement", .{ sqlStatement });
            return true;
        }
        // catch (Exception e):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ self.commonStrings.?.EXCEPTION, self.INIT_SQL, String.literal("dropTables()"), e });
//             }
//             return false;
    }
    

    pub fn getRow(self: *Self, keysAndValues: ?*HashMap) ?*HashMap {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.sqlStrings.?.SELECT_ALL_FROM });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.tableName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.sqlStrings.?.WHERE });
        { // try
            var result: ?*HashMap = null;
            const set: ?*Set = Inheritance.upcast(?*Set, keysAndValues.?.keySet());
            const keyArray: []?Object = set.?.toArray();
            const size: i32 = @as(i32, @intCast(keyArray.len));
            {
                var i: i32 = 0;
                while (i < size) : (i += 1) {
                const key: ?*String = Inheritance.cast(?*String, keyArray[@intCast(i)]);
                const value: ?*String = Inheritance.callStatic(String, "create1", .{ Inheritance.cast(?*String, Inheritance.call(keysAndValues.?, "get", .{ key })) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ key });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.sqlStrings.?.EQUAL_QUOTE });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self, "getValue", .{ value }) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.sqlStrings.?.CLOSE_QUOTE });
                if (i < size - 1) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ self.sqlStrings.?.AND });
                }
                }
            }
            const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(self.sqlStrings.?.SQL_STATEMENT_LABEL, sqlStatement), self.INIT_SQL, self.METHOD_GET_ROW });
            }
            const rset: ?*ResultSet = Inheritance.upcast(?*ResultSet, Inheritance.call(self, "executeSQLStatement", .{ sqlStatement }));
            const resultSetMetaData: ?*ResultSetMetaData = Inheritance.upcast(?*ResultSetMetaData, rset.?.getMetaData());
            while (rset.?.next()) {
                result = Inheritance.upcast(@TypeOf(result), self.stdUtil.?.createHashMap());
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
                    _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(self.ROW_VALUE_LABEL, Object.toString(Object.of(result))), self.INIT_SQL, self.METHOD_GET_ROW });
                }
                return result;
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ self.NO_RESULTS_IN_RESULT_SET, self.INIT_SQL, self.METHOD_GET_ROW });
            }
            return null;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.plus(self.FAILED_SQL_STATEMENT, stringBuffer), self.INIT_SQL, self.METHOD_GET_ROW, e });
//             }
//             return null;
    }
    

    pub fn updateWhere(self: *Self, key: ?*String, value: ?*String, updatedKeyValuePairs: ?*HashMap) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.sqlStrings.?.UPDATE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.tableName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.sqlStrings.?.SET });
        { // try
            const columnArray: []?Object = Inheritance.receiverOf(updatedKeyValuePairs.?.keySet().?, "toArray").toArray();
            const size: i32 = @as(i32, @intCast(columnArray.len));
            {
                var i: i32 = 0;
                while (i < size) : (i += 1) {
                const columnName: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(columnArray[@intCast(i)])));
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
                _ = Inheritance.call(stringBuffer.?, "append", .{ columnName });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.EQUAL_QUOTE });
                var columnValue: ?*String = Inheritance.cast(?*String, Inheritance.call(updatedKeyValuePairs.?, "get", .{ columnName }));
                if (columnValue == null) {
                    columnValue = Inheritance.upcast(@TypeOf(columnValue), self.stringUtil.?.EMPTY_STRING);
                } else {
                }
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self, "getValue", .{ columnValue }) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.sqlStrings.?.CLOSE_QUOTE });
                if (i < size - 1) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.COMMA });
                }
                }
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.sqlStrings.?.WHERE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ key });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.sqlStrings.?.EQUAL_QUOTE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self, "getValue", .{ value }) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.sqlStrings.?.CLOSE_QUOTE });
            const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            _ = Inheritance.call(self, "executeSQLStatement", .{ sqlStatement });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(self.SUCCESS_SQL_STATEMENT, sqlStatement), self.INIT_SQL, self.METHOD_UPDATE_WHERE });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.plus(self.FAILED_SQL_STATEMENT, stringBuffer), self.INIT_SQL, self.METHOD_UPDATE_WHERE, e });
//             }
    }
    

    pub fn insert(self: *Self, values: ?*BasicArrayList) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.sqlStrings.?.INSERT_INTO });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.tableName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.sqlStrings.?.VALUES });
        { // try
            const size: i32 = values.?.size();
            {
                var i: i32 = 0;
                while (i < size - 1) : (i += 1) {
                const value: ?*String = Inheritance.upcast(?*String, Inheritance.call(self, "getValue", .{ Inheritance.cast(?*String, Inheritance.call(values.?, "get", .{ i })) }));
                _ = Inheritance.call(stringBuffer.?, "append", .{ value });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.sqlStrings.?.SINGLE_QUOTE_COMMA_SEP });
                }
            }
            const value: ?*String = Inheritance.upcast(?*String, Inheritance.call(self, "getValue", .{ Inheritance.cast(?*String, Inheritance.call(values.?, "get", .{ values.?.size() - 1 })) }));
            _ = Inheritance.call(stringBuffer.?, "append", .{ value });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.INSERT_END });
            const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            _ = Inheritance.call(self, "executeSQLStatement", .{ sqlStatement });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(self.SUCCESS_SQL_STATEMENT, sqlStatement), self.INIT_SQL, self.INSERT });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.plus(self.FAILED_SQL_STATEMENT, Object.toString(Object.of(stringBuffer))), self.INIT_SQL, self.INSERT, e });
//             }
    }
    

    pub fn getValue(self: *Self, value: ?*String) ?*String {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ value })) {
            return Inheritance.upcast(?*String, self.stringUtil.?.EMPTY_STRING);
        } else {
            return value;
        }
    }
    

    // throws Exception, SQLException
    pub fn executeSQLStatement(self: *Self, statement: ?*String) ?*ResultSet {
        { // try
            if (self.conn == null) {
                _ = self.initialize();
            }
            const stmt: ?*Statement = Inheritance.upcast(?*Statement, self.conn.?.createStatement());
            _ = Inheritance.call(stmt.?, "execute", .{ statement });
            const rset: ?*ResultSet = Inheritance.upcast(?*ResultSet, stmt.?.getResultSet());
            _ = stmt.?.close();
            return rset;
        }
        // catch (SQLException e):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ self.commonStrings.?.EXCEPTION, self.INIT_SQL, String.literal("executeSQLStatement()"), e });
//             }
//             std.debug.panic("{any}", .{e});
        // catch (Exception e):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ self.commonStrings.?.EXCEPTION, self.INIT_SQL, String.literal("executeSQLStatement()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
    

    // throws SQLException
    pub fn createConnection(self: *Self) void {
        { // try
            if (self.useridAndPassword == true) {
                self.conn = Inheritance.upcast(@TypeOf(self.conn), Inheritance.callStatic(DriverManager, "getConnection", .{ self.databaseConnectionInfoInterface.?.getUrl(), self.userid, self.password }));
            } else {
                self.conn = Inheritance.upcast(@TypeOf(self.conn), Inheritance.callStatic(DriverManager, "getConnection", .{ self.databaseConnectionInfoInterface.?.getUrl() }));
            }
        }
        // catch (SQLException se):
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ self.commonStrings.?.EXCEPTION, self.INIT_SQL, String.literal("createConnection()"), se });
//             std.debug.panic("{any}", .{se});
    }
    

    // throws Exception
    pub fn initialize(self: *Self) void {
        { // try
            { // try
                const jdbcDriver: ?*String = Inheritance.upcast(?*String, self.databaseConnectionInfoInterface.?.getJdbcDriver());
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Loading DbConnnectionInfo: ") }).?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self.databaseConnectionInfoInterface).?.class))).?))).name) }).?, "append", .{ String.literal(" Driver: ") }).?, "append", .{ jdbcDriver }))), self.INIT_SQL, String.literal("initialize()") });
                _ = Inheritance.receiverOf(Inheritance.callStatic(Class, "forName", .{ jdbcDriver }).?, "newInstance").newInstance();
            }
            // catch (Exception e):
//                 if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.SQLLOGGINGERROR })) {
//                     _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.plus(String.literal("LoadDriver Failed: "), self.databaseConnectionInfoInterface.?.getJdbcDriver()), self.INIT_SQL, String.literal("initialize()"), e });
//                 }
//                 std.debug.panic("{any}", .{e});
            if (self.userid == null and self.password == null) {
                self.useridAndPassword = true;
            }
            _ = self.createConnection();
        }
        // catch (Exception se):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.SQLLOGGINGERROR })) {
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ self.commonStrings.?.EXCEPTION, self.INIT_SQL, String.literal("initialize()"), se });
//             }
//             std.debug.panic("{any}", .{se});
    }
    

    pub fn getDatabaseConnectionInfoInterface(self: *Self) ?*DatabaseConnectionInfoInterface {
        return Inheritance.upcast(?*DatabaseConnectionInfoInterface, self.databaseConnectionInfoInterface);
    }
};


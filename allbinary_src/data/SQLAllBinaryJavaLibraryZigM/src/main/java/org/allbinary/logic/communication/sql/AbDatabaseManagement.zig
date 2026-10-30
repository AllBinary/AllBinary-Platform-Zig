// 
// To change this license header, choose License Headers in Project Properties. 
// To change this template file, choose Tools | Templates 
// and open the template in the editor.  
// Generated Code Do Not Modify
// package org.allbinary.logic.communication.sql

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const InetAddress = @import("java/net/InetAddress.zig").InetAddress;
const DatabaseConnectionInfoInterface = @import("org/allbinary/business/init/db/DatabaseConnectionInfoInterface.zig").DatabaseConnectionInfoInterface;
const DbConnectionInfo = @import("org/allbinary/business/init/db/DbConnectionInfo.zig").DbConnectionInfo;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AbSqlBean = @import("org/allbinary/logic/communication/sql/AbSqlBean.zig").AbSqlBean;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const AbDatabaseManagement = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.sql.AbDatabaseManagement";
    base: AbSqlBean = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    sqlCommandLog: ?*StringMaker = null,
    GRANT_ALL: ?*String = null,
    DOT_STAR: ?*String = null,
    TO: ?*String = null,
    AT_LOCALHOST: ?*String = null,
    IDENTIFIED_BY: ?*String = null,
    WITH_GRANT_OPTION: ?*String = null,
    FAILED: ?*String = null,
    GET_HOST_NAME: ?*String = null,
    METHOD_ADD_USER: ?*String = null,
    METHOD_ADD_USERS: ?*String = null,
    METHOD_ADD_DB: ?*String = null,
    METHOD_ADD_DATABASES: ?*String = null,
    METHOD_ADD_TABLES: ?*String = null,
    UNABLE_TO_CREATE_USER: ?*String = null,
    UNABLE_TO_CREATE_DATABASE: ?*String = null,
    UNABLE_TO_CREATE_TABLES: ?*String = null,
    ADD_TABLES_RESULTS_LABEL: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.sqlCommandLog = StringMaker.create();
        this.GRANT_ALL = String.literal("GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX, ALTER ON ");
        this.DOT_STAR = String.literal(".*");
        this.TO = String.literal(" TO ");
        this.AT_LOCALHOST = String.literal("@localhost");
        this.IDENTIFIED_BY = String.literal(" IDENTIFIED BY '");
        this.WITH_GRANT_OPTION = String.literal("' WITH GRANT OPTION");
        this.FAILED = String.literal("Failed");
        this.GET_HOST_NAME = String.literal("getHostName()");
        this.METHOD_ADD_USER = String.literal("addUser()");
        this.METHOD_ADD_USERS = String.literal("addUsers()");
        this.METHOD_ADD_DB = String.literal("addDb()");
        this.METHOD_ADD_DATABASES = String.literal("addDatabases()");
        this.METHOD_ADD_TABLES = String.literal("addTables()");
        this.UNABLE_TO_CREATE_USER = String.literal("Unable to Create User: ");
        this.UNABLE_TO_CREATE_DATABASE = String.literal("Unable to Create Database: ");
        this.UNABLE_TO_CREATE_TABLES = String.literal("Unable to Create Tables");
        this.ADD_TABLES_RESULTS_LABEL = String.literal("Add Table Results: ");
    }
    

    pub fn create1(databaseConnectionInfoInterface: ?*DatabaseConnectionInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbSqlBean, "create1", .{ Inheritance.cast(?*DbConnectionInfo, databaseConnectionInfoInterface) }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(connectionInfo: ?*DbConnectionInfo) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbSqlBean, "create1", .{ connectionInfo }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getHostName(self: *Self) ?*String {
        _ = self;
        { // try
            const addr: ?*InetAddress = Inheritance.upcast(?*InetAddress, InetAddress.getLocalHost());
            return Inheritance.upcast(?*String, addr.?.getHostName());
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.FAILED, self, self.GET_HOST_NAME, e });
//             return null;
    }
    

    // throws Exception
    pub fn addDbUser4(self: *Self, hostName: ?*String, db: ?*String, userName: ?*String, password: ?*String) bool {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.GRANT_ALL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ db });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.DOT_STAR });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.TO });
        _ = Inheritance.call(stringBuffer.?, "append", .{ userName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ hostName });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.IDENTIFIED_BY });
        _ = Inheritance.call(stringBuffer.?, "append", .{ password });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.WITH_GRANT_OPTION });
        const sqlStatement: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        _ = Inheritance.call(self.sqlCommandLog.?, "append", .{ sqlStatement });
        _ = Inheritance.call(self.sqlCommandLog.?, "append", .{ Inheritance.fieldPointer(self, "commonSeps").*.?.NEW_LINE });
        _ = Inheritance.call(&self.base, "executeSQLStatement", .{ sqlStatement });
        return true;
    }
    

    pub fn addDbUser(self: *Self, db: ?*String, userName: ?*String, password: ?*String) bool {
        { // try
            _ = Inheritance.call(self, "addDbUser", .{ self.AT_LOCALHOST, db, userName, password });
            const hostName: ?*String = Inheritance.upcast(?*String, self.getHostName());
            if (hostName != null) {
                _ = Inheritance.call(self, "addDbUser", .{ hostName, db, userName, password });
            }
            return true;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(self.UNABLE_TO_CREATE_USER, userName), self, self.METHOD_ADD_USER, e });
//             return false;
    }
    

    pub fn addDb(self: *Self, db: ?*String) ?*Boolean {
        { // try
            const sqlStatement: ?*String = Inheritance.upcast(?*String, String.plus(Inheritance.fieldPointer(self, "sqlStrings").*.?.CREATE_DATABASE, db));
            _ = Inheritance.call(self.sqlCommandLog.?, "append", .{ sqlStatement });
            _ = Inheritance.call(self.sqlCommandLog.?, "append", .{ Inheritance.fieldPointer(self, "commonSeps").*.?.NEW_LINE });
            _ = Inheritance.call(&self.base, "executeSQLStatement", .{ sqlStatement });
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.plus(self.UNABLE_TO_CREATE_DATABASE, db), self, self.METHOD_ADD_DB, e });
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
};


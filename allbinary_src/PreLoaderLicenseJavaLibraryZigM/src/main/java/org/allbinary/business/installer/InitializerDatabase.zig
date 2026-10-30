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
// package org.allbinary.business.installer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Map = @import("java/util/Map.zig").Map;
// const Set = @import("java/util/Set.zig").Set;
const DatabaseConnectionInfoInterface = @import("org/allbinary/business/init/db/DatabaseConnectionInfoInterface.zig").DatabaseConnectionInfoInterface;
const DbConnectionInfo = @import("org/allbinary/business/init/db/DbConnectionInfo.zig").DbConnectionInfo;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const DynamicInitDb = @import("org/allbinary/business/installer/DynamicInitDb.zig").DynamicInitDb;
const InitializerData = @import("org/allbinary/business/installer/InitializerData.zig").InitializerData;

pub const InitializerDatabase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.installer.InitializerDatabase";
    logUtil: ?*LogUtil = null,
    adminDbUserName: ?*String = null,
    adminDbPassword: ?*String = null,
    adminJdbcDriver: ?*String = null,
    adminSchema: ?*String = null,
    adminServer: ?*String = null,
    adminPort: ?*String = null,
    initDb: ?*DynamicInitDb = null,
    const MAXDB: i32 = 30;
    const MAX: i32 = 16;
    const MIN: i32 = 4;
    const MINPASSWORD: i32 = 0;

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.adminDbUserName = null;
        this.adminDbPassword = null;
        this.adminJdbcDriver = null;
        this.adminSchema = null;
        this.adminServer = null;
        this.adminPort = null;
        this.initDb = null;
    }
    

    pub fn create2(abeClientInformation: ?*AbeClientInformationInterface, map: ?*Map) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const keys: ?*Set = Inheritance.upcast(?*Set, map.?.keySet());
        const keyArray: []?Object = keys.?.toArray();
        const size: i32 = @as(i32, @intCast(keyArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const key: ?*String = Inheritance.cast(?*String, keyArray[@intCast(index)]);
            const values: []?*String = Inheritance.cast([]?*String, Inheritance.call(map.?, "get", .{ key }));
            _ = Inheritance.call(hashMap.?, "put", .{ Inheritance.callStatic(String, "create1", .{ key }), Inheritance.callStatic(String, "create1", .{ values[@intCast(0)] }) });
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("key: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ key });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Value: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ values[@intCast(0)] });
            _ = Inheritance.call(this.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), this, String.literal("getFormData()") });
            }
        }
        _ = Inheritance.call(this, "getFormData", .{ abeClientInformation, hashMap });
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create2(abeClientInformation: ?*AbeClientInformationInterface, initHashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "getFormData", .{ abeClientInformation, initHashMap });
        return this;
    }
    

    pub fn getFormData(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, hashMap: ?*HashMap) void {
        { // try
            const initializerData: ?*InitializerData = Inheritance.upcast(?*InitializerData, InitializerData.getInstance());
            _ = Inheritance.call(self, "setAdminDbUserName", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.DBUSER })) });
            _ = Inheritance.call(self, "setAdminDbPassword", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.DBPASSWORD })) });
            _ = Inheritance.call(self, "setAdminJdbcDriver", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.ADMINJDBCDRIVER })) });
            _ = Inheritance.call(self, "setAdminSchema", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.ADMINSCHEMA })) });
            _ = Inheritance.call(self, "setAdminServer", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.ADMINSERVER })) });
            _ = Inheritance.call(self, "setAdminPort", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.ADMINPORT })) });
            const dbConnectionInfo: ?*DbConnectionInfo = DbConnectionInfo.create();
            const adminDbName: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
            _ = Inheritance.call(dbConnectionInfo.?, "setJdbcDriver", .{ self.getAdminJdbcDriver() });
            _ = Inheritance.call(dbConnectionInfo.?, "setName", .{ adminDbName });
            _ = Inheritance.call(dbConnectionInfo.?, "setUserName", .{ self.getAdminDbUserName() });
            _ = Inheritance.call(dbConnectionInfo.?, "setPassword", .{ self.getAdminDbPassword() });
            _ = Inheritance.call(dbConnectionInfo.?, "setSchema", .{ self.getAdminSchema() });
            _ = Inheritance.call(dbConnectionInfo.?, "setServer", .{ self.getAdminServer() });
            _ = Inheritance.call(dbConnectionInfo.?, "setPort", .{ self.getAdminPort() });
            self.initDb = Inheritance.callStatic(DynamicInitDb, "create2", .{ abeClientInformation, Inheritance.cast(?*DatabaseConnectionInfoInterface, dbConnectionInfo) });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Unable to get form data"), self, String.literal("getFormData()"), e });
    }
    

    pub fn isJdbcDriverValid(self: *Self, jdbcDriverClassPathString: ?*String) bool {
        _ = self;
        { // try
            _ = Inheritance.receiverOf(Inheritance.callStatic(Class, "forName", .{ jdbcDriverClassPathString }).?, "newInstance").newInstance();
            return true;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PRELOADERERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.IS_VALID, e });
//             }
//             return false;
    }
    

    pub fn isValid(self: *Self) bool {
        var isValid_: bool = true;
        if (!Inheritance.call(self, "isJdbcDriverValid", .{ self.adminJdbcDriver })) {
            isValid_ = false;
        }
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.adminDbUserName, InitializerDatabase.MIN, InitializerDatabase.MAX })) {
            isValid_ = false;
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.adminDbPassword, InitializerDatabase.MINPASSWORD, InitializerDatabase.MAX })) {
            isValid_ = false;
        }
        return isValid_;
    }
    

    pub fn getJdbcDriverValidationInfo(self: *Self, jdbcDriver: ?*String) ?*String {
        _ = self;
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("The JDBC driver (") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ jdbcDriver });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(") you have provided is not valid.<br/>") });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getInvalidInfo(self: *Self) ?*String {
        const isValid_: bool = true; _ = isValid_;
        var isJdbcDriversValid: bool = true;
        const stringBuffer: ?*StringMaker = StringMaker.create();
        if (!Inheritance.call(self, "isJdbcDriverValid", .{ self.adminJdbcDriver })) {
            isJdbcDriversValid = false;
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self, "getJdbcDriverValidationInfo", .{ self.getAdminJdbcDriver() }) });
        }
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.adminDbUserName, InitializerDatabase.MIN, InitializerDatabase.MAX })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.plus(String.plus(String.literal("Admin username should be < "), InitializerDatabase.MAX), String.literal(" and > ")), InitializerDatabase.MIN), String.literal(" characters in length.<br />")) });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.adminDbPassword, InitializerDatabase.MINPASSWORD, InitializerDatabase.MAX })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.plus(String.plus(String.literal("Admin password should be < "), InitializerDatabase.MAX), String.literal(" and > ")), InitializerDatabase.MINPASSWORD), String.literal(" characters in length.<br />")) });
        }
        if (!isJdbcDriversValid) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(InitializerData.getInstance().?, "getJdbcDriverSolutionInfo").getJdbcDriverSolutionInfo() });
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn createUsers(self: *Self) bool {
        { // try
            _ = Inheritance.receiver(self.initDb.?, "addUsers").addUsers();
            return true;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Unable to Create Users"), self, String.literal("createUsers()"), e });
//             return false;
    }
    

    pub fn createDatabases(self: *Self) bool {
        { // try
            _ = Inheritance.receiver(self.initDb.?, "addDatabases").addDatabases();
            return true;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Unable to Create Databases"), self, String.literal("createDatabases()"), e });
//             return false;
    }
    

    pub fn createTables(self: *Self) bool {
        { // try
            _ = Inheritance.receiver(self.initDb.?, "addTables").addTables();
            return true;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Unable to Create Tables"), self, String.literal("createTables()"), e });
//             return false;
    }
    

    pub fn getAdminDbUserName(self: *Self) ?*String {
        return self.adminDbUserName;
    }
    

    pub fn setAdminDbUserName(self: *Self, adminDbUserName: ?*String) void {
        self.adminDbUserName = adminDbUserName;
    }
    

    pub fn getAdminDbPassword(self: *Self) ?*String {
        return self.adminDbPassword;
    }
    

    pub fn setAdminDbPassword(self: *Self, adminDbPassword: ?*String) void {
        self.adminDbPassword = adminDbPassword;
    }
    

    pub fn getAdminJdbcDriver(self: *Self) ?*String {
        return self.adminJdbcDriver;
    }
    

    pub fn setAdminJdbcDriver(self: *Self, adminJdbcDriver: ?*String) void {
        self.adminJdbcDriver = adminJdbcDriver;
    }
    

    pub fn getAdminSchema(self: *Self) ?*String {
        return self.adminSchema;
    }
    

    pub fn setAdminSchema(self: *Self, adminSchema: ?*String) void {
        self.adminSchema = adminSchema;
    }
    

    pub fn getAdminServer(self: *Self) ?*String {
        return self.adminServer;
    }
    

    pub fn setAdminServer(self: *Self, adminServer: ?*String) void {
        self.adminServer = adminServer;
    }
    

    pub fn getAdminPort(self: *Self) ?*String {
        return self.adminPort;
    }
    

    pub fn setAdminPort(self: *Self, adminPort: ?*String) void {
        self.adminPort = adminPort;
    }
};


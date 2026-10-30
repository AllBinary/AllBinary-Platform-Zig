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
const HistoryDbInitInfo = @import("org/allbinary/business/init/db/HistoryDbInitInfo.zig").HistoryDbInitInfo;
const InventoryDbInitInfo = @import("org/allbinary/business/init/db/InventoryDbInitInfo.zig").InventoryDbInitInfo;
const LogDbInitInfo = @import("org/allbinary/business/init/db/LogDbInitInfo.zig").LogDbInitInfo;
const StaticPagesDbInitInfo = @import("org/allbinary/business/init/db/StaticPagesDbInitInfo.zig").StaticPagesDbInitInfo;
const UserDbInitInfo = @import("org/allbinary/business/init/db/UserDbInitInfo.zig").UserDbInitInfo;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const InitializerData = @import("org/allbinary/business/installer/InitializerData.zig").InitializerData;

pub const Initializer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.installer.Initializer";
    logUtil: ?*LogUtil = null,
    userJdbcDriver: ?*String = null,
    userName: ?*String = null,
    userUserName: ?*String = null,
    userPassword: ?*String = null,
    userSchema: ?*String = null,
    userServer: ?*String = null,
    userPort: ?*String = null,
    historyJdbcDriver: ?*String = null,
    historyName: ?*String = null,
    historyUserName: ?*String = null,
    historyPassword: ?*String = null,
    historySchema: ?*String = null,
    historyServer: ?*String = null,
    historyPort: ?*String = null,
    logJdbcDriver: ?*String = null,
    logName: ?*String = null,
    logUserName: ?*String = null,
    logPassword: ?*String = null,
    logSchema: ?*String = null,
    logServer: ?*String = null,
    logPort: ?*String = null,
    inventoryJdbcDriver: ?*String = null,
    inventoryName: ?*String = null,
    inventoryUserName: ?*String = null,
    inventoryPassword: ?*String = null,
    inventorySchema: ?*String = null,
    inventoryServer: ?*String = null,
    inventoryPort: ?*String = null,
    staticPagesJdbcDriver: ?*String = null,
    staticPagesName: ?*String = null,
    staticPagesUserName: ?*String = null,
    staticPagesPassword: ?*String = null,
    staticPagesSchema: ?*String = null,
    staticPagesServer: ?*String = null,
    staticPagesPort: ?*String = null,
    const MAXDB: i32 = 30;
    const MAX: i32 = 16;
    const MIN: i32 = 4;
    const MINPASSWORD: i32 = 0;

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.userJdbcDriver = null;
        this.userName = null;
        this.userUserName = null;
        this.userPassword = null;
        this.userSchema = null;
        this.userServer = null;
        this.userPort = null;
        this.historyJdbcDriver = null;
        this.historyName = null;
        this.historyUserName = null;
        this.historyPassword = null;
        this.historySchema = null;
        this.historyServer = null;
        this.historyPort = null;
        this.logJdbcDriver = null;
        this.logName = null;
        this.logUserName = null;
        this.logPassword = null;
        this.logSchema = null;
        this.logServer = null;
        this.logPort = null;
        this.inventoryJdbcDriver = null;
        this.inventoryName = null;
        this.inventoryUserName = null;
        this.inventoryPassword = null;
        this.inventorySchema = null;
        this.inventoryServer = null;
        this.inventoryPort = null;
        this.staticPagesJdbcDriver = null;
        this.staticPagesName = null;
        this.staticPagesUserName = null;
        this.staticPagesPassword = null;
        this.staticPagesSchema = null;
        this.staticPagesServer = null;
        this.staticPagesPort = null;
    }
    

    pub fn create1(map: ?*Map) *Self {
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
        _ = Inheritance.call(this, "getFormData", .{ hashMap });
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(initHashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "getFormData", .{ initHashMap });
        return this;
    }
    

    pub fn getFormData(self: *Self, hashMap: ?*HashMap) void {
        { // try
            const initializerData: ?*InitializerData = Inheritance.upcast(?*InitializerData, InitializerData.getInstance());
            self.userJdbcDriver = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.CUSTOMERJDBCDRIVER }));
            self.userName = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.CUSTOMERNAME }));
            self.userUserName = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.CUSTOMERUSERNAME }));
            self.userPassword = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.CUSTOMERPASSWORD }));
            self.userSchema = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.CUSTOMERSCHEMA }));
            self.userServer = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.CUSTOMERSERVER }));
            self.userPort = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.CUSTOMERPORT }));
            self.historyJdbcDriver = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.HISTORYJDBCDRIVER }));
            self.historyName = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.HISTORYNAME }));
            self.historyUserName = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.HISTORYUSERNAME }));
            self.historyPassword = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.HISTORYPASSWORD }));
            self.historySchema = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.HISTORYSCHEMA }));
            self.historyServer = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.HISTORYSERVER }));
            self.historyPort = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.HISTORYPORT }));
            self.logJdbcDriver = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.LOGJDBCDRIVER }));
            self.logName = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.LOGNAME }));
            self.logUserName = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.LOGUSERNAME }));
            self.logPassword = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.LOGPASSWORD }));
            self.logSchema = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.LOGSCHEMA }));
            self.logServer = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.LOGSERVER }));
            self.logPort = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.LOGPORT }));
            self.inventoryJdbcDriver = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.INVENTORYJDBCDRIVER }));
            self.inventoryName = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.INVENTORYNAME }));
            self.inventoryUserName = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.INVENTORYUSERNAME }));
            self.inventoryPassword = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.INVENTORYPASSWORD }));
            self.inventorySchema = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.INVENTORYSCHEMA }));
            self.inventoryServer = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.INVENTORYSERVER }));
            self.inventoryPort = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.INVENTORYPORT }));
            self.staticPagesJdbcDriver = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.STATICPAGESJDBCDRIVER }));
            self.staticPagesName = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.STATICPAGESNAME }));
            self.staticPagesUserName = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.STATICPAGESUSERNAME }));
            self.staticPagesPassword = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.STATICPAGESPASSWORD }));
            self.staticPagesSchema = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.STATICPAGESSCHEMA }));
            self.staticPagesServer = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.STATICPAGESSERVER }));
            self.staticPagesPort = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ initializerData.?.STATICPAGESPORT }));
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
        if (!Inheritance.call(self, "isJdbcDriverValid", .{ self.userJdbcDriver })) {
            isValid_ = false;
        }
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.userName, Initializer.MIN, Initializer.MAXDB })) {
            isValid_ = false;
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.userUserName, Initializer.MIN, Initializer.MAX })) {
            isValid_ = false;
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.userPassword, Initializer.MINPASSWORD, Initializer.MAX })) {
            isValid_ = false;
        }
        if (!Inheritance.call(self, "isJdbcDriverValid", .{ self.historyJdbcDriver })) {
            isValid_ = false;
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.historyName, Initializer.MIN, Initializer.MAXDB })) {
            isValid_ = false;
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.historyUserName, Initializer.MIN, Initializer.MAX })) {
            isValid_ = false;
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.historyPassword, Initializer.MINPASSWORD, Initializer.MAX })) {
            isValid_ = false;
        }
        if (!Inheritance.call(self, "isJdbcDriverValid", .{ self.logJdbcDriver })) {
            isValid_ = false;
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.logName, Initializer.MIN, Initializer.MAXDB })) {
            isValid_ = false;
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.logUserName, Initializer.MIN, Initializer.MAX })) {
            isValid_ = false;
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.logPassword, Initializer.MINPASSWORD, Initializer.MAX })) {
            isValid_ = false;
        }
        if (!Inheritance.call(self, "isJdbcDriverValid", .{ self.inventoryJdbcDriver })) {
            isValid_ = false;
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.inventoryName, Initializer.MIN, Initializer.MAXDB })) {
            isValid_ = false;
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.inventoryUserName, Initializer.MIN, Initializer.MAX })) {
            isValid_ = false;
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.inventoryPassword, Initializer.MINPASSWORD, Initializer.MAX })) {
            isValid_ = false;
        }
        if (!Inheritance.call(self, "isJdbcDriverValid", .{ self.staticPagesJdbcDriver })) {
            isValid_ = false;
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.staticPagesName, Initializer.MIN, Initializer.MAXDB })) {
            isValid_ = false;
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.staticPagesUserName, Initializer.MIN, Initializer.MAX })) {
            isValid_ = false;
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.staticPagesPassword, Initializer.MINPASSWORD, Initializer.MAX })) {
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
    

    pub fn getJdbcDriverSolutionInfo(self: *Self) ?*String {
        _ = self;
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("The following describes the possible problems and solutions regarding the Jdbc Driver error(s):<p/>") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("1. A JDBC driver you specified is not in your classpath.<br/>") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Solution 1: Move the JDBC driver into any directory specified in the existing classpath. <br/>") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Solution 2: Add the directory that contains the JDBC driver to the classpath.<br/>") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Solution 3: Add the JDBC driver to the WEB-INF/lib directory where you installed this webapp.<br/>") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("2. The JDBC driver you specified does not exit.<br/>") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Solution: Get a JDBC driver. <br/>") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("3. The JDBC driver you specified is not valid.<br/>") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Solution: Use a valid JDBC driver.<p/>") });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getInvalidInfo(self: *Self) ?*String {
        var isJdbcDriversValid: bool = true;
        const stringBuffer: ?*StringMaker = StringMaker.create();
        if (!Inheritance.call(self, "isJdbcDriverValid", .{ self.userJdbcDriver })) {
            isJdbcDriversValid = false;
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self, "getJdbcDriverValidationInfo", .{ self.userJdbcDriver }) });
        }
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.userName, Initializer.MIN, Initializer.MAXDB })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.plus(String.plus(String.literal("User db name should be < "), Initializer.MAXDB), String.literal(" and > ")), Initializer.MIN), String.literal(" characters in length.<br />")) });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.userUserName, Initializer.MIN, Initializer.MAX })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.plus(String.plus(String.literal("User db username should be < "), Initializer.MAX), String.literal(" and > ")), Initializer.MIN), String.literal(" characters in length.<br />")) });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.userPassword, Initializer.MINPASSWORD, Initializer.MAX })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.plus(String.plus(String.literal("User DB password should be < "), Initializer.MAX), String.literal(" and > ")), Initializer.MINPASSWORD), String.literal(" characters in length.<br />")) });
        }
        if (!Inheritance.call(self, "isJdbcDriverValid", .{ self.historyJdbcDriver })) {
            isJdbcDriversValid = false;
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self, "getJdbcDriverValidationInfo", .{ self.historyJdbcDriver }) });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.historyName, Initializer.MIN, Initializer.MAXDB })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.plus(String.plus(String.literal("History db should be < "), Initializer.MAXDB), String.literal(" and > ")), Initializer.MIN), String.literal(" characters in length.<br />")) });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.historyUserName, Initializer.MIN, Initializer.MAX })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.plus(String.plus(String.literal("History db username should be < "), Initializer.MAX), String.literal(" and > ")), Initializer.MIN), String.literal(" characters in length.<br />")) });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.historyPassword, Initializer.MINPASSWORD, Initializer.MAX })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.plus(String.plus(String.literal("History db password should be < "), Initializer.MAX), String.literal(" and > ")), Initializer.MINPASSWORD), String.literal(" characters in length.<br />")) });
        }
        if (!Inheritance.call(self, "isJdbcDriverValid", .{ self.logJdbcDriver })) {
            isJdbcDriversValid = false;
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self, "getJdbcDriverValidationInfo", .{ self.logJdbcDriver }) });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.logName, Initializer.MIN, Initializer.MAXDB })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.plus(String.plus(String.literal("Log db should be < "), Initializer.MAXDB), String.literal(" and > ")), Initializer.MIN), String.literal(" characters in length.<br />")) });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.logUserName, Initializer.MIN, Initializer.MAX })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.plus(String.plus(String.literal("Log db username should be < "), Initializer.MAX), String.literal(" and > ")), Initializer.MIN), String.literal(" characters in length.<br />")) });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.logPassword, Initializer.MINPASSWORD, Initializer.MAX })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.plus(String.plus(String.literal("Log db password should be < "), Initializer.MAX), String.literal(" and > ")), Initializer.MINPASSWORD), String.literal(" characters in length.<br />")) });
        }
        if (!Inheritance.call(self, "isJdbcDriverValid", .{ self.inventoryJdbcDriver })) {
            isJdbcDriversValid = false;
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self, "getJdbcDriverValidationInfo", .{ self.inventoryJdbcDriver }) });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.inventoryName, Initializer.MIN, Initializer.MAXDB })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.plus(String.plus(String.literal("Inventory db should be < "), Initializer.MAXDB), String.literal(" and > ")), Initializer.MIN), String.literal(" characters in length.<br />")) });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.inventoryUserName, Initializer.MIN, Initializer.MAX })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.plus(String.plus(String.literal("Inventory db username should be < "), Initializer.MAX), String.literal(" and > ")), Initializer.MIN), String.literal(" characters in length.<br />")) });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.inventoryPassword, Initializer.MINPASSWORD, Initializer.MAX })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.plus(String.plus(String.literal("Inventory DB password should be < "), Initializer.MAX), String.literal(" and > ")), Initializer.MINPASSWORD), String.literal(" characters in length.<br />")) });
        }
        if (!Inheritance.call(self, "isJdbcDriverValid", .{ self.staticPagesJdbcDriver })) {
            isJdbcDriversValid = false;
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self, "getJdbcDriverValidationInfo", .{ self.staticPagesJdbcDriver }) });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.staticPagesName, Initializer.MIN, Initializer.MAXDB })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.plus(String.plus(String.literal("Static Pages db should be < "), Initializer.MAXDB), String.literal(" and > ")), Initializer.MIN), String.literal(" characters in length.<br />")) });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.staticPagesUserName, Initializer.MIN, Initializer.MAX })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.plus(String.plus(String.literal("Static Pages db username should be < "), Initializer.MAX), String.literal(" and > ")), Initializer.MIN), String.literal(" characters in length.<br />")) });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidNotRequired", .{ self.staticPagesPassword, Initializer.MINPASSWORD, Initializer.MAX })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.plus(String.plus(String.plus(String.plus(String.literal("Static Pages DB password should be < "), Initializer.MAX), String.literal(" and > ")), Initializer.MINPASSWORD), String.literal(" characters in length.<br />")) });
        }
        if (!isJdbcDriversValid) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.getJdbcDriverSolutionInfo() });
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    // throws Exception
    pub fn set(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Creating DB connection files"), self, String.literal("set()") });
        const userDbInitInfo: ?*UserDbInitInfo = Inheritance.callStatic(UserDbInitInfo, "create1", .{ false });
        _ = Inheritance.call(userDbInitInfo.?, "setJdbcDriver", .{ self.userJdbcDriver });
        _ = Inheritance.call(userDbInitInfo.?, "setName", .{ self.userName });
        _ = Inheritance.call(userDbInitInfo.?, "setUserName", .{ self.userUserName });
        _ = Inheritance.call(userDbInitInfo.?, "setPassword", .{ self.userPassword });
        _ = Inheritance.call(userDbInitInfo.?, "setSchema", .{ self.userSchema });
        _ = Inheritance.call(userDbInitInfo.?, "setServer", .{ self.userServer });
        _ = Inheritance.call(userDbInitInfo.?, "setPort", .{ self.userPort });
        _ = Inheritance.call(userDbInitInfo.?, "setHasRead", .{ true });
        _ = Inheritance.receiver(userDbInitInfo.?, "write").write();
        const historyDbInitInfo: ?*HistoryDbInitInfo = Inheritance.callStatic(HistoryDbInitInfo, "create1", .{ false });
        _ = Inheritance.call(historyDbInitInfo.?, "setJdbcDriver", .{ self.historyJdbcDriver });
        _ = Inheritance.call(historyDbInitInfo.?, "setName", .{ self.historyName });
        _ = Inheritance.call(historyDbInitInfo.?, "setUserName", .{ self.historyUserName });
        _ = Inheritance.call(historyDbInitInfo.?, "setPassword", .{ self.historyPassword });
        _ = Inheritance.call(historyDbInitInfo.?, "setSchema", .{ self.historySchema });
        _ = Inheritance.call(historyDbInitInfo.?, "setServer", .{ self.historyServer });
        _ = Inheritance.call(historyDbInitInfo.?, "setPort", .{ self.historyPort });
        _ = Inheritance.call(historyDbInitInfo.?, "setHasRead", .{ true });
        _ = Inheritance.receiver(historyDbInitInfo.?, "write").write();
        const logDbInitInfo: ?*LogDbInitInfo = Inheritance.callStatic(LogDbInitInfo, "create1", .{ false });
        _ = Inheritance.call(logDbInitInfo.?, "setJdbcDriver", .{ self.logJdbcDriver });
        _ = Inheritance.call(logDbInitInfo.?, "setName", .{ self.logName });
        _ = Inheritance.call(logDbInitInfo.?, "setUserName", .{ self.logUserName });
        _ = Inheritance.call(logDbInitInfo.?, "setPassword", .{ self.logPassword });
        _ = Inheritance.call(logDbInitInfo.?, "setSchema", .{ self.logSchema });
        _ = Inheritance.call(logDbInitInfo.?, "setServer", .{ self.logServer });
        _ = Inheritance.call(logDbInitInfo.?, "setPort", .{ self.logPort });
        _ = Inheritance.call(logDbInitInfo.?, "setHasRead", .{ true });
        _ = Inheritance.receiver(logDbInitInfo.?, "write").write();
        const staticPagesDbInitInfo: ?*StaticPagesDbInitInfo = Inheritance.callStatic(StaticPagesDbInitInfo, "create1", .{ false });
        _ = Inheritance.call(staticPagesDbInitInfo.?, "setJdbcDriver", .{ self.staticPagesJdbcDriver });
        _ = Inheritance.call(staticPagesDbInitInfo.?, "setName", .{ self.staticPagesName });
        _ = Inheritance.call(staticPagesDbInitInfo.?, "setUserName", .{ self.staticPagesUserName });
        _ = Inheritance.call(staticPagesDbInitInfo.?, "setPassword", .{ self.staticPagesPassword });
        _ = Inheritance.call(staticPagesDbInitInfo.?, "setSchema", .{ self.staticPagesSchema });
        _ = Inheritance.call(staticPagesDbInitInfo.?, "setServer", .{ self.staticPagesServer });
        _ = Inheritance.call(staticPagesDbInitInfo.?, "setPort", .{ self.staticPagesPort });
        _ = Inheritance.call(staticPagesDbInitInfo.?, "setHasRead", .{ true });
        _ = Inheritance.receiver(staticPagesDbInitInfo.?, "write").write();
        const inventoryDbInitInfo: ?*InventoryDbInitInfo = Inheritance.callStatic(InventoryDbInitInfo, "create1", .{ false });
        _ = Inheritance.call(inventoryDbInitInfo.?, "setJdbcDriver", .{ self.inventoryJdbcDriver });
        _ = Inheritance.call(inventoryDbInitInfo.?, "setName", .{ self.inventoryName });
        _ = Inheritance.call(inventoryDbInitInfo.?, "setUserName", .{ self.inventoryUserName });
        _ = Inheritance.call(inventoryDbInitInfo.?, "setPassword", .{ self.inventoryPassword });
        _ = Inheritance.call(inventoryDbInitInfo.?, "setSchema", .{ self.inventorySchema });
        _ = Inheritance.call(inventoryDbInitInfo.?, "setServer", .{ self.inventoryServer });
        _ = Inheritance.call(inventoryDbInitInfo.?, "setPort", .{ self.inventoryPort });
        _ = Inheritance.call(inventoryDbInitInfo.?, "setHasRead", .{ true });
        _ = Inheritance.receiver(inventoryDbInitInfo.?, "write").write();
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Created DB connection files"), self, String.literal("set()") });
    }
};


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
// package org.allbinary.data.tables.user

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const UserDbInitInfo = @import("org/allbinary/business/init/db/UserDbInitInfo.zig").UserDbInitInfo;
const CreateUserFactory = @import("org/allbinary/business/user/CreateUserFactory.zig").CreateUserFactory;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const UserInterface = @import("org/allbinary/business/user/UserInterface.zig").UserInterface;
const User = @import("org/allbinary/business/user/modules/User.zig").User;
const UserRole = @import("org/allbinary/business/user/role/UserRole.zig").UserRole;
const UserRoleData = @import("org/allbinary/business/user/role/UserRoleData.zig").UserRoleData;
const UserRoleFactory = @import("org/allbinary/business/user/role/UserRoleFactory.zig").UserRoleFactory;
const GLOBALS2 = @import("org/allbinary/globals/GLOBALS2.zig").GLOBALS2;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlBean = @import("org/allbinary/logic/communication/sql/AbSqlBean.zig").AbSqlBean;
const SuperCrypt = @import("org/allbinary/logic/control/crypt/SuperCrypt.zig").SuperCrypt;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const UserEntityInterface = @import("org/allbinary/data/tables/user/UserEntityInterface.zig").UserEntityInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const UserEntity = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.UserEntity";
    pub const java_interfaces = .{ UserEntityInterface };
    base: AbSqlBean = undefined,
    logUtil: ?*LogUtil = null,
    tableName: ?*String = null,
    COMMAND_SUCCESS_FOR_USER: ?*String = null,
    PASSWORD_LABEL: ?*String = null,
    EQUALS: ?*String = null,
    COMMAND_SUCCESS_BUT_LOGIN_FAILED: ?*String = null,
    INVALID_PASSWORD_LABEL: ?*String = null,
    NOT_EQUAL: ?*String = null,
    END_QUOTES: ?*String = null,
    // Implements UserEntityInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.tableName = String.literal("user");
        this.COMMAND_SUCCESS_FOR_USER = String.literal("Command Success for user: ");
        this.PASSWORD_LABEL = String.literal(" Password: ");
        this.EQUALS = String.literal("==");
        this.COMMAND_SUCCESS_BUT_LOGIN_FAILED = String.literal("Command Success but login failed for user: ");
        this.INVALID_PASSWORD_LABEL = String.literal(" Password: \n\"");
        this.NOT_EQUAL = String.literal("\"!=\"");
        this.END_QUOTES = Inheritance.upcast(?*String, CommonSeps.getInstance().?.QUOTE);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbSqlBean, "create1", .{ UserDbInitInfo.create() }).*;
        this.initFields();
        _ = Inheritance.call(this, "setTableName", .{ this.tableName });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn insert(self: *Self, values: ?*BasicArrayList) void {
        { // try
            _ = Inheritance.call(&self.base, "insert", .{ values });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, INSERT });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, INSERT, e });
//             }
    }
    

    // throws Exception
    pub fn getAdministrators(self: *Self) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getUsersWithRole", .{ UserRoleFactory.getInstance().?.ADMINISTRATOR }));
    }
    

    // throws Exception
    pub fn getStoreManagers(self: *Self, storeFrontInterface: ?*StoreFrontInterface) ?*BasicArrayList {
        const keysAndValues: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const usersVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(keysAndValues.?, "put", .{ Object.toString(Object.of(UserRoleData.NAME)), Object.toString(Object.of(UserRoleFactory.getInstance().?.STOREMANAGER)) });
        _ = Inheritance.call(keysAndValues.?, "put", .{ UserData.PERMISSIONS, Inheritance.receiver(storeFrontInterface.?, "getName").getName() });
        const usersHashMapVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(&self.base, "getRows", .{ keysAndValues }));
        const size: i32 = usersHashMapVector.?.size();
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const userHashMap: ?*HashMap = Inheritance.cast(?*HashMap, Inheritance.call(usersHashMapVector.?, "get", .{ i }));
            if (userHashMap != null) {
                _ = Inheritance.call(usersVector.?, "add", .{ Inheritance.callStatic(User, "create1", .{ userHashMap }) });
            }
            }
        }
        return usersVector;
    }
    

    // throws Exception
    pub fn getCustomers(self: *Self) ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getUsersWithRole", .{ UserRoleFactory.getInstance().?.CUSTOMER }));
    }
    

    // throws Exception
    pub fn getUsersWithRole(self: *Self, userRole: ?*UserRole) ?*BasicArrayList {
        const keysAndValues: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const usersVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(keysAndValues.?, "put", .{ Object.toString(Object.of(UserRoleData.NAME)), Object.toString(Object.of(userRole)) });
        const usersHashMapVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(&self.base, "getRows", .{ keysAndValues }));
        const size: i32 = usersHashMapVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const userHashMap: ?*HashMap = Inheritance.cast(?*HashMap, Inheritance.call(usersHashMapVector.?, "get", .{ index }));
            if (userHashMap != null) {
                _ = Inheritance.call(usersVector.?, "add", .{ Inheritance.callStatic(User, "create1", .{ userHashMap }) });
            }
            }
        }
        return usersVector;
    }
    

    // throws Exception
    pub fn getUsers(self: *Self, storeFrontInterface: ?*StoreFrontInterface) ?*BasicArrayList {
        const keysAndValues: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const usersVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(keysAndValues.?, "put", .{ StoreFrontData.getInstance().?.NAME, Inheritance.receiver(storeFrontInterface.?, "getName").getName() });
        const usersHashMapVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(&self.base, "getRows", .{ keysAndValues }));
        const size: i32 = usersHashMapVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const userHashMap: ?*HashMap = Inheritance.cast(?*HashMap, Inheritance.call(usersHashMapVector.?, "get", .{ index }));
            if (userHashMap != null) {
                _ = Inheritance.call(usersVector.?, "add", .{ Inheritance.callStatic(User, "create1", .{ userHashMap }) });
            }
            }
        }
        return usersVector;
    }
    

    // throws Exception
    pub fn getUser(self: *Self, userName: ?*String) ?*UserInterface {
        const row: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(row.?, "put", .{ UserData.USERNAME, userName });
        const userHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.call(&self.base, "getRow", .{ row }));
        if (userHashMap != null) {
            return Inheritance.upcast(?*UserInterface, Inheritance.callStatic(CreateUserFactory, "getInstance", .{ userHashMap }));
        } else {
            return null;
        }
    }
    

    pub fn deleteWhere(self: *Self, key: ?*String, value: ?*String) void {
        { // try
            _ = Inheritance.call(&self.base, "deleteWhere", .{ key, value });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.SUCCESS, self, String.literal("deleteWhere") });
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("deleteWhere"), e });
//             }
    }
    

    pub fn login(self: *Self, userName: ?*String, password: ?*String) ?*String {
        { // try
            var isUserNameAndPasswordCorrect: i32 = 0;
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(&self.base, "getField", .{ UserData.USERNAME, userName, UserData.PASSWORD }));
            const encryption: ?*String = Inheritance.upcast(?*String, Inheritance.call(&self.base, "getField", .{ UserData.USERNAME, userName, EntryData.getInstance().?.ENCRYPTION }));
            if (encryption != null and Inheritance.call(encryption.?, "compareTo", .{ Inheritance.fieldPointer(self, "stringUtil").*.?.EMPTY_STRING }) != 0) {
                isUserNameAndPasswordCorrect = Inheritance.call(result.?, "compareTo", .{ Inheritance.call(Inheritance.callStatic(SuperCrypt, "create1", .{ Inheritance.callStatic(Integer, "create1", .{ encryption }).intValue() }), "encrypt", .{ password }) });
            } else {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.literal("Command Success but login failed for user: "), userName), String.literal(" because user did not exist")), self, String.literal("login") });
                }
                return Inheritance.upcast(?*String, GLOBALS2.LOGINFAILED);
            }
            if (isUserNameAndPasswordCorrect == 0) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ self.COMMAND_SUCCESS_FOR_USER });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ userName });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ self.PASSWORD_LABEL });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ password });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ self.EQUALS });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ result });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("login") });
                }
                return Inheritance.upcast(?*String, GLOBALS2.LOGINSUCCESS);
            } else {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    const stringBuffer: ?*StringMaker = StringMaker.create();
                    _ = Inheritance.call(stringBuffer.?, "append", .{ self.COMMAND_SUCCESS_BUT_LOGIN_FAILED });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ userName });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ self.INVALID_PASSWORD_LABEL });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(Inheritance.callStatic(SuperCrypt, "create1", .{ Inheritance.callStatic(Integer, "create1", .{ encryption }).intValue() }), "encrypt", .{ password }) });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ self.NOT_EQUAL });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ result });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ self.END_QUOTES });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("login") });
                }
                return Inheritance.upcast(?*String, GLOBALS2.LOGINFAILED);
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("login"), e });
//             }
//             return String.literal("Error");
    }
    

    pub fn update(self: *Self, userName: ?*String, updatedValues: ?*HashMap) void {
        _ = Inheritance.call(&self.base, "updateWhere", .{ UserData.USERNAME, userName, updatedValues });
    }
    

    pub fn dropTables(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.base.dropTable());
    }
    

    pub fn createTableStatement(self: *Self) ?*String {
        const entryData: ?*EntryData = Inheritance.upcast(?*EntryData, EntryData.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.CREATE_TABLE }).?, "append", .{ self.tableName }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.START }).?, "append", .{ UserData.USERNAME }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ UserData.PREFIXNAME }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ UserData.FIRSTNAME }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ UserData.LASTNAME }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ UserData.MIDDLENAME }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ UserData.SUFFIXNAME }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ UserData.COMPANY }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ UserData.POSITIONATCOMPANY }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ UserData.MAINEMAIL }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ UserData.SECONDARYEMAIL }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ UserData.HOMEPHONE }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ UserData.CELLPHONE }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ UserData.WORKPHONE }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ UserData.OTHERCONTACT }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ UserData.ELECTRONICDEVICE }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ UserData.FAX }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ Object.toString(Object.of(UserRoleData.NAME)) }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ UserData.CONFIGURATION }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.BLOB_NOT_NULL }).?, "append", .{ UserData.PERMISSIONS }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ entryData.?.ENCRYPTION }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL }).?, "append", .{ UserData.SECRET }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ UserData.PASSWORD }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN_NOT_NULL }).?, "append", .{ entryData.?.ENABLE }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_CHAR_COLUMN }).?, "append", .{ entryData.?.TIMECREATED }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL }).?, "append", .{ entryData.?.LASTMODIFIED }).?, "append", .{ Inheritance.fieldPointer(self, "sqlTypeStrings").*.?.MAX_BIG_INT_UNSIGNED_NOT_NULL }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.PRIMARY_KEY }).?, "append", .{ UserData.USERNAME }).?, "append", .{ Inheritance.fieldPointer(self, "sqlStrings").*.?.END });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn createTable(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(&self.base, "createTable", .{ self.createTableStatement() }));
    }
};


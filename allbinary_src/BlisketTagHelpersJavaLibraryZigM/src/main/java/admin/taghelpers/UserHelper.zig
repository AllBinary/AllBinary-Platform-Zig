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
// package admin.taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const Portion = @import("org/allbinary/business/installer/Portion.zig").Portion;
const NewUserFactory = @import("org/allbinary/business/user/NewUserFactory.zig").NewUserFactory;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const UserInterface = @import("org/allbinary/business/user/UserInterface.zig").UserInterface;
const UserName = @import("org/allbinary/business/user/username/UserName.zig").UserName;
const UserEntityFactory = @import("org/allbinary/data/tables/user/UserEntityFactory.zig").UserEntityFactory;
const FREEBLISKET_PATH_GLOBALS = @import("org/allbinary/globals/FREEBLISKET_PATH_GLOBALS.zig").FREEBLISKET_PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const RequestParams = @import("org/allbinary/logic/communication/http/request/RequestParams.zig").RequestParams;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlTableUtil = @import("org/allbinary/logic/communication/sql/AbSqlTableUtil.zig").AbSqlTableUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const Table = @import("admin/taghelpers/Table.zig").Table;

pub const UserHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.UserHelper";
    base: Table = undefined,
    logUtil: ?*LogUtil = null,
    hashMap: ?*HashMap = null,
    pageContext: ?*PageContext = null,
    request: ?*HttpServletRequest = null,
    path: ?*String = null,
    portion: ?*Portion = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        
        
        
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Table.create().*;
        this.initFields();
        this.hashMap = hashMap;
        this.pageContext = pageContext;
        this.request = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
        this.path = Inheritance.upcast(@TypeOf(this.path), URLGLOBALS.getMainPath() + FREEBLISKET_PATH_GLOBALS.getInstance().?.XSLPATH);
        this.portion = Inheritance.callStatic(Portion, "create1", .{ hashMap });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn delete(self: *Self) ?*String {
        { // try
            const requestHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.callStatic(RequestParams, "create1", .{ self.request }).toHashMap());
            const userName: ?*UserName = Inheritance.callStatic(UserName, "create1", .{ requestHashMap });
            _ = Inheritance.call(UserEntityFactory.getInstance().?, "deleteWhere", .{ UserData.USERNAME, userName.?.get() });
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Successfully Removed the user with ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ UserData.USERNAME });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("=") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ userName.?.get() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" from to the user table") });
            const success: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("delete()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = Inheritance.upcast(?*String, String.plus(String.plus(String.literal("Failed to remove user with "), UserData.USERNAME), String.literal(" from User table"))); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("delete()"), e });
//             }
//             return @"error";
    }
    

    // throws Exception
    pub fn insert(self: *Self) ?*String {
        { // try
            const userInterface: ?*UserInterface = Inheritance.upcast(?*UserInterface, Inheritance.callStatic(NewUserFactory, "getInstance", .{ self.request, self.hashMap }));
            const enable: ?*String = Inheritance.cast(?*String, Inheritance.call(self.hashMap.?, "get", .{ EntryData.getInstance().?.ENABLE }));
            if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ enable })) {
                _ = Inheritance.call(userInterface.?, "setEnable", .{ enable });
            }
            const values: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(userInterface.?, "toVector").toVector());
            _ = Inheritance.call(UserEntityFactory.getInstance().?, "insert", .{ values });
            const success: ?*String = String.literal("New User Successfully added to the Users Table");
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("add()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to add User"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("add()"), e });
//             }
//             return @"error";
    }
    

    pub fn update(self: *Self) ?*String {
        { // try
            const user: ?*UserInterface = Inheritance.upcast(?*UserInterface, Inheritance.callStatic(NewUserFactory, "getInstance", .{ self.request, self.hashMap }));
            const values: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiver(user.?, "toHashMap").toHashMap());
            _ = Inheritance.call(UserEntityFactory.getInstance().?, "update", .{ Inheritance.receiver(user.?, "getUserName").getUserName(), values });
            const success: ?*String = String.literal("New User Successfully added to the Users Table");
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("update()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to add User"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("update()"), e });
//             }
//             return @"error";
    }
    

    pub fn drop(self: *Self) ?*String {
        { // try
            const success: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(UserEntityFactory.getInstance().?, "dropTable").dropTable());
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, Inheritance.fieldPointer(self, "commonStrings").*.?.DROP });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to drop user table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.DROP, e });
//             }
//             return @"error";
    }
    

    pub fn create(self: *Self) ?*String {
        { // try
            const success: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(UserEntityFactory.getInstance().?, "createTable").createTable());
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("create()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to create user table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("create()"), e });
//             }
//             return @"error";
    }
    

    pub fn restore(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Restore Successful");
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(AbSqlTableUtil.getInstance().?, "restoreTable", .{ UserEntityFactory.getInstance(), self.portion }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("restore()") });
            }
            return result;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to restore backup"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("restore()"), e });
//             }
//             return @"error";
    }
    

    pub fn backup(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Restore Successful");
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(AbSqlTableUtil.getInstance().?, "backupTable", .{ UserEntityFactory.getInstance() }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPER })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("backup()") });
            }
            return result;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to make backup"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("backup()"), e });
//             }
//             return @"error";
    }
};


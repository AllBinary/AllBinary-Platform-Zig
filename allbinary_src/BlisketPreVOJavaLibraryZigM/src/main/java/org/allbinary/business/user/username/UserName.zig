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
// package org.allbinary.business.user.username

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const UserName = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.username.UserName";
    logUtil: ?*LogUtil = null,
    userName: ?*String = null,
    var instance: ?*UserName = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = UserName.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn getInstance() ?*UserName {
        return Inheritance.upcast(?*UserName, UserName.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.userName = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ UserData.USERNAME }));
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            return Inheritance.upcast(?*Boolean, Inheritance.call(self, "isValid", .{ self.userName }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to validate form"), self, String.literal("isUserNameValid()"), e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn get(self: *Self) ?*String {
        return self.userName;
    }
    

    pub fn isValid1(self: *Self, aUserName: ?*String) ?*Boolean {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        { // try
            const booleanFactory: ?*BooleanFactory = Inheritance.upcast(?*BooleanFactory, BooleanFactory.getInstance());
            var valid: ?*Boolean = Inheritance.upcast(?*Boolean, booleanFactory.?.TRUE);
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VALIDATION })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("UserName: "), aUserName), self, commonStrings.?.IS_VALID });
            }
            if (!Inheritance.call(StringValidationUtil.getInstance().?, "isValidRequired", .{ aUserName, 5, UserData.MAXLEN })) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VALIDATION })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("UserName is invalid"), self, commonStrings.?.IS_VALID });
                }
                valid = Inheritance.upcast(@TypeOf(valid), booleanFactory.?.FALSE);
            }
            return valid;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to validate form"), self, commonStrings.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn getValidationInfo(aUserName: ?*String) ?*String {
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isValidRequired", .{ aUserName, 5, UserData.MAXLEN })) {
            return String.literal("Please enter a User Name with more than 5 characters.<br/>");
        }
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
};


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
// package org.allbinary.business.user.password

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const Random = @import("java/util/Random.zig").Random;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SuperCrypt = @import("org/allbinary/logic/control/crypt/SuperCrypt.zig").SuperCrypt;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Integer = @import("java/lang/Integer.zig").Integer;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const Password = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.password.Password";
    logUtil: ?*LogUtil = null,
    password: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(password: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.password = password;
        return this;
    }
    

    pub fn set(self: *Self, value: ?*String) void {
        self.password = value;
    }
    

    pub fn get(self: *Self) ?*String {
        return self.password;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        { // try
            var valid: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VALIDATION })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Password: "), self.password), self, commonStrings.?.IS_VALID });
            }
            if (!Inheritance.call(StringValidationUtil.getInstance().?, "isValidRequired", .{ self.password, 6, UserData.MAXLEN })) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VALIDATION })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Password is invalid"), self, commonStrings.?.IS_VALID });
                }
                valid = Inheritance.upcast(@TypeOf(valid), Boolean.FALSE);
            }
            return valid;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VALIDATIONERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to validate form"), String.literal("Password"), commonStrings.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn getValidationInfo(self: *Self) ?*String {
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isValidRequired", .{ self.password, 6, UserData.MAXLEN })) {
            return String.literal("Please enter a Password with more than 6 characters.<br />");
        }
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        return Inheritance.upcast(?*String, stringUtil.?.EMPTY_STRING);
    }
    

    pub fn toVector(self: *Self, secret: ?*String) ?*BasicArrayList {
        self.password = Inheritance.upcast(@TypeOf(self.password), Inheritance.call(StringUtil.getInstance().?, "getNonNull", .{ self.password }));
        const random: i32 = Random.create().nextIntBound(SuperCrypt.KEYMAX);
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(vector.?, "add", .{ String.valueOf(Inheritance.callStatic(Integer, "create1", .{ random }).?) });
        _ = Inheritance.call(vector.?, "add", .{ secret });
        _ = Inheritance.call(vector.?, "add", .{ Inheritance.call(Inheritance.callStatic(SuperCrypt, "create1", .{ random }), "encrypt", .{ self.password }) });
        return vector;
    }
    

    pub fn toHashMap(self: *Self, secret: ?*String) ?*HashMap {
        self.password = Inheritance.upcast(@TypeOf(self.password), Inheritance.call(StringUtil.getInstance().?, "getNonNull", .{ self.password }));
        const values: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const random: i32 = Random.create().nextIntBound(SuperCrypt.KEYMAX);
        _ = Inheritance.call(values.?, "put", .{ EntryData.getInstance().?.ENCRYPTION, String.valueOf(Inheritance.callStatic(Integer, "create1", .{ random }).?) });
        _ = Inheritance.call(values.?, "put", .{ UserData.SECRET, secret });
        _ = Inheritance.call(values.?, "put", .{ UserData.PASSWORD, Inheritance.call(Inheritance.callStatic(SuperCrypt, "create1", .{ random }), "encrypt", .{ self.password }) });
        return values;
    }
};


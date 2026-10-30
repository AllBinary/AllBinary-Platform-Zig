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
// package org.allbinary.logic.communication.smtp.configuration.server

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const EmailServerConfigurationData = @import("org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationData.zig").EmailServerConfigurationData;
const EmailServerConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationInterface.zig").EmailServerConfigurationInterface;

pub const EmailServerConfiguration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfiguration";
    pub const java_interfaces = .{ EmailServerConfigurationInterface };
    logUtil: ?*LogUtil = null,
    accountName: ?*String = null,
    password: ?*String = null,
    smtpServer: ?*String = null,
    // Implements EmailServerConfigurationInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.accountName = null;
        this.password = null;
        this.smtpServer = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(this.logUtil.?, "putF", .{ commonStrings.?.START, this, commonStrings.?.CONSTRUCTOR });
        }
        _ = Inheritance.call(this, "setSmtpServer", .{ StringUtil.getInstance().?.EMPTY_STRING });
        return this;
    }
    

    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(this.logUtil.?, "putF", .{ commonStrings.?.START, this, String.literal("EmailServerConfiguration(HashMap)") });
        }
        _ = Inheritance.call(this, "setAccountName", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ EmailServerConfigurationData.ACCOUNT })) });
        _ = Inheritance.call(this, "setPassword", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ EmailServerConfigurationData.PASSWORD })) });
        _ = Inheritance.call(this, "setSmtpServer", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ EmailServerConfigurationData.SERVER })) });
        _ = this.log();
        return this;
    }
    

    pub fn create3(account: ?*String, password: ?*String, server: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(this.logUtil.?, "putF", .{ commonStrings.?.START, this, String.literal("EmailServerConfiguration(HashMap)") });
        }
        _ = Inheritance.call(this, "setAccountName", .{ account });
        _ = Inheritance.call(this, "setPassword", .{ password });
        _ = Inheritance.call(this, "setSmtpServer", .{ server });
        _ = this.log();
        return this;
    }
    

    pub fn setSmtpServer(self: *Self, value: ?*String) void {
        self.smtpServer = value;
    }
    

    pub fn getSmtpServer(self: *Self) ?*String {
        return self.smtpServer;
    }
    

    pub fn getAccountName(self: *Self) ?*String {
        return self.accountName;
    }
    

    pub fn setAccountName(self: *Self, accountName: ?*String) void {
        self.accountName = accountName;
    }
    

    pub fn getPassword(self: *Self) ?*String {
        return self.password;
    }
    

    pub fn setPassword(self: *Self, password: ?*String) void {
        self.password = password;
    }
    

    pub fn log(self: *Self) void {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(self)), self, String.literal("EmailServerConfiguration") });
        }
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, String.plus(String.plus(String.plus(String.plus(String.plus(String.plus(String.literal("Email Server Configuration:\n"), String.literal("Smtp Server: \n")), self.getSmtpServer()), String.literal("\nAccount Name: ")), self.getAccountName()), String.literal("\nPassword: ")), self.getPassword()));
    }
};


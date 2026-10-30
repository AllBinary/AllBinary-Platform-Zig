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
// package org.allbinary.logic.communication.smtp.configuration.user.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const UserEmailEventConfigurationData = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationData.zig").UserEmailEventConfigurationData;
const UserEmailEventConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface.zig").UserEmailEventConfigurationInterface;

pub const UserEmailEventConfiguration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration";
    pub const java_interfaces = .{ UserEmailEventConfigurationInterface };
    logUtil: ?*LogUtil = null,
    name: ?*String = null,
    eventListenerClassPath: ?*String = null,
    // Implements UserEmailEventConfigurationInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.name = null;
        this.eventListenerClassPath = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setName", .{ StringUtil.getInstance().?.EMPTY_STRING });
        _ = Inheritance.call(this, "setEventListenerClassPath", .{ StringUtil.getInstance().?.EMPTY_STRING });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.literal("New"), this, String.literal(" Constructor") });
        }
        return this;
    }
    

    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setName", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ UserEmailEventConfigurationData.NAME })) });
        _ = Inheritance.call(this, "setEventListenerClassPath", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ UserEmailEventConfigurationData.LISTENER_CLASSPATH })) });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Log: "), this.log()), this, String.literal(" Constructor") });
        }
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        self.name = name;
    }
    

    pub fn getEventListenerClassPath(self: *Self) ?*String {
        return self.eventListenerClassPath;
    }
    

    pub fn setEventListenerClassPath(self: *Self, eventListenerClassPath: ?*String) void {
        self.eventListenerClassPath = eventListenerClassPath;
    }
    

    pub fn log(self: *Self) ?*String {
        return Inheritance.upcast(?*String, String.plus(String.plus(String.plus(String.plus(String.literal("\nUser Email Event Log Info:"), String.literal("\nName: ")), self.getName()), String.literal("\nEventListenerClassPath: ")), self.getEventListenerClassPath()));
    }
};


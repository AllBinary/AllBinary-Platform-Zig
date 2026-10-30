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
// package org.allbinary.logic.communication.smtp.configuration.user

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const UserEmailEventsConfiguration = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfiguration.zig").UserEmailEventsConfiguration;
const UserEmailEventsConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationInterface.zig").UserEmailEventsConfigurationInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const UserEmailConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface.zig").UserEmailConfigurationInterface;

pub const UserEmailConfiguration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration";
    pub const java_interfaces = .{ UserEmailConfigurationInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    userEmailEventsConfigurationInterface: ?*UserEmailEventsConfigurationInterface = null,
    // Implements UserEmailConfigurationInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.userEmailEventsConfigurationInterface = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.CONSTRUCTOR, this, this.commonStrings.?.CONSTRUCTOR });
        }
        _ = Inheritance.call(this, "setUserEmailEventsConfigurationInterface", .{ UserEmailEventsConfiguration.create() });
        return this;
    }
    

    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.CONSTRUCTOR, this, this.commonStrings.?.CONSTRUCTOR });
        }
        _ = Inheritance.call(this, "setUserEmailEventsConfigurationInterface", .{ Inheritance.callStatic(UserEmailEventsConfiguration, "create1", .{ hashMap }) });
        return this;
    }
    

    pub fn getUserEmailEventsConfigurationInterface(self: *Self) ?*UserEmailEventsConfigurationInterface {
        return self.userEmailEventsConfigurationInterface;
    }
    

    pub fn setUserEmailEventsConfigurationInterface(self: *Self, userEmailEventsConfigurationInterface: ?*UserEmailEventsConfigurationInterface) void {
        self.userEmailEventsConfigurationInterface = userEmailEventsConfigurationInterface;
    }
};


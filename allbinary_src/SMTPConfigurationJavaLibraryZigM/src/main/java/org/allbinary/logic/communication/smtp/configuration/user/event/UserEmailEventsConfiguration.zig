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
const UserInterface = @import("org/allbinary/business/user/UserInterface.zig").UserInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const UserEmailEventListenerInterface = @import("org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface.zig").UserEmailEventListenerInterface;
const UserEmailEventNameData = @import("org/allbinary/logic/communication/smtp/event/UserEmailEventNameData.zig").UserEmailEventNameData;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const UserEmailEventConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface.zig").UserEmailEventConfigurationInterface;
const UserEmailEventListenerFactory = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventListenerFactory.zig").UserEmailEventListenerFactory;
const UserEmailEventsConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationInterface.zig").UserEmailEventsConfigurationInterface;

pub const UserEmailEventsConfiguration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfiguration";
    pub const java_interfaces = .{ UserEmailEventsConfigurationInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    emailEventHashMap: ?*HashMap = null,
    // Implements UserEmailEventsConfigurationInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.emailEventHashMap = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = this.init();
        return this;
    }
    

    pub fn create1(hashMap: ?*HashMap) *Self {
        _ = hashMap;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = this.init();
        return this;
    }
    

    pub fn init(self: *Self) void {
        self.emailEventHashMap = Inheritance.upcast(@TypeOf(self.emailEventHashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.CONSTRUCTOR, self, String.literal(" Constructor") });
        }
    }
    

    pub fn getEventConfigurationHashMap(self: *Self) ?*HashMap {
        return self.emailEventHashMap;
    }
    

    pub fn addUserEmailEventConfiguration(self: *Self, userEmailEventConfigurationInterface: ?*UserEmailEventConfigurationInterface) void {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.EMAILLOGGING })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Adding: "), userEmailEventConfigurationInterface.?.log()), self, String.literal("addUserEmailEventConfiguration") });
        }
        _ = Inheritance.call(self.emailEventHashMap.?, "put", .{ userEmailEventConfigurationInterface.?.getName(), userEmailEventConfigurationInterface });
    }
    

    // throws Exception
    pub fn getEventListener(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, userEmailEventNameData: ?*UserEmailEventNameData, userInterface: ?*UserInterface) ?*UserEmailEventListenerInterface {
        const userEmailEventConfigurationInterface: ?*UserEmailEventConfigurationInterface = Inheritance.cast(?*UserEmailEventConfigurationInterface, Inheritance.call(self.emailEventHashMap.?, "get", .{ Object.toString(Object.of(userEmailEventNameData)) }));
        return Inheritance.upcast(?*UserEmailEventListenerInterface, Inheritance.callStatic(UserEmailEventListenerFactory, "getInstance", .{ abeClientInformation, userEmailEventConfigurationInterface, userInterface }));
    }
};


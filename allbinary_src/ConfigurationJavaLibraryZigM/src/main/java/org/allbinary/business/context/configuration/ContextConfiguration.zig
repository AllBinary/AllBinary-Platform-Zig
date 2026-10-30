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
// package org.allbinary.business.context.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const EmailServerConfiguration = @import("org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfiguration.zig").EmailServerConfiguration;
const EmailServerConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationInterface.zig").EmailServerConfigurationInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ContextConfigurationInterface = @import("org/allbinary/business/context/configuration/ContextConfigurationInterface.zig").ContextConfigurationInterface;

pub const ContextConfiguration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.configuration.ContextConfiguration";
    pub const java_interfaces = .{ ContextConfigurationInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    emailServerConfigurationInterface: ?*EmailServerConfigurationInterface = null,
    // Implements ContextConfigurationInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.emailServerConfigurationInterface = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, String.literal("ContextConfiguration") });
        _ = Inheritance.call(this, "setEmailServerConfigurationInterface", .{ Inheritance.cast(?*EmailServerConfigurationInterface, EmailServerConfiguration.create()) });
        return this;
    }
    

    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, String.literal("ContextConfiguration(HashMap)") });
        _ = Inheritance.call(this, "setEmailServerConfigurationInterface", .{ Inheritance.cast(?*EmailServerConfigurationInterface, Inheritance.callStatic(EmailServerConfiguration, "create1", .{ hashMap })) });
        return this;
    }
    

    pub fn getEmailServerConfigurationInterface(self: *Self) ?*EmailServerConfigurationInterface {
        return self.emailServerConfigurationInterface;
    }
    

    pub fn setEmailServerConfigurationInterface(self: *Self, emailServerConfigurationInterface: ?*EmailServerConfigurationInterface) void {
        self.emailServerConfigurationInterface = emailServerConfigurationInterface;
    }
};


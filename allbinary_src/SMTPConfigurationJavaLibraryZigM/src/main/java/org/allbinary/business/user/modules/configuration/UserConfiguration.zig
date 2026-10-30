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
// package org.allbinary.business.user.modules.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const TimeCreated = @import("org/allbinary/business/time/created/TimeCreated.zig").TimeCreated;
const TimeLastModified = @import("org/allbinary/business/time/modified/TimeLastModified.zig").TimeLastModified;
const UserEmailConfiguration = @import("org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfiguration.zig").UserEmailConfiguration;
const UserEmailConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface.zig").UserEmailConfigurationInterface;
const UserConfigurationInterface = @import("org/allbinary/business/user/modules/configuration/UserConfigurationInterface.zig").UserConfigurationInterface;

pub const UserConfiguration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.modules.configuration.UserConfiguration";
    pub const java_interfaces = .{ UserConfigurationInterface };
    userEmailConfigurationInterface: ?*UserEmailConfigurationInterface = null,
    timeCreated: ?*TimeCreated = null,
    timeLastModified: ?*TimeLastModified = null,
    // Implements UserConfigurationInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.userEmailConfigurationInterface = Inheritance.cast(?*UserEmailConfigurationInterface, UserEmailConfiguration.create());
        this.timeCreated = Inheritance.callStatic(TimeCreated, "create1", .{ 0 });
        this.timeLastModified = Inheritance.callStatic(TimeLastModified, "create1", .{ 0 });
        return this;
    }
    

    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.userEmailConfigurationInterface = Inheritance.cast(?*UserEmailConfigurationInterface, Inheritance.callStatic(UserEmailConfiguration, "create1", .{ hashMap }));
        this.timeCreated = Inheritance.callStatic(TimeCreated, "create1", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ EntryData.getInstance().?.TIMECREATED })) });
        this.timeLastModified = Inheritance.callStatic(TimeLastModified, "create1", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ EntryData.getInstance().?.LASTMODIFIED })) });
        return this;
    }
    

    pub fn getUserEmailConfigurationInterface(self: *Self) ?*UserEmailConfigurationInterface {
        return self.userEmailConfigurationInterface;
    }
    

    pub fn setUserEmailConfigurationInterface(self: *Self, userEmailConfigurationInterface: ?*UserEmailConfigurationInterface) void {
        self.userEmailConfigurationInterface = userEmailConfigurationInterface;
    }
    

    pub fn getTimeCreated(self: *Self) ?*TimeCreated {
        return self.timeCreated;
    }
    

    pub fn getTimeLastModified(self: *Self) ?*TimeLastModified {
        return self.timeLastModified;
    }
    

    pub fn setTimeCreated(self: *Self, timeCreated: ?*TimeCreated) void {
        self.timeCreated = timeCreated;
    }
    

    pub fn setTimeLastModified(self: *Self, timeLastModified: ?*TimeLastModified) void {
        self.timeLastModified = timeLastModified;
    }
};


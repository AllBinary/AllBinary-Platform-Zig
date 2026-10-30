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
const UserInterface = @import("org/allbinary/business/user/UserInterface.zig").UserInterface;
const UserEmailEventListenerInterface = @import("org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface.zig").UserEmailEventListenerInterface;
const AbeFactory = @import("org/allbinary/logic/system/loader/AbeFactory.zig").AbeFactory;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const UserEmailEventConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface.zig").UserEmailEventConfigurationInterface;

pub const UserEmailEventListenerFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventListenerFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(abeClientInformation: ?*AbeClientInformationInterface, userEmailEventConfigurationInterface: ?*UserEmailEventConfigurationInterface, userInterface: ?*UserInterface) ?*UserEmailEventListenerInterface {
        const params: []?Object = array_N65785: { const array_N65785_array = allocator.alloc(?Object, @intCast(1)) catch unreachable; @memset(array_N65785_array, null); break :array_N65785 array_N65785_array; };
        const classes: []?*anyopaque = array_N65840: { const array_N65840_array = allocator.alloc(?*anyopaque, @intCast(1)) catch unreachable; @memset(array_N65840_array, null); break :array_N65840 array_N65840_array; };
        classes[@intCast(0)] = Inheritance.upcast(@TypeOf(classes[@intCast(0)]), UserInterface);
        params[@intCast(0)] = Inheritance.cast(?Object, userInterface);
        return Inheritance.cast(?*UserEmailEventListenerInterface, Inheritance.call(AbeFactory.getInstance().?, "getInstance", .{ abeClientInformation, userEmailEventConfigurationInterface.?.getEventListenerClassPath(), classes, params }));
    }
};


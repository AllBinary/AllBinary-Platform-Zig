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
const UserEmailEventListenerInterface = @import("org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface.zig").UserEmailEventListenerInterface;
const UserEmailEventNameData = @import("org/allbinary/logic/communication/smtp/event/UserEmailEventNameData.zig").UserEmailEventNameData;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const UserEmailEventConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface.zig").UserEmailEventConfigurationInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const UserEmailEventsConfigurationInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getEventConfigurationHashMapFn: *const fn (pointer: *anyopaque) ?*HashMap,
    addUserEmailEventConfigurationFn: *const fn (pointer: *anyopaque, userEmailEventConfigurationInterface: ?*UserEmailEventConfigurationInterface) void,
    getEventListenerFn: *const fn (pointer: *anyopaque, abeClientInformation: ?*AbeClientInformationInterface, userEmailEventNameData: ?*UserEmailEventNameData, userInterface: ?*UserInterface) ?*UserEmailEventListenerInterface,

    pub fn getEventConfigurationHashMap(self: *Self) ?*HashMap {
        return self.getEventConfigurationHashMapFn(self.pointer);
    }

    pub fn addUserEmailEventConfiguration(self: *Self, userEmailEventConfigurationInterface: ?*UserEmailEventConfigurationInterface) void {
        return self.addUserEmailEventConfigurationFn(self.pointer, userEmailEventConfigurationInterface);
    }

    pub fn getEventListener(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, userEmailEventNameData: ?*UserEmailEventNameData, userInterface: ?*UserInterface) ?*UserEmailEventListenerInterface {
        return self.getEventListenerFn(self.pointer, abeClientInformation, userEmailEventNameData, userInterface);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn getEventConfigurationHashMap(pointer: *anyopaque) ?*HashMap {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*HashMap, Inheritance.receiver(implementation, "getEventConfigurationHashMap").getEventConfigurationHashMap());
            }
            fn addUserEmailEventConfiguration(pointer: *anyopaque, userEmailEventConfigurationInterface: ?*UserEmailEventConfigurationInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addUserEmailEventConfiguration").addUserEmailEventConfiguration(userEmailEventConfigurationInterface);
            }
            fn getEventListener(pointer: *anyopaque, abeClientInformation: ?*AbeClientInformationInterface, userEmailEventNameData: ?*UserEmailEventNameData, userInterface: ?*UserInterface) ?*UserEmailEventListenerInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*UserEmailEventListenerInterface, Inheritance.receiver(implementation, "getEventListener").getEventListener(abeClientInformation, userEmailEventNameData, userInterface));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getEventConfigurationHashMapFn = Methods.getEventConfigurationHashMap, .addUserEmailEventConfigurationFn = Methods.addUserEmailEventConfiguration, .getEventListenerFn = Methods.getEventListener };
        return this;
    }
};


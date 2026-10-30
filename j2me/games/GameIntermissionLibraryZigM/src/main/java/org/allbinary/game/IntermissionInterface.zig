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
// package org.allbinary.game

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const IntermissionEnableListenerInterface = @import("org/allbinary/game/IntermissionEnableListenerInterface.zig").IntermissionEnableListenerInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const IntermissionInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.IntermissionInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getTimeDelayHelperFn: *const fn (pointer: *anyopaque) ?*TimeDelayHelper,
    isEnabledFn: *const fn (pointer: *anyopaque) bool,
    setEnabledFn: *const fn (pointer: *anyopaque, value: bool) void,
    setListenerFn: *const fn (pointer: *anyopaque, enableListener: ?*IntermissionEnableListenerInterface) void,

    pub fn getTimeDelayHelper(self: *Self) ?*TimeDelayHelper {
        return self.getTimeDelayHelperFn(self.pointer);
    }

    pub fn isEnabled(self: *Self) bool {
        return self.isEnabledFn(self.pointer);
    }

    pub fn setEnabled(self: *Self, value: bool) void {
        return self.setEnabledFn(self.pointer, value);
    }

    pub fn setListener(self: *Self, enableListener: ?*IntermissionEnableListenerInterface) void {
        return self.setListenerFn(self.pointer, enableListener);
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
            fn getTimeDelayHelper(pointer: *anyopaque) ?*TimeDelayHelper {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*TimeDelayHelper, Inheritance.receiver(implementation, "getTimeDelayHelper").getTimeDelayHelper());
            }
            fn isEnabled(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isEnabled").isEnabled();
            }
            fn setEnabled(pointer: *anyopaque, value: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setEnabled").setEnabled(value);
            }
            fn setListener(pointer: *anyopaque, enableListener: ?*IntermissionEnableListenerInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setListener").setListener(enableListener);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getTimeDelayHelperFn = Methods.getTimeDelayHelper, .isEnabledFn = Methods.isEnabled, .setEnabledFn = Methods.setEnabled, .setListenerFn = Methods.setListener };
        return this;
    }
};


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
// package org.allbinary.input.automation.actions.script.condition.processors.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ProfileActionScriptInputInterface = @import("org/allbinary/input/automation/actions/script/condition/processors/input/ProfileActionScriptInputInterface.zig").ProfileActionScriptInputInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

// Java interface: an implementation is a pointer and a table of functions
pub const KeyboardActionScriptInputInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface";
    pointer: *anyopaque,
    object: Object,
    base: ProfileActionScriptInputInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getDelayBetweenKeysFn: *const fn (pointer: *anyopaque) i32,
    getKeyArrayFn: *const fn (pointer: *anyopaque) []?*Integer,
    isPressFn: *const fn (pointer: *anyopaque) bool,
    isReleaseFn: *const fn (pointer: *anyopaque) bool,
    isNormalFn: *const fn (pointer: *anyopaque) bool,
    setPressFn: *const fn (pointer: *anyopaque, press: bool) void,
    setReleaseFn: *const fn (pointer: *anyopaque, release: bool) void,
    setNormalFn: *const fn (pointer: *anyopaque) void,
    getTextFn: *const fn (pointer: *anyopaque) ?*String,
    setTextFn: *const fn (pointer: *anyopaque, text: ?*String) void,
    logFn: *const fn (pointer: *anyopaque) void,

    pub fn getDelayBetweenKeys(self: *Self) i32 {
        return self.getDelayBetweenKeysFn(self.pointer);
    }

    pub fn getKeyArray(self: *Self) []?*Integer {
        return self.getKeyArrayFn(self.pointer);
    }

    pub fn isPress(self: *Self) bool {
        return self.isPressFn(self.pointer);
    }

    pub fn isRelease(self: *Self) bool {
        return self.isReleaseFn(self.pointer);
    }

    pub fn isNormal(self: *Self) bool {
        return self.isNormalFn(self.pointer);
    }

    pub fn setPress(self: *Self, press: bool) void {
        return self.setPressFn(self.pointer, press);
    }

    pub fn setRelease(self: *Self, release: bool) void {
        return self.setReleaseFn(self.pointer, release);
    }

    pub fn setNormal(self: *Self) void {
        return self.setNormalFn(self.pointer);
    }

    pub fn getText(self: *Self) ?*String {
        return self.getTextFn(self.pointer);
    }

    pub fn setText(self: *Self, text: ?*String) void {
        return self.setTextFn(self.pointer, text);
    }

    pub fn log(self: *Self) void {
        return self.logFn(self.pointer);
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
            fn getDelayBetweenKeys(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getDelayBetweenKeys").getDelayBetweenKeys();
            }
            fn getKeyArray(pointer: *anyopaque) []?*Integer {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getKeyArray").getKeyArray();
            }
            fn isPress(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isPress").isPress();
            }
            fn isRelease(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isRelease").isRelease();
            }
            fn isNormal(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isNormal").isNormal();
            }
            fn setPress(pointer: *anyopaque, press: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPress").setPress(press);
            }
            fn setRelease(pointer: *anyopaque, release: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setRelease").setRelease(release);
            }
            fn setNormal(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setNormal").setNormal();
            }
            fn getText(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getText").getText());
            }
            fn setText(pointer: *anyopaque, text: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setText").setText(text);
            }
            fn log(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "log").log();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = ProfileActionScriptInputInterface.of(object).?.*, .toStringFn = Methods.toString, .getDelayBetweenKeysFn = Methods.getDelayBetweenKeys, .getKeyArrayFn = Methods.getKeyArray, .isPressFn = Methods.isPress, .isReleaseFn = Methods.isRelease, .isNormalFn = Methods.isNormal, .setPressFn = Methods.setPress, .setReleaseFn = Methods.setRelease, .setNormalFn = Methods.setNormal, .getTextFn = Methods.getText, .setTextFn = Methods.setText, .logFn = Methods.log };
        return this;
    }
};


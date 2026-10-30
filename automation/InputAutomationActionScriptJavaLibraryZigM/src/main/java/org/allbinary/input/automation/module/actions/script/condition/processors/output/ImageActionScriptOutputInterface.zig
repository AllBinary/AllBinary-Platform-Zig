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
// package org.allbinary.input.automation.module.actions.script.condition.processors.output

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ImageTypes = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageTypes.zig").ImageTypes;
const ProfileActionScriptOutputInterface = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/ProfileActionScriptOutputInterface.zig").ProfileActionScriptOutputInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const ImageActionScriptOutputInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface";
    pointer: *anyopaque,
    object: Object,
    base: ProfileActionScriptOutputInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getImageTypesFn: *const fn (pointer: *anyopaque) ?*ImageTypes,
    setImageTypesFn: *const fn (pointer: *anyopaque, imageTypes: ?*ImageTypes) void,
    isSavedFn: *const fn (pointer: *anyopaque) bool,
    setSavedFn: *const fn (pointer: *anyopaque, saved: bool) void,
    isDisplayFn: *const fn (pointer: *anyopaque) bool,
    setDisplayFn: *const fn (pointer: *anyopaque, display: bool) void,
    logFn: *const fn (pointer: *anyopaque) void,

    pub fn getImageTypes(self: *Self) ?*ImageTypes {
        return self.getImageTypesFn(self.pointer);
    }

    pub fn setImageTypes(self: *Self, imageTypes: ?*ImageTypes) void {
        return self.setImageTypesFn(self.pointer, imageTypes);
    }

    pub fn isSaved(self: *Self) bool {
        return self.isSavedFn(self.pointer);
    }

    pub fn setSaved(self: *Self, saved: bool) void {
        return self.setSavedFn(self.pointer, saved);
    }

    pub fn isDisplay(self: *Self) bool {
        return self.isDisplayFn(self.pointer);
    }

    pub fn setDisplay(self: *Self, display: bool) void {
        return self.setDisplayFn(self.pointer, display);
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
            fn getImageTypes(pointer: *anyopaque) ?*ImageTypes {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*ImageTypes, Inheritance.receiver(implementation, "getImageTypes").getImageTypes());
            }
            fn setImageTypes(pointer: *anyopaque, imageTypes: ?*ImageTypes) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setImageTypes").setImageTypes(imageTypes);
            }
            fn isSaved(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isSaved").isSaved();
            }
            fn setSaved(pointer: *anyopaque, saved: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSaved").setSaved(saved);
            }
            fn isDisplay(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isDisplay").isDisplay();
            }
            fn setDisplay(pointer: *anyopaque, display: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setDisplay").setDisplay(display);
            }
            fn log(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "log").log();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = ProfileActionScriptOutputInterface.of(object).?.*, .toStringFn = Methods.toString, .getImageTypesFn = Methods.getImageTypes, .setImageTypesFn = Methods.setImageTypes, .isSavedFn = Methods.isSaved, .setSavedFn = Methods.setSaved, .isDisplayFn = Methods.isDisplay, .setDisplayFn = Methods.setDisplay, .logFn = Methods.log };
        return this;
    }
};


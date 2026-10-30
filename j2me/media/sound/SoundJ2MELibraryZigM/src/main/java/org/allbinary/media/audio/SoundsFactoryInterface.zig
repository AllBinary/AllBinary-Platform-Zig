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
// package org.allbinary.media.audio

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Sound = @import("org/allbinary/media/audio/Sound.zig").Sound;

// Java interface: an implementation is a pointer and a table of functions
pub const SoundsFactoryInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.SoundsFactoryInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    initFn: *const fn (pointer: *anyopaque) void,
    getSoundInterfaceArrayFn: *const fn (pointer: *anyopaque) []?*Sound,
    setInitializedFn: *const fn (pointer: *anyopaque, initialized: bool) void,
    isInitializedFn: *const fn (pointer: *anyopaque) bool,

    pub fn init(self: *Self) void {
        return self.initFn(self.pointer);
    }

    pub fn getSoundInterfaceArray(self: *Self) []?*Sound {
        return self.getSoundInterfaceArrayFn(self.pointer);
    }

    pub fn setInitialized(self: *Self, initialized: bool) void {
        return self.setInitializedFn(self.pointer, initialized);
    }

    pub fn isInitialized(self: *Self) bool {
        return self.isInitializedFn(self.pointer);
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
            fn init(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "init").init();
            }
            fn getSoundInterfaceArray(pointer: *anyopaque) []?*Sound {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getSoundInterfaceArray").getSoundInterfaceArray();
            }
            fn setInitialized(pointer: *anyopaque, initialized: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setInitialized").setInitialized(initialized);
            }
            fn isInitialized(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isInitialized").isInitialized();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .initFn = Methods.init, .getSoundInterfaceArrayFn = Methods.getSoundInterfaceArray, .setInitializedFn = Methods.setInitialized, .isInitializedFn = Methods.isInitialized };
        return this;
    }
};


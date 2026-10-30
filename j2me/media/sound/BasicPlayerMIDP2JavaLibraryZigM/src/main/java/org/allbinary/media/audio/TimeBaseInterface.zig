// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// const MediaException = @import("javax/microedition/media/MediaException.zig").MediaException;
// const TimeBase = @import("javax/microedition/media/TimeBase.zig").TimeBase;

// Java interface: an implementation is a pointer and a table of functions
pub const TimeBaseInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.TimeBaseInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getTimeBaseFn: *const fn (pointer: *anyopaque) ?*TimeBase,
    setTimeBaseFn: *const fn (pointer: *anyopaque, timeBase: ?*TimeBase) void,

    pub fn getTimeBase(self: *Self) ?*TimeBase {
        return self.getTimeBaseFn(self.pointer);
    }

    pub fn setTimeBase(self: *Self, timeBase: ?*TimeBase) void {
        return self.setTimeBaseFn(self.pointer, timeBase);
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
            fn getTimeBase(pointer: *anyopaque) ?*TimeBase {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*TimeBase, Inheritance.receiver(implementation, "getTimeBase").getTimeBase());
            }
            fn setTimeBase(pointer: *anyopaque, timeBase: ?*TimeBase) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTimeBase").setTimeBase(timeBase);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getTimeBaseFn = Methods.getTimeBase, .setTimeBaseFn = Methods.setTimeBase };
        return this;
    }
};


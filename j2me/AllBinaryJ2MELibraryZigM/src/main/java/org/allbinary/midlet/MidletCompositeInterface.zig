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
// package org.allbinary.midlet

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Displayable = @import("javax/microedition/lcdui/Displayable.zig").Displayable;
// const MIDlet = @import("javax/microedition/midlet/MIDlet.zig").MIDlet;
const AllBinaryMidlet = @import("org/allbinary/midlet/AllBinaryMidlet.zig").AllBinaryMidlet;

// Java interface: an implementation is a pointer and a table of functions
pub const MidletCompositeInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.midlet.MidletCompositeInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setMidletFn: *const fn (pointer: *anyopaque, midlet: ?*MIDlet) void,
    getMidletFn: *const fn (pointer: *anyopaque) ?*AllBinaryMidlet,
    getDisplayableFn: *const fn (pointer: *anyopaque) ?*Displayable,

    pub fn setMidlet(self: *Self, midlet: ?*MIDlet) void {
        return self.setMidletFn(self.pointer, midlet);
    }

    pub fn getMidlet(self: *Self) ?*AllBinaryMidlet {
        return self.getMidletFn(self.pointer);
    }

    pub fn getDisplayable(self: *Self) ?*Displayable {
        return self.getDisplayableFn(self.pointer);
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
            fn setMidlet(pointer: *anyopaque, midlet: ?*MIDlet) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setMidlet").setMidlet(midlet);
            }
            fn getMidlet(pointer: *anyopaque) ?*AllBinaryMidlet {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AllBinaryMidlet, Inheritance.receiver(implementation, "getMidlet").getMidlet());
            }
            fn getDisplayable(pointer: *anyopaque) ?*Displayable {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Displayable, Inheritance.receiver(implementation, "getDisplayable").getDisplayable());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .setMidletFn = Methods.setMidlet, .getMidletFn = Methods.getMidlet, .getDisplayableFn = Methods.getDisplayable };
        return this;
    }
};


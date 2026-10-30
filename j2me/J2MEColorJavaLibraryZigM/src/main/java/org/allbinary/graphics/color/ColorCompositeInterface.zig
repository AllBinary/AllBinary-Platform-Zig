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
// package org.allbinary.graphics.color

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorCompositeSetterInterface = @import("org/allbinary/graphics/color/BasicColorCompositeSetterInterface.zig").BasicColorCompositeSetterInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const ColorCompositeInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.color.ColorCompositeInterface";
    pointer: *anyopaque,
    object: Object,
    base: BasicColorCompositeSetterInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getBasicColorPFn: *const fn (pointer: *anyopaque) ?*BasicColor,

    pub fn getBasicColorP(self: *Self) ?*BasicColor {
        return self.getBasicColorPFn(self.pointer);
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
            fn getBasicColorP(pointer: *anyopaque) ?*BasicColor {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicColor, Inheritance.receiver(implementation, "getBasicColorP").getBasicColorP());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = BasicColorCompositeSetterInterface.of(object).?.*, .toStringFn = Methods.toString, .getBasicColorPFn = Methods.getBasicColorP };
        return this;
    }
};


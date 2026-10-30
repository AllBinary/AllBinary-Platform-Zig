// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.animation.text

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TextChangeListener = @import("org/allbinary/animation/text/TextChangeListener.zig").TextChangeListener;

// Java interface: an implementation is a pointer and a table of functions
pub const TextInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.text.TextInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setTextWithOnMeasureFn: *const fn (pointer: *anyopaque, text: ?*String, textChangeListener: ?*TextChangeListener) void,
    getTextFn: *const fn (pointer: *anyopaque) ?*String,
    setTextFn: *const fn (pointer: *anyopaque, text: ?*String) void,
    getFontHeightFn: *const fn (pointer: *anyopaque) i32,
    getWidthFn: *const fn (pointer: *anyopaque) i32,

    pub fn setTextWithOnMeasure(self: *Self, text: ?*String, textChangeListener: ?*TextChangeListener) void {
        return self.setTextWithOnMeasureFn(self.pointer, text, textChangeListener);
    }

    pub fn getText(self: *Self) ?*String {
        return self.getTextFn(self.pointer);
    }

    pub fn setText(self: *Self, text: ?*String) void {
        return self.setTextFn(self.pointer, text);
    }

    pub fn getFontHeight(self: *Self) i32 {
        return self.getFontHeightFn(self.pointer);
    }

    pub fn getWidth(self: *Self) i32 {
        return self.getWidthFn(self.pointer);
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
            fn setTextWithOnMeasure(pointer: *anyopaque, text: ?*String, textChangeListener: ?*TextChangeListener) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTextWithOnMeasure").setTextWithOnMeasure(text, textChangeListener);
            }
            fn getText(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getText").getText());
            }
            fn setText(pointer: *anyopaque, text: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setText").setText(text);
            }
            fn getFontHeight(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getFontHeight").getFontHeight();
            }
            fn getWidth(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getWidth").getWidth();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .setTextWithOnMeasureFn = Methods.setTextWithOnMeasure, .getTextFn = Methods.getText, .setTextFn = Methods.setText, .getFontHeightFn = Methods.getFontHeight, .getWidthFn = Methods.getWidth };
        return this;
    }
};


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
// package org.allbinary.device

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
const FontDebugBase = @import("org/allbinary/graphics/font/FontDebugBase.zig").FontDebugBase;

// Java interface: an implementation is a pointer and a table of functions
pub const GraphicsInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.device.GraphicsInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setFontDebugFn: *const fn (pointer: *anyopaque, font: ?*Font, fontDebug: ?*FontDebugBase) void,

    pub fn setFontDebug(self: *Self, font: ?*Font, fontDebug: ?*FontDebugBase) void {
        return self.setFontDebugFn(self.pointer, font, fontDebug);
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
            fn setFontDebug(pointer: *anyopaque, font: ?*Font, fontDebug: ?*FontDebugBase) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setFontDebug").setFontDebug(font, fontDebug);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .setFontDebugFn = Methods.setFontDebug };
        return this;
    }
};


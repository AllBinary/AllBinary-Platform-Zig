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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

// Java interface: an implementation is a pointer and a table of functions
pub const PopupMenuInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.PopupMenuInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    popupMenuFn: *const fn (pointer: *anyopaque) void,
    closeMenuFn: *const fn (pointer: *anyopaque) void,
    toggleMenuFn: *const fn (pointer: *anyopaque) void,

    pub fn popupMenu(self: *Self) void {
        return self.popupMenuFn(self.pointer);
    }

    pub fn closeMenu(self: *Self) void {
        return self.closeMenuFn(self.pointer);
    }

    pub fn toggleMenu(self: *Self) void {
        return self.toggleMenuFn(self.pointer);
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
            fn popupMenu(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "popupMenu").popupMenu();
            }
            fn closeMenu(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "closeMenu").closeMenu();
            }
            fn toggleMenu(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "toggleMenu").toggleMenu();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .popupMenuFn = Methods.popupMenu, .closeMenuFn = Methods.closeMenu, .toggleMenuFn = Methods.toggleMenu };
        return this;
    }
};


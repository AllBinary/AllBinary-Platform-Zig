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
// package org.allbinary.input.automation.actions.script.condition

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const MutableTreeNode = @import("javax/swing/tree/MutableTreeNode.zig").MutableTreeNode;

// Java interface: an implementation is a pointer and a table of functions
pub const CustomTreeNodeInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface";
    pointer: *anyopaque,
    object: Object,
    base: MutableTreeNode,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getJPopupMenuFn: *const fn (pointer: *anyopaque) ?*JPopupMenu,

    pub fn getJPopupMenu(self: *Self) ?*JPopupMenu {
        return self.getJPopupMenuFn(self.pointer);
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
            fn getJPopupMenu(pointer: *anyopaque) ?*JPopupMenu {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*JPopupMenu, Inheritance.receiver(implementation, "getJPopupMenu").getJPopupMenu());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = MutableTreeNode.of(object).?.*, .toStringFn = Methods.toString, .getJPopupMenuFn = Methods.getJPopupMenu };
        return this;
    }
};


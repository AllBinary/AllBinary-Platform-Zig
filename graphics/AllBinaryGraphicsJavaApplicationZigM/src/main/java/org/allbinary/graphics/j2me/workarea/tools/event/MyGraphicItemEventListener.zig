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
// package org.allbinary.graphics.j2me.workarea.tools.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MyGraphicItemEvent = @import("org/allbinary/graphics/j2me/workarea/tools/event/MyGraphicItemEvent.zig").MyGraphicItemEvent;

// Java interface: an implementation is a pointer and a table of functions
pub const MyGraphicItemEventListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    deleteFn: *const fn (pointer: *anyopaque, evt: ?*MyGraphicItemEvent) void,
    duplicateFn: *const fn (pointer: *anyopaque, evt: ?*MyGraphicItemEvent) void,
    rotateFn: *const fn (pointer: *anyopaque, evt: ?*MyGraphicItemEvent) void,
    highlightFn: *const fn (pointer: *anyopaque, evt: ?*MyGraphicItemEvent) void,
    deselectFn: *const fn (pointer: *anyopaque, evt: ?*MyGraphicItemEvent) void,

    pub fn delete(self: *Self, evt: ?*MyGraphicItemEvent) void {
        return self.deleteFn(self.pointer, evt);
    }

    pub fn duplicate(self: *Self, evt: ?*MyGraphicItemEvent) void {
        return self.duplicateFn(self.pointer, evt);
    }

    pub fn rotate(self: *Self, evt: ?*MyGraphicItemEvent) void {
        return self.rotateFn(self.pointer, evt);
    }

    pub fn highlight(self: *Self, evt: ?*MyGraphicItemEvent) void {
        return self.highlightFn(self.pointer, evt);
    }

    pub fn deselect(self: *Self, evt: ?*MyGraphicItemEvent) void {
        return self.deselectFn(self.pointer, evt);
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
            fn delete(pointer: *anyopaque, evt: ?*MyGraphicItemEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "delete").delete(evt);
            }
            fn duplicate(pointer: *anyopaque, evt: ?*MyGraphicItemEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "duplicate").duplicate(evt);
            }
            fn rotate(pointer: *anyopaque, evt: ?*MyGraphicItemEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "rotate").rotate(evt);
            }
            fn highlight(pointer: *anyopaque, evt: ?*MyGraphicItemEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "highlight").highlight(evt);
            }
            fn deselect(pointer: *anyopaque, evt: ?*MyGraphicItemEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "deselect").deselect(evt);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .deleteFn = Methods.delete, .duplicateFn = Methods.duplicate, .rotateFn = Methods.rotate, .highlightFn = Methods.highlight, .deselectFn = Methods.deselect };
        return this;
    }
};


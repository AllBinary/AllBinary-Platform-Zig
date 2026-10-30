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
// package org.allbinary.graphics.j2me.workarea.canvas.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MyCanvasEvent = @import("org/allbinary/graphics/j2me/workarea/canvas/event/MyCanvasEvent.zig").MyCanvasEvent;

// Java interface: an implementation is a pointer and a table of functions
pub const MyCanvasEventListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    deleteFn: *const fn (pointer: *anyopaque, evt: ?*MyCanvasEvent) void,
    duplicateFn: *const fn (pointer: *anyopaque, evt: ?*MyCanvasEvent) void,
    selectFn: *const fn (pointer: *anyopaque, evt: ?*MyCanvasEvent) void,
    rotateFn: *const fn (pointer: *anyopaque, evt: ?*MyCanvasEvent) void,
    explodeFn: *const fn (pointer: *anyopaque, evt: ?*MyCanvasEvent) void,
    autoExplodeFn: *const fn (pointer: *anyopaque, evt: ?*MyCanvasEvent) void,
    centerFn: *const fn (pointer: *anyopaque, evt: ?*MyCanvasEvent) void,

    pub fn delete(self: *Self, evt: ?*MyCanvasEvent) void {
        return self.deleteFn(self.pointer, evt);
    }

    pub fn duplicate(self: *Self, evt: ?*MyCanvasEvent) void {
        return self.duplicateFn(self.pointer, evt);
    }

    pub fn select(self: *Self, evt: ?*MyCanvasEvent) void {
        return self.selectFn(self.pointer, evt);
    }

    pub fn rotate(self: *Self, evt: ?*MyCanvasEvent) void {
        return self.rotateFn(self.pointer, evt);
    }

    pub fn explode(self: *Self, evt: ?*MyCanvasEvent) void {
        return self.explodeFn(self.pointer, evt);
    }

    pub fn autoExplode(self: *Self, evt: ?*MyCanvasEvent) void {
        return self.autoExplodeFn(self.pointer, evt);
    }

    pub fn center(self: *Self, evt: ?*MyCanvasEvent) void {
        return self.centerFn(self.pointer, evt);
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
            fn delete(pointer: *anyopaque, evt: ?*MyCanvasEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "delete").delete(evt);
            }
            fn duplicate(pointer: *anyopaque, evt: ?*MyCanvasEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "duplicate").duplicate(evt);
            }
            fn select(pointer: *anyopaque, evt: ?*MyCanvasEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "select").select(evt);
            }
            fn rotate(pointer: *anyopaque, evt: ?*MyCanvasEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "rotate").rotate(evt);
            }
            fn explode(pointer: *anyopaque, evt: ?*MyCanvasEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "explode").explode(evt);
            }
            fn autoExplode(pointer: *anyopaque, evt: ?*MyCanvasEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "autoExplode").autoExplode(evt);
            }
            fn center(pointer: *anyopaque, evt: ?*MyCanvasEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "center").center(evt);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .deleteFn = Methods.delete, .duplicateFn = Methods.duplicate, .selectFn = Methods.select, .rotateFn = Methods.rotate, .explodeFn = Methods.explode, .autoExplodeFn = Methods.autoExplode, .centerFn = Methods.center };
        return this;
    }
};


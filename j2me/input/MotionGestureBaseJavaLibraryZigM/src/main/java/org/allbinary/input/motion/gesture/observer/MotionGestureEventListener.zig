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
// package org.allbinary.input.motion.gesture.observer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BaseMotionGestureEventListener = @import("org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener.zig").BaseMotionGestureEventListener;
const MotionGestureEvent = @import("org/allbinary/input/motion/gesture/observer/MotionGestureEvent.zig").MotionGestureEvent;

// Java interface: an implementation is a pointer and a table of functions
pub const MotionGestureEventListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.gesture.observer.MotionGestureEventListener";
    pointer: *anyopaque,
    object: Object,
    base: BaseMotionGestureEventListener,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    onPressedMotionGestureEventFn: *const fn (pointer: *anyopaque, ev: ?*MotionGestureEvent) void,
    onUpMotionGestureEventFn: *const fn (pointer: *anyopaque, ev: ?*MotionGestureEvent) void,
    onDownMotionGestureEventFn: *const fn (pointer: *anyopaque, ev: ?*MotionGestureEvent) void,
    onLeftMotionGestureEventFn: *const fn (pointer: *anyopaque, ev: ?*MotionGestureEvent) void,
    onRightMotionGestureEventFn: *const fn (pointer: *anyopaque, ev: ?*MotionGestureEvent) void,
    onDiagonalDownRightMotionGestureEventFn: *const fn (pointer: *anyopaque, ev: ?*MotionGestureEvent) void,
    onDiagonalDownLeftMotionGestureEventFn: *const fn (pointer: *anyopaque, ev: ?*MotionGestureEvent) void,
    onDiagonalUpRightMotionGestureEventFn: *const fn (pointer: *anyopaque, ev: ?*MotionGestureEvent) void,
    onDiagonalUpLeftMotionGestureEventFn: *const fn (pointer: *anyopaque, ev: ?*MotionGestureEvent) void,
    releasedFn: *const fn (pointer: *anyopaque, ev: ?*MotionGestureEvent) void,

    pub fn onPressedMotionGestureEvent(self: *Self, ev: ?*MotionGestureEvent) void {
        return self.onPressedMotionGestureEventFn(self.pointer, ev);
    }

    pub fn onUpMotionGestureEvent(self: *Self, ev: ?*MotionGestureEvent) void {
        return self.onUpMotionGestureEventFn(self.pointer, ev);
    }

    pub fn onDownMotionGestureEvent(self: *Self, ev: ?*MotionGestureEvent) void {
        return self.onDownMotionGestureEventFn(self.pointer, ev);
    }

    pub fn onLeftMotionGestureEvent(self: *Self, ev: ?*MotionGestureEvent) void {
        return self.onLeftMotionGestureEventFn(self.pointer, ev);
    }

    pub fn onRightMotionGestureEvent(self: *Self, ev: ?*MotionGestureEvent) void {
        return self.onRightMotionGestureEventFn(self.pointer, ev);
    }

    pub fn onDiagonalDownRightMotionGestureEvent(self: *Self, ev: ?*MotionGestureEvent) void {
        return self.onDiagonalDownRightMotionGestureEventFn(self.pointer, ev);
    }

    pub fn onDiagonalDownLeftMotionGestureEvent(self: *Self, ev: ?*MotionGestureEvent) void {
        return self.onDiagonalDownLeftMotionGestureEventFn(self.pointer, ev);
    }

    pub fn onDiagonalUpRightMotionGestureEvent(self: *Self, ev: ?*MotionGestureEvent) void {
        return self.onDiagonalUpRightMotionGestureEventFn(self.pointer, ev);
    }

    pub fn onDiagonalUpLeftMotionGestureEvent(self: *Self, ev: ?*MotionGestureEvent) void {
        return self.onDiagonalUpLeftMotionGestureEventFn(self.pointer, ev);
    }

    pub fn released(self: *Self, ev: ?*MotionGestureEvent) void {
        return self.releasedFn(self.pointer, ev);
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
            fn onPressedMotionGestureEvent(pointer: *anyopaque, ev: ?*MotionGestureEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onPressedMotionGestureEvent").onPressedMotionGestureEvent(ev);
            }
            fn onUpMotionGestureEvent(pointer: *anyopaque, ev: ?*MotionGestureEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onUpMotionGestureEvent").onUpMotionGestureEvent(ev);
            }
            fn onDownMotionGestureEvent(pointer: *anyopaque, ev: ?*MotionGestureEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onDownMotionGestureEvent").onDownMotionGestureEvent(ev);
            }
            fn onLeftMotionGestureEvent(pointer: *anyopaque, ev: ?*MotionGestureEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onLeftMotionGestureEvent").onLeftMotionGestureEvent(ev);
            }
            fn onRightMotionGestureEvent(pointer: *anyopaque, ev: ?*MotionGestureEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onRightMotionGestureEvent").onRightMotionGestureEvent(ev);
            }
            fn onDiagonalDownRightMotionGestureEvent(pointer: *anyopaque, ev: ?*MotionGestureEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onDiagonalDownRightMotionGestureEvent").onDiagonalDownRightMotionGestureEvent(ev);
            }
            fn onDiagonalDownLeftMotionGestureEvent(pointer: *anyopaque, ev: ?*MotionGestureEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onDiagonalDownLeftMotionGestureEvent").onDiagonalDownLeftMotionGestureEvent(ev);
            }
            fn onDiagonalUpRightMotionGestureEvent(pointer: *anyopaque, ev: ?*MotionGestureEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onDiagonalUpRightMotionGestureEvent").onDiagonalUpRightMotionGestureEvent(ev);
            }
            fn onDiagonalUpLeftMotionGestureEvent(pointer: *anyopaque, ev: ?*MotionGestureEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onDiagonalUpLeftMotionGestureEvent").onDiagonalUpLeftMotionGestureEvent(ev);
            }
            fn released(pointer: *anyopaque, ev: ?*MotionGestureEvent) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "released").released(ev);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = BaseMotionGestureEventListener.of(object).?.*, .toStringFn = Methods.toString, .onPressedMotionGestureEventFn = Methods.onPressedMotionGestureEvent, .onUpMotionGestureEventFn = Methods.onUpMotionGestureEvent, .onDownMotionGestureEventFn = Methods.onDownMotionGestureEvent, .onLeftMotionGestureEventFn = Methods.onLeftMotionGestureEvent, .onRightMotionGestureEventFn = Methods.onRightMotionGestureEvent, .onDiagonalDownRightMotionGestureEventFn = Methods.onDiagonalDownRightMotionGestureEvent, .onDiagonalDownLeftMotionGestureEventFn = Methods.onDiagonalDownLeftMotionGestureEvent, .onDiagonalUpRightMotionGestureEventFn = Methods.onDiagonalUpRightMotionGestureEvent, .onDiagonalUpLeftMotionGestureEventFn = Methods.onDiagonalUpLeftMotionGestureEvent, .releasedFn = Methods.released };
        return this;
    }
};


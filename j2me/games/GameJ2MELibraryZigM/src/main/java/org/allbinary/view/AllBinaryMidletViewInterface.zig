// Generated Code Do Not Modify
// package org.allbinary.view

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameInitializedListenerInterface = @import("org/allbinary/game/configuration/event/GameInitializedListenerInterface.zig").GameInitializedListenerInterface;
const DemoGameMidletEventListener = @import("org/allbinary/game/midlet/DemoGameMidletEventListener.zig").DemoGameMidletEventListener;
const MidletCompositeInterface = @import("org/allbinary/midlet/MidletCompositeInterface.zig").MidletCompositeInterface;
const EmulatorViewInterface = @import("org/allbinary/view/EmulatorViewInterface.zig").EmulatorViewInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const AllBinaryMidletViewInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.view.AllBinaryMidletViewInterface";
    pointer: *anyopaque,
    object: Object,
    base: MidletCompositeInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    onResumeFn: *const fn (pointer: *anyopaque) void,
    onPauseFn: *const fn (pointer: *anyopaque) void,
    onDestroyFn: *const fn (pointer: *anyopaque) void,

    pub fn onResume(self: *Self) void {
        return self.onResumeFn(self.pointer);
    }

    pub fn onPause(self: *Self) void {
        return self.onPauseFn(self.pointer);
    }

    pub fn onDestroy(self: *Self) void {
        return self.onDestroyFn(self.pointer);
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
            fn onResume(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onResume").onResume();
            }
            fn onPause(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onPause").onPause();
            }
            fn onDestroy(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onDestroy").onDestroy();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = MidletCompositeInterface.of(object).?.*, .toStringFn = Methods.toString, .onResumeFn = Methods.onResume, .onPauseFn = Methods.onPause, .onDestroyFn = Methods.onDestroy };
        return this;
    }
};


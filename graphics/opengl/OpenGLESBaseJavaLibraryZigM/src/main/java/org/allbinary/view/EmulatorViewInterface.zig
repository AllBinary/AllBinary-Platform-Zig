// Generated Code Do Not Modify
// package org.allbinary.view

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Displayable = @import("javax/microedition/lcdui/Displayable.zig").Displayable;
// const MIDlet = @import("javax/microedition/midlet/MIDlet.zig").MIDlet;

// Java interface: an implementation is a pointer and a table of functions
pub const EmulatorViewInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.view.EmulatorViewInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setMidletFn: *const fn (pointer: *anyopaque, midlet: ?*MIDlet) void,
    onEmulatorInitCompleteFn: *const fn (pointer: *anyopaque, midletActivity: ?Object) void,
    onSetDisplayableFn: *const fn (pointer: *anyopaque, displayable: ?*Displayable) void,

    pub fn setMidlet(self: *Self, midlet: ?*MIDlet) void {
        return self.setMidletFn(self.pointer, midlet);
    }

    pub fn onEmulatorInitComplete(self: *Self, midletActivity: ?Object) void {
        return self.onEmulatorInitCompleteFn(self.pointer, midletActivity);
    }

    pub fn onSetDisplayable(self: *Self, displayable: ?*Displayable) void {
        return self.onSetDisplayableFn(self.pointer, displayable);
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
            fn onEmulatorInitComplete(pointer: *anyopaque, midletActivity: ?Object) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onEmulatorInitComplete").onEmulatorInitComplete(midletActivity);
            }
            fn onSetDisplayable(pointer: *anyopaque, displayable: ?*Displayable) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onSetDisplayable").onSetDisplayable(displayable);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .setMidletFn = Methods.setMidlet, .onEmulatorInitCompleteFn = Methods.onEmulatorInitComplete, .onSetDisplayableFn = Methods.onSetDisplayable };
        return this;
    }
};


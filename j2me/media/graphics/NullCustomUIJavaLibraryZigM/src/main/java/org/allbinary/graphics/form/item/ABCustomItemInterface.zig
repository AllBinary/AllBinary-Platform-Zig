// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;

// Java interface: an implementation is a pointer and a table of functions
pub const ABCustomItemInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.item.ABCustomItemInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getMinimumWidthFn: *const fn (pointer: *anyopaque) i32,
    getMinimumHeightFn: *const fn (pointer: *anyopaque) i32,
    getLabelFn: *const fn (pointer: *anyopaque) ?*String,
    paintXYFn: *const fn (pointer: *anyopaque, graphics: ?*Graphics, x: i32, y: i32) void,
    paintUnselectedFn: *const fn (pointer: *anyopaque, graphics: ?*Graphics, x: i32, y: i32) void,

    pub fn getMinimumWidth(self: *Self) i32 {
        return self.getMinimumWidthFn(self.pointer);
    }

    pub fn getMinimumHeight(self: *Self) i32 {
        return self.getMinimumHeightFn(self.pointer);
    }

    pub fn getLabel(self: *Self) ?*String {
        return self.getLabelFn(self.pointer);
    }

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        return self.paintXYFn(self.pointer, graphics, x, y);
    }

    pub fn paintUnselected(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        return self.paintUnselectedFn(self.pointer, graphics, x, y);
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
            fn getMinimumWidth(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getMinimumWidth").getMinimumWidth();
            }
            fn getMinimumHeight(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getMinimumHeight").getMinimumHeight();
            }
            fn getLabel(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getLabel").getLabel());
            }
            fn paintXY(pointer: *anyopaque, graphics: ?*Graphics, x: i32, y: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "paintXY").paintXY(graphics, x, y);
            }
            fn paintUnselected(pointer: *anyopaque, graphics: ?*Graphics, x: i32, y: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "paintUnselected").paintUnselected(graphics, x, y);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getMinimumWidthFn = Methods.getMinimumWidth, .getMinimumHeightFn = Methods.getMinimumHeight, .getLabelFn = Methods.getLabel, .paintXYFn = Methods.paintXY, .paintUnselectedFn = Methods.paintUnselected };
        return this;
    }
};


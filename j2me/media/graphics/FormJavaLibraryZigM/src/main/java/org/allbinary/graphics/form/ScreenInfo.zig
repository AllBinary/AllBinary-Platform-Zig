// Generated Code Do Not Modify
// package org.allbinary.graphics.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const ScreenInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.ScreenInfo";
    SMALL_WIDTH: i32 = 0,
    SMALL_HEIGHT: i32 = 0,
    MEDIUM_WIDTH: i32 = 0,
    MEDIUM_HEIGHT: i32 = 0,
    var instance: ?*ScreenInfo = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ScreenInfo.create();
    }

    fn initFields(this: *Self) void {
        this.SMALL_WIDTH = 320;
        this.SMALL_HEIGHT = 240;
        this.MEDIUM_WIDTH = 800;
        this.MEDIUM_HEIGHT = 600;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ScreenInfo {
        return Inheritance.upcast(?*ScreenInfo, ScreenInfo.instance);
    }
};


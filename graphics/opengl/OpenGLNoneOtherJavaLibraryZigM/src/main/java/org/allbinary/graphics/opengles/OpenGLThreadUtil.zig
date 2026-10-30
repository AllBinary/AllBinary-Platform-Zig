// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const OpenGLThreadUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.OpenGLThreadUtil";
    var instance: ?*OpenGLThreadUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLThreadUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*OpenGLThreadUtil {
        return Inheritance.upcast(?*OpenGLThreadUtil, OpenGLThreadUtil.instance);
    }
    

    pub fn set(self: *Self, glSurfaceView: ?Object) void {
        _ = glSurfaceView;
        _ = self;
    }
    

    pub fn onPause(self: *Self) void {
        _ = self;
    }
    

    pub fn onResume(self: *Self) void {
        _ = self;
    }
};


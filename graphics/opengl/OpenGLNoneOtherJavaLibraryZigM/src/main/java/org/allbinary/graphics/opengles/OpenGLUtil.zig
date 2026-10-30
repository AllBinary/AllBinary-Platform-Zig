// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const OpenGLUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.OpenGLUtil";
    var instance: ?*OpenGLUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*OpenGLUtil {
        return Inheritance.upcast(?*OpenGLUtil, OpenGLUtil.instance);
    }
    

    pub fn addImage(self: *Self, image: ?*Image) ?*Image {
        _ = self;
        return image;
    }
    

    pub fn clear(self: *Self) void {
        _ = self;
    }
    

    pub fn addRunnable(self: *Self, runnable: ?*Runnable) void {
        _ = runnable;
        _ = self;
    }
};


// Generated Code Do Not Modify
// package org.platform.graphics

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const OpenGLImageUtilBase = @import("org/allbinary/image/opengles/OpenGLImageUtilBase.zig").OpenGLImageUtilBase;

pub const OpenGLImageUtil = struct {
    const Self = @This();
    pub const java_name = "org.platform.graphics.OpenGLImageUtil";
    base: OpenGLImageUtilBase = undefined,
    var instance: ?*OpenGLImageUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLImageUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = OpenGLImageUtilBase.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*OpenGLImageUtil {
        return Inheritance.upcast(?*OpenGLImageUtil, OpenGLImageUtil.instance);
    }
};


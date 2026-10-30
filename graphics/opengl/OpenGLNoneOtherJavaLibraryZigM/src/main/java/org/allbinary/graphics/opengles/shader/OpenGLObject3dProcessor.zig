// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles.shader

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const OpenGLObject3dProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.shader.OpenGLObject3dProcessor";
    commonStrings: ?*CommonStrings = null,

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn process(self: *Self, gl: ?*GL10, object3d: ?Object) void {
        _ = gl;
        _ = object3d;
        _ = self;
    }
    

    pub fn process3(self: *Self, gl: ?*GL10, object3d: ?Object, index: i32) void {
        _ = gl;
        _ = object3d;
        _ = index;
        _ = self;
    }
};


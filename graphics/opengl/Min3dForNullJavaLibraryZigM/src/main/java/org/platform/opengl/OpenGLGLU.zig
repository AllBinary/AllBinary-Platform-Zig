// Generated Code Do Not Modify
// package org.platform.opengl

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;

pub const OpenGLGLU = struct {
    const Self = @This();
    pub const java_name = "org.platform.opengl.OpenGLGLU";
    var instance: ?*OpenGLGLU = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLGLU.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*OpenGLGLU {
        return Inheritance.upcast(?*OpenGLGLU, OpenGLGLU.instance);
    }
    

    pub fn gluLookAt(self: *Self, gl: ?*GL10, eyeX: f32, eyeY: f32, eyeZ: f32, centerX: f32, centerY: f32, centerZ: f32, upX: f32, upY: f32, upZ: f32) void {
        _ = gl;
        _ = eyeX;
        _ = eyeY;
        _ = eyeZ;
        _ = centerX;
        _ = centerY;
        _ = centerZ;
        _ = upX;
        _ = upY;
        _ = upZ;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn gluProject(self: *Self, gl: ?*GL10, objX: f32, objY: f32, objZ: f32, model: []f32, modelOffset: i32, project: []f32, projectOffset: i32, view: []i32, viewOffset: i32, win: []f32, winOffset: i32) i32 {
        _ = gl;
        _ = objX;
        _ = objY;
        _ = objZ;
        _ = model;
        _ = modelOffset;
        _ = project;
        _ = projectOffset;
        _ = view;
        _ = viewOffset;
        _ = win;
        _ = winOffset;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn gluUnProject(self: *Self, gl: ?*GL10, winX: f32, winY: f32, winZ: f32, model: []f32, modelOffset: i32, project: []f32, projectOffset: i32, view: []i32, viewOffset: i32, obj: []f32, objOffset: i32) i32 {
        _ = gl;
        _ = winX;
        _ = winY;
        _ = winZ;
        _ = model;
        _ = modelOffset;
        _ = project;
        _ = projectOffset;
        _ = view;
        _ = viewOffset;
        _ = obj;
        _ = objOffset;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn glFrustumf(self: *Self, gl: ?*GL10, lt: f32, rt: f32, btm: f32, top: f32, zNear: f32, zFar: f32) void {
        _ = gl;
        _ = lt;
        _ = rt;
        _ = btm;
        _ = top;
        _ = zNear;
        _ = zFar;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};


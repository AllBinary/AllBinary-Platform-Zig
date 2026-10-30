// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles.shader

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
const OpenGLProcessor = @import("org/allbinary/graphics/opengles/OpenGLProcessor.zig").OpenGLProcessor;

pub const ShaderOpenGLProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.shader.ShaderOpenGLProcessor";
    base: OpenGLProcessor = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = OpenGLProcessor.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn process0(self: *Self, gl: ?*GL10) void {
        _ = gl;
        _ = self;
    }
    

    pub fn process1(self: *Self, gl: ?*GL10) void {
        _ = gl;
        _ = self;
    }
    

    pub fn process(self: *Self, gl: ?*GL10) void {
        _ = gl;
        _ = self;
    }
    

    pub fn process2(self: *Self, gl: ?*GL10) void {
        _ = gl;
        _ = self;
    }
    

    pub fn process3(self: *Self, gl: ?*GL10) void {
        _ = gl;
        _ = self;
    }
};


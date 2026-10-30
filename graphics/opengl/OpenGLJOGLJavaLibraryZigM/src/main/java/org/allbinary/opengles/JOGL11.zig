//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// 
// Created By: Travis Berthelot
//   
// Generated Code Do Not Modify
// package org.allbinary.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GL = @import("com/jogamp/opengl/GL.zig").GL;
const GL2 = @import("com/jogamp/opengl/GL2.zig").GL2;
const JOGL10 = @import("org/allbinary/opengles/JOGL10.zig").JOGL10;

//JOGLEToKhronosGL11
pub const JOGL11 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.opengles.JOGL11";
    base: JOGL10 = undefined,
    gl11: ?*GL2 = null,
    // Implements GL11

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(gl: ?*GL) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.* = Inheritance.callStatic(JOGL11, "create2", .{ gl, Inheritance.cast(?*GL2, gl) }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create2(gl: ?*GL, gl2: ?*GL2) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(JOGL10, "create2", .{ gl, gl2 }).*;
        this.initFields();
        this.gl11 = Inheritance.upcast(@TypeOf(this.gl11), Inheritance.receiver(this, "getJOGLGL").getJOGLGL());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn glBindBuffer(self: *Self, target: i32, buffer: i32) void {
        _ = Inheritance.call(self.gl11.?, "glBindBuffer", .{ target, buffer });
    }
    

    pub fn glBufferData(self: *Self, target: i32, size: i32, data: ?*Buffer, usage: i32) void {
        _ = Inheritance.call(self.gl11.?, "glBufferData", .{ target, size, data, usage });
    }
    

    pub fn glBufferSubData(self: *Self, target: i32, offset: i32, size: i32, data: ?*Buffer) void {
        _ = Inheritance.call(self.gl11.?, "glBufferSubData", .{ target, offset, size, data });
    }
    

    pub fn glClipPlanef3(self: *Self, plane: i32, equation: []f32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glClipPlanef", .{ plane, equation, offset });
    }
    

    pub fn glClipPlanef(self: *Self, plane: i32, equation: ?*FloatBuffer) void {
        _ = Inheritance.call(self.gl11.?, "glClipPlanef", .{ plane, equation });
    }
    

    pub fn glColor4ub(self: *Self, red: i8, green: i8, blue: i8, alpha: i8) void {
        _ = Inheritance.call(self.gl11.?, "glColor4ub", .{ red, green, blue, alpha });
    }
    

    pub fn glColorPointer(self: *Self, size: i32, @"type": i32, stride: i32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glColorPointer", .{ size, @"type", stride, offset });
    }
    

    pub fn glDeleteBuffers3(self: *Self, n: i32, buffers: []i32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glDeleteBuffers", .{ n, buffers, offset });
    }
    

    pub fn glDeleteBuffers(self: *Self, n: i32, buffers: ?*IntBuffer) void {
        _ = Inheritance.call(self.gl11.?, "glDeleteBuffers", .{ n, buffers });
    }
    

    pub fn glDrawElements(self: *Self, mode: i32, count: i32, @"type": i32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glDrawElements", .{ mode, count, @"type", offset });
    }
    

    pub fn glGenBuffers3(self: *Self, n: i32, buffers: []i32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glGenBuffers", .{ n, buffers, offset });
    }
    

    pub fn glGenBuffers(self: *Self, n: i32, buffers: ?*IntBuffer) void {
        _ = Inheritance.call(self.gl11.?, "glGenBuffers", .{ n, buffers });
    }
    

    pub fn glGetBufferParameteriv4(self: *Self, target: i32, pname: i32, params: []i32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glGetBufferParameteriv", .{ target, pname, params, offset });
    }
    

    pub fn glGetBufferParameteriv(self: *Self, target: i32, pname: i32, params: ?*IntBuffer) void {
        _ = Inheritance.call(self.gl11.?, "glGetBufferParameteriv", .{ target, pname, params });
    }
    

    pub fn glGetClipPlanef3(self: *Self, pname: i32, eqn: []f32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glGetClipPlanef", .{ pname, eqn, offset });
    }
    

    pub fn glGetClipPlanef(self: *Self, pname: i32, eqn: ?*FloatBuffer) void {
        _ = Inheritance.call(self.gl11.?, "glGetClipPlanef", .{ pname, eqn });
    }
    

    pub fn glGetFloatv3(self: *Self, pname: i32, params: []f32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glGetFloatv", .{ pname, params, offset });
    }
    

    pub fn glGetFloatv(self: *Self, pname: i32, params: ?*FloatBuffer) void {
        _ = Inheritance.call(self.gl11.?, "glGetFloatv", .{ pname, params });
    }
    

    pub fn glGetLightfv4(self: *Self, light: i32, pname: i32, params: []f32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glGetLightfv", .{ light, pname, params, offset });
    }
    

    pub fn glGetLightfv(self: *Self, light: i32, pname: i32, params: ?*FloatBuffer) void {
        _ = Inheritance.call(self.gl11.?, "glGetLightfv", .{ light, pname, params });
    }
    

    pub fn glGetMaterialfv4(self: *Self, face: i32, pname: i32, params: []f32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glGetMaterialfv", .{ face, pname, params, offset });
    }
    

    pub fn glGetMaterialfv(self: *Self, face: i32, pname: i32, params: ?*FloatBuffer) void {
        _ = Inheritance.call(self.gl11.?, "glGetMaterialfv", .{ face, pname, params });
    }
    

    pub fn glGetTexEnviv4(self: *Self, env: i32, pname: i32, params: []i32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glGetTexEnviv", .{ env, pname, params, offset });
    }
    

    pub fn glGetTexEnviv(self: *Self, env: i32, pname: i32, params: ?*IntBuffer) void {
        _ = Inheritance.call(self.gl11.?, "glGetTexEnviv", .{ env, pname, params });
    }
    

    pub fn glGetTexParameterfv4(self: *Self, target: i32, pname: i32, params: []f32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glGetTexParameterfv", .{ target, pname, params, offset });
    }
    

    pub fn glGetTexParameterfv(self: *Self, target: i32, pname: i32, params: ?*FloatBuffer) void {
        _ = Inheritance.call(self.gl11.?, "glGetTexParameterfv", .{ target, pname, params });
    }
    

    pub fn glGetTexParameteriv4(self: *Self, target: i32, pname: i32, params: []i32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glGetTexParameteriv", .{ target, pname, params, offset });
    }
    

    pub fn glGetTexParameteriv(self: *Self, target: i32, pname: i32, params: ?*IntBuffer) void {
        _ = Inheritance.call(self.gl11.?, "glGetTexParameteriv", .{ target, pname, params });
    }
    

    pub fn glIsBuffer(self: *Self, buffer: i32) bool {
        return Inheritance.call(self.gl11.?, "glIsBuffer", .{ buffer });
    }
    

    pub fn glIsEnabled(self: *Self, cap: i32) bool {
        return Inheritance.call(self.gl11.?, "glIsEnabled", .{ cap });
    }
    

    pub fn glIsTexture(self: *Self, texture: i32) bool {
        return Inheritance.call(self.gl11.?, "glIsTexture", .{ texture });
    }
    

    pub fn glNormalPointer(self: *Self, @"type": i32, stride: i32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glNormalPointer", .{ @"type", stride, offset });
    }
    

    pub fn glPointParameterf(self: *Self, pname: i32, param: f32) void {
        _ = Inheritance.call(self.gl11.?, "glPointParameterf", .{ pname, param });
    }
    

    pub fn glPointParameterfv3(self: *Self, pname: i32, params: []f32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glPointParameterfv", .{ pname, params, offset });
    }
    

    pub fn glPointParameterfv(self: *Self, pname: i32, params: ?*FloatBuffer) void {
        _ = Inheritance.call(self.gl11.?, "glPointParameterfv", .{ pname, params });
    }
    

    pub fn glTexCoordPointer(self: *Self, size: i32, @"type": i32, stride: i32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glTexCoordPointer", .{ size, @"type", stride, offset });
    }
    

    pub fn glTexEnvi(self: *Self, target: i32, pname: i32, param: i32) void {
        _ = Inheritance.call(self.gl11.?, "glTexEnvi", .{ target, pname, param });
    }
    

    pub fn glTexEnviv4(self: *Self, target: i32, pname: i32, params: []i32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glTexEnviv", .{ target, pname, params, offset });
    }
    

    pub fn glTexEnviv(self: *Self, target: i32, pname: i32, params: ?*IntBuffer) void {
        _ = Inheritance.call(self.gl11.?, "glTexEnviv", .{ target, pname, params });
    }
    

    pub fn glTexParameterfv4(self: *Self, target: i32, pname: i32, params: []f32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glTexParameterfv", .{ target, pname, params, offset });
    }
    

    pub fn glTexParameterfv(self: *Self, target: i32, pname: i32, params: ?*FloatBuffer) void {
        _ = Inheritance.call(self.gl11.?, "glTexParameterfv", .{ target, pname, params });
    }
    

    pub fn glTexParameteri(self: *Self, target: i32, pname: i32, param: i32) void {
        _ = Inheritance.call(self.gl11.?, "glTexParameteri", .{ target, pname, param });
    }
    

    pub fn glTexParameteriv4(self: *Self, target: i32, pname: i32, params: []i32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glTexParameteriv", .{ target, pname, params, offset });
    }
    

    pub fn glTexParameteriv(self: *Self, target: i32, pname: i32, params: ?*IntBuffer) void {
        _ = Inheritance.call(self.gl11.?, "glTexParameteriv", .{ target, pname, params });
    }
    

    pub fn glTexParameterxv(self: *Self, target: i32, pname: i32, params: []i32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glTexParameteriv", .{ target, pname, params, offset });
    }
    

    pub fn glVertexPointer(self: *Self, size: i32, @"type": i32, stride: i32, offset: i32) void {
        _ = Inheritance.call(self.gl11.?, "glVertexPointer", .{ size, @"type", stride, offset });
    }
};


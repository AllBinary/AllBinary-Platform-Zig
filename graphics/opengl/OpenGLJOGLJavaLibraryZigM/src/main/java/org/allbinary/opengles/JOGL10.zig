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
const GLU = @import("com/jogamp/opengl/glu/GLU.zig").GLU;

//JOGLEToKhronosGL10
pub const JOGL10 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.opengles.JOGL10";
    RED: ?*String = null,
    GREEN: ?*String = null,
    BLUE: ?*String = null,
    ALPHA: ?*String = null,
    PNAME: ?*String = null,
    _PNAME: ?*String = null,
    PARAM: ?*String = null,
    PARAMS: ?*String = null,
    LIGHT: ?*String = null,
    FACE: ?*String = null,
    TARGET: ?*String = null,
    gl10: ?*GL2 = null,
    glu: ?*GLU = null,
    GL_LINE: i32 = 0,
    GL_QUAD_STRIP: i32 = 0,
    // Implements GL10

    fn initFields(this: *Self) void {
        this.RED = String.literal("red: ");
        this.GREEN = String.literal(" green: ");
        this.BLUE = String.literal(" blue: ");
        this.ALPHA = String.literal(" alpha: ");
        this.PNAME = String.literal("pname: ");
        this._PNAME = String.literal(" pname: ");
        this.PARAM = String.literal(" param: ");
        this.PARAMS = String.literal(" params: ");
        this.LIGHT = String.literal("light: ");
        this.FACE = String.literal("face: ");
        this.TARGET = String.literal("target: ");
        
        
        
        
    }
    

    pub fn create2(gl: ?*GL, gl2: ?*GL2) *Self {
        _ = gl;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.gl10 = gl2;
        this.glu = Inheritance.upcast(@TypeOf(this.glu), Inheritance.callStatic(GLU, "createGLU", .{ this.gl10 }));
        this.GL_LINE = com.jogamp.?.opengl.?.GL2.?.GL_LINE;
        this.GL_QUAD_STRIP = com.jogamp.?.opengl.?.GL2.?.GL_QUAD_STRIP;
        return this;
    }
    

    pub fn getJOGLGL(self: *Self) ?*GL2 {
        return self.gl10;
    }
    

    pub fn glActiveTexture(self: *Self, texture: i32) void {
        _ = Inheritance.call(self.gl10.?, "glActiveTexture", .{ texture });
    }
    

    pub fn glAlphaFunc(self: *Self, func: i32, ref: f32) void {
        _ = Inheritance.call(self.gl10.?, "glAlphaFunc", .{ func, ref });
    }
    

    pub fn glBindTexture(self: *Self, target: i32, texture: i32) void {
        _ = Inheritance.call(self.gl10.?, "glBindTexture", .{ target, texture });
    }
    

    pub fn glBlendFunc(self: *Self, sfactor: i32, dfactor: i32) void {
        _ = Inheritance.call(self.gl10.?, "glBlendFunc", .{ sfactor, dfactor });
    }
    

    pub fn glClear(self: *Self, mask: i32) void {
        _ = Inheritance.call(self.gl10.?, "glClear", .{ mask });
    }
    

    pub fn glClearColor(self: *Self, red: f32, green: f32, blue: f32, alpha: f32) void {
        _ = Inheritance.call(self.gl10.?, "glClearColor", .{ red, green, blue, alpha });
    }
    

    pub fn glClearDepthf(self: *Self, depth: f32) void {
        _ = Inheritance.call(self.gl10.?, "glClearDepthf", .{ depth });
    }
    

    pub fn glClearStencil(self: *Self, s: i32) void {
        _ = Inheritance.call(self.gl10.?, "glClearStencil", .{ s });
    }
    

    pub fn glClientActiveTexture(self: *Self, texture: i32) void {
        _ = Inheritance.call(self.gl10.?, "glClientActiveTexture", .{ texture });
    }
    

    pub fn glColor4f(self: *Self, red: f32, green: f32, blue: f32, alpha: f32) void {
        _ = Inheritance.call(self.gl10.?, "glColor4f", .{ red, green, blue, alpha });
    }
    

    pub fn glColorMask(self: *Self, red: bool, green: bool, blue: bool, alpha: bool) void {
        _ = Inheritance.call(self.gl10.?, "glColorMask", .{ red, green, blue, alpha });
    }
    

    pub fn glColorPointer(self: *Self, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
        _ = Inheritance.call(self.gl10.?, "glColorPointer", .{ size, @"type", stride, pointer });
    }
    

    pub fn glCompressedTexImage2D(self: *Self, target: i32, level: i32, internalformat: i32, width: i32, height: i32, border: i32, imageSize: i32, data: ?*Buffer) void {
        _ = Inheritance.call(self.gl10.?, "glCompressedTexImage2D", .{ target, level, internalformat, width, height, border, imageSize, data });
    }
    

    pub fn glCompressedTexSubImage2D(self: *Self, target: i32, level: i32, xoffset: i32, yoffset: i32, width: i32, height: i32, format: i32, imageSize: i32, data: ?*Buffer) void {
        _ = Inheritance.call(self.gl10.?, "glCompressedTexSubImage2D", .{ target, level, xoffset, yoffset, width, height, format, imageSize, data });
    }
    

    pub fn glCopyTexImage2D(self: *Self, target: i32, level: i32, internalformat: i32, x: i32, y: i32, width: i32, height: i32, border: i32) void {
        _ = Inheritance.call(self.gl10.?, "glCopyTexImage2D", .{ target, level, internalformat, x, y, width, height, border });
    }
    

    pub fn glCopyTexSubImage2D(self: *Self, target: i32, level: i32, xoffset: i32, yoffset: i32, x: i32, y: i32, width: i32, height: i32) void {
        _ = Inheritance.call(self.gl10.?, "glCopyTexSubImage2D", .{ target, level, xoffset, yoffset, x, y, width, height });
    }
    

    pub fn glCullFace(self: *Self, mode: i32) void {
        _ = Inheritance.call(self.gl10.?, "glCullFace", .{ mode });
    }
    

    pub fn glDeleteTextures3(self: *Self, n: i32, textures: []i32, offset: i32) void {
        _ = Inheritance.call(self.gl10.?, "glDeleteTextures", .{ n, textures, offset });
    }
    

    pub fn glDeleteTextures(self: *Self, n: i32, textures: ?*IntBuffer) void {
        _ = Inheritance.call(self.gl10.?, "glDeleteTextures", .{ n, textures });
    }
    

    pub fn glDepthFunc(self: *Self, func: i32) void {
        _ = Inheritance.call(self.gl10.?, "glDepthFunc", .{ func });
    }
    

    pub fn glDepthMask(self: *Self, flag: bool) void {
        _ = Inheritance.call(self.gl10.?, "glDepthMask", .{ flag });
    }
    

    pub fn glDepthRangef(self: *Self, zNear: f32, zFar: f32) void {
        _ = Inheritance.call(self.gl10.?, "glDepthRangef", .{ zNear, zFar });
    }
    

    pub fn glDisable(self: *Self, cap: i32) void {
        _ = Inheritance.call(self.gl10.?, "glDisable", .{ cap });
    }
    

    pub fn glDisableClientState(self: *Self, array: i32) void {
        _ = Inheritance.call(self.gl10.?, "glDisableClientState", .{ array });
    }
    

    pub fn glDrawArrays(self: *Self, mode: i32, first: i32, count: i32) void {
        _ = Inheritance.call(self.gl10.?, "glDrawArrays", .{ mode, first, count });
    }
    

    pub fn glDrawElements(self: *Self, mode: i32, count: i32, @"type": i32, indices: ?*Buffer) void {
        _ = Inheritance.call(self.gl10.?, "glDrawElements", .{ mode, count, @"type", indices });
    }
    

    pub fn glEnable(self: *Self, cap: i32) void {
        _ = Inheritance.call(self.gl10.?, "glEnable", .{ cap });
    }
    

    pub fn glEnableClientState(self: *Self, array: i32) void {
        _ = Inheritance.call(self.gl10.?, "glEnableClientState", .{ array });
    }
    

    pub fn glFinish(self: *Self) void {
        _ = self.gl10.?.glFinish();
    }
    

    pub fn glFlush(self: *Self) void {
        _ = self.gl10.?.glFlush();
    }
    

    pub fn glFogf(self: *Self, pname: i32, param: f32) void {
        _ = Inheritance.call(self.gl10.?, "glFogf", .{ pname, param });
    }
    

    pub fn glFogfv3(self: *Self, pname: i32, params: []f32, offset: i32) void {
        _ = Inheritance.call(self.gl10.?, "glFogfv", .{ pname, params, offset });
    }
    

    pub fn glFogfv(self: *Self, pname: i32, params: ?*FloatBuffer) void {
        _ = Inheritance.call(self.gl10.?, "glFogfv", .{ pname, params });
    }
    

    pub fn glFrontFace(self: *Self, mode: i32) void {
        _ = Inheritance.call(self.gl10.?, "glFrontFace", .{ mode });
    }
    

    pub fn glFrustumf(self: *Self, left: f32, right: f32, bottom: f32, top: f32, zNear: f32, zFar: f32) void {
        _ = Inheritance.call(self.gl10.?, "glFrustumf", .{ left, right, bottom, top, zNear, zFar });
    }
    

    pub fn glGenTextures3(self: *Self, n: i32, textures: []i32, offset: i32) void {
        _ = Inheritance.call(self.gl10.?, "glGenTextures", .{ n, textures, offset });
    }
    

    pub fn glGenTextures(self: *Self, n: i32, textures: ?*IntBuffer) void {
        _ = Inheritance.call(self.gl10.?, "glGenTextures", .{ n, textures });
    }
    

    pub fn glGetError(self: *Self) i32 {
        return self.gl10.?.glGetError();
    }
    

    pub fn glGetIntegerv3(self: *Self, pname: i32, params: []i32, offset: i32) void {
        _ = Inheritance.call(self.gl10.?, "glGetIntegerv", .{ pname, params, offset });
    }
    

    pub fn glGetIntegerv(self: *Self, pname: i32, params: ?*IntBuffer) void {
        _ = Inheritance.call(self.gl10.?, "glGetIntegerv", .{ pname, params });
    }
    

    pub fn glGetString(self: *Self, name: i32) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(self.gl10.?, "glGetString", .{ name }));
    }
    

    pub fn glHint(self: *Self, target: i32, mode: i32) void {
        _ = Inheritance.call(self.gl10.?, "glHint", .{ target, mode });
    }
    

    pub fn glLightModelf(self: *Self, pname: i32, param: f32) void {
        _ = Inheritance.call(self.gl10.?, "glLightModelf", .{ pname, param });
    }
    

    pub fn glLightModelfv3(self: *Self, pname: i32, params: []f32, offset: i32) void {
        _ = Inheritance.call(self.gl10.?, "glLightModelfv", .{ pname, params, offset });
    }
    

    pub fn glLightModelfv(self: *Self, pname: i32, params: ?*FloatBuffer) void {
        _ = Inheritance.call(self.gl10.?, "glLightModelfv", .{ pname, params });
    }
    

    pub fn glLightf(self: *Self, light: i32, pname: i32, param: f32) void {
        _ = Inheritance.call(self.gl10.?, "glLightf", .{ light, pname, param });
    }
    

    pub fn glLightfv4(self: *Self, light: i32, pname: i32, params: []f32, offset: i32) void {
        _ = Inheritance.call(self.gl10.?, "glLightfv", .{ light, pname, params, offset });
    }
    

    pub fn glLightfv(self: *Self, light: i32, pname: i32, params: ?*FloatBuffer) void {
        _ = Inheritance.call(self.gl10.?, "glLightfv", .{ light, pname, params });
    }
    

    pub fn glLineWidth(self: *Self, width: f32) void {
        _ = Inheritance.call(self.gl10.?, "glLineWidth", .{ width });
    }
    

    pub fn glLoadIdentity(self: *Self) void {
        _ = self.gl10.?.glLoadIdentity();
    }
    

    pub fn glLoadMatrixf2(self: *Self, m: []f32, offset: i32) void {
        _ = Inheritance.call(self.gl10.?, "glLoadMatrixf", .{ m, offset });
    }
    

    pub fn glLoadMatrixf(self: *Self, m: ?*FloatBuffer) void {
        _ = Inheritance.call(self.gl10.?, "glLoadMatrixf", .{ m });
    }
    

    pub fn glLogicOp(self: *Self, opcode: i32) void {
        _ = Inheritance.call(self.gl10.?, "glLogicOp", .{ opcode });
    }
    

    pub fn glMaterialf(self: *Self, face: i32, pname: i32, param: f32) void {
        _ = Inheritance.call(self.gl10.?, "glMaterialf", .{ face, pname, param });
    }
    

    pub fn glMaterialfv4(self: *Self, face: i32, pname: i32, params: []f32, offset: i32) void {
        _ = Inheritance.call(self.gl10.?, "glMaterialfv", .{ face, pname, params, offset });
    }
    

    pub fn glMaterialfv(self: *Self, face: i32, pname: i32, params: ?*FloatBuffer) void {
        _ = Inheritance.call(self.gl10.?, "glMaterialfv", .{ face, pname, params });
    }
    

    pub fn glMatrixMode(self: *Self, mode: i32) void {
        _ = Inheritance.call(self.gl10.?, "glMatrixMode", .{ mode });
    }
    

    pub fn glMultMatrixf2(self: *Self, m: []f32, offset: i32) void {
        _ = Inheritance.call(self.gl10.?, "glMultMatrixf", .{ m, offset });
    }
    

    pub fn glMultMatrixf(self: *Self, m: ?*FloatBuffer) void {
        _ = Inheritance.call(self.gl10.?, "glMultMatrixf", .{ m });
    }
    

    pub fn glMultiTexCoord4f(self: *Self, target: i32, s: f32, t: f32, r: f32, q: f32) void {
        _ = Inheritance.call(self.gl10.?, "glMultiTexCoord4f", .{ target, s, t, r, q });
    }
    

    pub fn glNormal3f(self: *Self, nx: f32, ny: f32, nz: f32) void {
        _ = Inheritance.call(self.gl10.?, "glNormal3f", .{ nx, ny, nz });
    }
    

    pub fn glNormalPointer(self: *Self, @"type": i32, stride: i32, pointer: ?*Buffer) void {
        _ = Inheritance.call(self.gl10.?, "glNormalPointer", .{ @"type", stride, pointer });
    }
    

    pub fn glOrthof(self: *Self, left: f32, right: f32, bottom: f32, top: f32, zNear: f32, zFar: f32) void {
        _ = Inheritance.call(self.gl10.?, "glOrthof", .{ left, right, bottom, top, zNear, zFar });
    }
    

    pub fn glPixelStorei(self: *Self, pname: i32, param: i32) void {
        _ = Inheritance.call(self.gl10.?, "glPixelStorei", .{ pname, param });
    }
    

    pub fn glPointSize(self: *Self, size: f32) void {
        _ = Inheritance.call(self.gl10.?, "glPointSize", .{ size });
    }
    

    pub fn glPolygonOffset(self: *Self, factor: f32, units: f32) void {
        _ = Inheritance.call(self.gl10.?, "glPolygonOffset", .{ factor, units });
    }
    

    pub fn glPopMatrix(self: *Self) void {
        _ = self.gl10.?.glPopMatrix();
    }
    

    pub fn glPushMatrix(self: *Self) void {
        _ = self.gl10.?.glPushMatrix();
    }
    

    pub fn glReadPixels(self: *Self, x: i32, y: i32, width: i32, height: i32, format: i32, @"type": i32, pixels: ?*Buffer) void {
        _ = Inheritance.call(self.gl10.?, "glReadPixels", .{ x, y, width, height, format, @"type", pixels });
    }
    

    pub fn glRotatef(self: *Self, angle: f32, x: f32, y: f32, z: f32) void {
        _ = Inheritance.call(self.gl10.?, "glRotatef", .{ angle, x, y, z });
    }
    

    pub fn glRotatex(self: *Self, angle: i32, x: i32, y: i32, z: i32) void {
        _ = Inheritance.call(self.gl10.?, "glRotatef", .{ angle, x, y, z });
    }
    

    pub fn glSampleCoverage(self: *Self, value: f32, invert: bool) void {
        _ = Inheritance.call(self.gl10.?, "glSampleCoverage", .{ value, invert });
    }
    

    pub fn glScalef(self: *Self, x: f32, y: f32, z: f32) void {
        _ = Inheritance.call(self.gl10.?, "glScalef", .{ x, y, z });
    }
    

    pub fn glScalex(self: *Self, x: i32, y: i32, z: i32) void {
        _ = Inheritance.call(self.gl10.?, "glScalef", .{ x, y, z });
    }
    

    pub fn glScissor(self: *Self, x: i32, y: i32, width: i32, height: i32) void {
        _ = Inheritance.call(self.gl10.?, "glScissor", .{ x, y, width, height });
    }
    

    pub fn glShadeModel(self: *Self, mode: i32) void {
        _ = Inheritance.call(self.gl10.?, "glShadeModel", .{ mode });
    }
    

    pub fn glStencilFunc(self: *Self, func: i32, ref: i32, mask: i32) void {
        _ = Inheritance.call(self.gl10.?, "glStencilFunc", .{ func, ref, mask });
    }
    

    pub fn glStencilMask(self: *Self, mask: i32) void {
        _ = Inheritance.call(self.gl10.?, "glStencilMask", .{ mask });
    }
    

    pub fn glStencilOp(self: *Self, fail: i32, zfail: i32, zpass: i32) void {
        _ = Inheritance.call(self.gl10.?, "glStencilOp", .{ fail, zfail, zpass });
    }
    

    pub fn glTexCoordPointer(self: *Self, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
        _ = Inheritance.call(self.gl10.?, "glTexCoordPointer", .{ size, @"type", stride, pointer });
    }
    

    pub fn glTexEnvf(self: *Self, target: i32, pname: i32, param: f32) void {
        _ = Inheritance.call(self.gl10.?, "glTexEnvf", .{ target, pname, param });
    }
    

    pub fn glTexEnvfv4(self: *Self, target: i32, pname: i32, params: []f32, offset: i32) void {
        _ = Inheritance.call(self.gl10.?, "glTexEnvfv", .{ target, pname, params, offset });
    }
    

    pub fn glTexEnvfv(self: *Self, target: i32, pname: i32, params: ?*FloatBuffer) void {
        _ = Inheritance.call(self.gl10.?, "glTexEnvfv", .{ target, pname, params });
    }
    

    pub fn glTexImage2D(self: *Self, target: i32, level: i32, internalformat: i32, width: i32, height: i32, border: i32, format: i32, @"type": i32, pixels: ?*Buffer) void {
        _ = Inheritance.call(self.gl10.?, "glTexImage2D", .{ target, level, internalformat, width, height, border, format, @"type", pixels });
    }
    

    pub fn glTexParameterf(self: *Self, target: i32, pname: i32, param: f32) void {
        _ = Inheritance.call(self.gl10.?, "glTexParameterf", .{ target, pname, param });
    }
    

    pub fn glTexParameteri(self: *Self, target: i32, pname: i32, param: i32) void {
        _ = Inheritance.call(self.gl10.?, "glTexParameteri", .{ target, pname, param });
    }
    

    pub fn glTexSubImage2D(self: *Self, target: i32, level: i32, xoffset: i32, yoffset: i32, width: i32, height: i32, format: i32, @"type": i32, pixels: ?*Buffer) void {
        _ = Inheritance.call(self.gl10.?, "glTexSubImage2D", .{ target, level, xoffset, yoffset, width, height, format, @"type", pixels });
    }
    

    pub fn glTranslatef(self: *Self, x: f32, y: f32, z: f32) void {
        _ = Inheritance.call(self.gl10.?, "glTranslatef", .{ x, y, z });
    }
    

    pub fn glVertexPointer(self: *Self, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
        _ = Inheritance.call(self.gl10.?, "glVertexPointer", .{ size, @"type", stride, pointer });
    }
    

    pub fn glViewport(self: *Self, x: i32, y: i32, width: i32, height: i32) void {
        _ = Inheritance.call(self.gl10.?, "glViewport", .{ x, y, width, height });
    }
    

    pub fn glBegin(self: *Self, i: i32) void {
        _ = Inheritance.call(self.gl10.?, "glBegin", .{ i });
    }
    

    pub fn glEnd(self: *Self) void {
        _ = self.gl10.?.glEnd();
    }
    

    pub fn glVertex3f(self: *Self, f: f32, f2: f32, f3: f32) void {
        _ = Inheritance.call(self.gl10.?, "glVertex3f", .{ f, f2, f3 });
    }
    

    pub fn glPolygonMode(self: *Self, i: i32, i1: i32) void {
        _ = Inheritance.call(self.gl10.?, "glPolygonMode", .{ i, i1 });
    }
};


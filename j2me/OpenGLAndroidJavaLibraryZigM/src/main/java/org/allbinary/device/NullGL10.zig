// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.device

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
// const Buffer = @import("java/nio/Buffer.zig").Buffer;
// const FloatBuffer = @import("java/nio/FloatBuffer.zig").FloatBuffer;
// const IntBuffer = @import("java/nio/IntBuffer.zig").IntBuffer;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const NullGL10 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.device.NullGL10";
    // Implements GL10
    pub var NULL_GL10: ?*NullGL10 = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_GL10 = NullGL10.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn glActiveTexture(self: *Self, texture: i32) void {
        _ = texture;
        _ = self;
        return;
    }
    

    pub fn glAlphaFunc(self: *Self, func: i32, ref: f32) void {
        _ = func;
        _ = ref;
        _ = self;
        return;
    }
    

    pub fn glAlphaFuncx(self: *Self, func: i32, ref: i32) void {
        _ = func;
        _ = ref;
        _ = self;
    }
    

    pub fn glBindTexture(self: *Self, target: i32, texture: i32) void {
        _ = target;
        _ = texture;
        _ = self;
        return;
    }
    

    pub fn glBlendFunc(self: *Self, sfactor: i32, dfactor: i32) void {
        _ = sfactor;
        _ = dfactor;
        _ = self;
        return;
    }
    

    pub fn glClear(self: *Self, mask: i32) void {
        _ = mask;
        _ = self;
        return;
    }
    

    pub fn glClearColor(self: *Self, red: f32, green: f32, blue: f32, alpha: f32) void {
        _ = red;
        _ = green;
        _ = blue;
        _ = alpha;
        _ = self;
        return;
    }
    

    pub fn glClearColorx(self: *Self, red: i32, green: i32, blue: i32, alpha: i32) void {
        _ = red;
        _ = green;
        _ = blue;
        _ = alpha;
        _ = self;
    }
    

    pub fn glClearDepthf(self: *Self, depth: f32) void {
        _ = depth;
        _ = self;
        return;
    }
    

    pub fn glClearDepthx(self: *Self, depth: i32) void {
        _ = depth;
        _ = self;
    }
    

    pub fn glClearStencil(self: *Self, s: i32) void {
        _ = s;
        _ = self;
        return;
    }
    

    pub fn glClientActiveTexture(self: *Self, texture: i32) void {
        _ = texture;
        _ = self;
        return;
    }
    

    pub fn glColor4f(self: *Self, red: f32, green: f32, blue: f32, alpha: f32) void {
        _ = red;
        _ = green;
        _ = blue;
        _ = alpha;
        _ = self;
        return;
    }
    

    pub fn glColor4x(self: *Self, red: i32, green: i32, blue: i32, alpha: i32) void {
        _ = red;
        _ = green;
        _ = blue;
        _ = alpha;
        _ = self;
    }
    

    pub fn glColorMask(self: *Self, red: bool, green: bool, blue: bool, alpha: bool) void {
        _ = red;
        _ = green;
        _ = blue;
        _ = alpha;
        _ = self;
        return;
    }
    

    pub fn glColorPointer(self: *Self, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
        _ = size;
        _ = @"type";
        _ = stride;
        _ = pointer;
        _ = self;
        return;
    }
    

    pub fn glCompressedTexImage2D(self: *Self, target: i32, level: i32, internalformat: i32, width: i32, height: i32, border: i32, imageSize: i32, data: ?*Buffer) void {
        _ = target;
        _ = level;
        _ = internalformat;
        _ = width;
        _ = height;
        _ = border;
        _ = imageSize;
        _ = data;
        _ = self;
        return;
    }
    

    pub fn glCompressedTexSubImage2D(self: *Self, target: i32, level: i32, xoffset: i32, yoffset: i32, width: i32, height: i32, format: i32, imageSize: i32, data: ?*Buffer) void {
        _ = target;
        _ = level;
        _ = xoffset;
        _ = yoffset;
        _ = width;
        _ = height;
        _ = format;
        _ = imageSize;
        _ = data;
        _ = self;
        return;
    }
    

    pub fn glCopyTexImage2D(self: *Self, target: i32, level: i32, internalformat: i32, x: i32, y: i32, width: i32, height: i32, border: i32) void {
        _ = target;
        _ = level;
        _ = internalformat;
        _ = x;
        _ = y;
        _ = width;
        _ = height;
        _ = border;
        _ = self;
        return;
    }
    

    pub fn glCopyTexSubImage2D(self: *Self, target: i32, level: i32, xoffset: i32, yoffset: i32, x: i32, y: i32, width: i32, height: i32) void {
        _ = target;
        _ = level;
        _ = xoffset;
        _ = yoffset;
        _ = x;
        _ = y;
        _ = width;
        _ = height;
        _ = self;
        return;
    }
    

    pub fn glCullFace(self: *Self, mode: i32) void {
        _ = mode;
        _ = self;
        return;
    }
    

    pub fn glDeleteTextures3(self: *Self, n: i32, textures: []i32, offset: i32) void {
        _ = n;
        _ = textures;
        _ = offset;
        _ = self;
        return;
    }
    

    pub fn glDeleteTextures(self: *Self, n: i32, textures: ?*IntBuffer) void {
        _ = n;
        _ = textures;
        _ = self;
        return;
    }
    

    pub fn glDepthFunc(self: *Self, func: i32) void {
        _ = func;
        _ = self;
        return;
    }
    

    pub fn glDepthMask(self: *Self, flag: bool) void {
        _ = flag;
        _ = self;
        return;
    }
    

    pub fn glDepthRangef(self: *Self, zNear: f32, zFar: f32) void {
        _ = zNear;
        _ = zFar;
        _ = self;
        return;
    }
    

    pub fn glDepthRangex(self: *Self, zNear: i32, zFar: i32) void {
        _ = zNear;
        _ = zFar;
        _ = self;
    }
    

    pub fn glDisable(self: *Self, cap: i32) void {
        _ = cap;
        _ = self;
        return;
    }
    

    pub fn glDisableClientState(self: *Self, array: i32) void {
        _ = array;
        _ = self;
        return;
    }
    

    pub fn glDrawArrays(self: *Self, mode: i32, first: i32, count: i32) void {
        _ = mode;
        _ = first;
        _ = count;
        _ = self;
        return;
    }
    

    pub fn glDrawElements(self: *Self, mode: i32, count: i32, @"type": i32, indices: ?*Buffer) void {
        _ = mode;
        _ = count;
        _ = @"type";
        _ = indices;
        _ = self;
        return;
    }
    

    pub fn glEnable(self: *Self, cap: i32) void {
        _ = cap;
        _ = self;
        return;
    }
    

    pub fn glEnableClientState(self: *Self, array: i32) void {
        _ = array;
        _ = self;
        return;
    }
    

    pub fn glFinish(self: *Self) void {
        _ = self;
        return;
    }
    

    pub fn glFlush(self: *Self) void {
        _ = self;
        return;
    }
    

    pub fn glFogf(self: *Self, pname: i32, param: f32) void {
        _ = pname;
        _ = param;
        _ = self;
        return;
    }
    

    pub fn glFogfv3(self: *Self, pname: i32, params: []f32, offset: i32) void {
        _ = pname;
        _ = params;
        _ = offset;
        _ = self;
        return;
    }
    

    pub fn glFogfv(self: *Self, pname: i32, params: ?*FloatBuffer) void {
        _ = pname;
        _ = params;
        _ = self;
        return;
    }
    

    pub fn glFogx(self: *Self, pname: i32, param: i32) void {
        _ = pname;
        _ = param;
        _ = self;
    }
    

    pub fn glFogxv3(self: *Self, pname: i32, params: []i32, offset: i32) void {
        _ = pname;
        _ = params;
        _ = offset;
        _ = self;
    }
    

    pub fn glFogxv(self: *Self, pname: i32, params: ?*IntBuffer) void {
        _ = pname;
        _ = params;
        _ = self;
    }
    

    pub fn glFrontFace(self: *Self, mode: i32) void {
        _ = mode;
        _ = self;
        return;
    }
    

    pub fn glFrustumf(self: *Self, left: f32, right: f32, bottom: f32, top: f32, zNear: f32, zFar: f32) void {
        _ = left;
        _ = right;
        _ = bottom;
        _ = top;
        _ = zNear;
        _ = zFar;
        _ = self;
        return;
    }
    

    pub fn glFrustumx(self: *Self, left: i32, right: i32, bottom: i32, top: i32, zNear: i32, zFar: i32) void {
        _ = left;
        _ = right;
        _ = bottom;
        _ = top;
        _ = zNear;
        _ = zFar;
        _ = self;
    }
    

    pub fn glGenTextures3(self: *Self, n: i32, textures: []i32, offset: i32) void {
        _ = n;
        _ = textures;
        _ = offset;
        _ = self;
        return;
    }
    

    pub fn glGenTextures(self: *Self, n: i32, textures: ?*IntBuffer) void {
        _ = n;
        _ = textures;
        _ = self;
        return;
    }
    

    pub fn glGetError(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn glGetIntegerv3(self: *Self, pname: i32, params: []i32, offset: i32) void {
        _ = pname;
        _ = params;
        _ = offset;
        _ = self;
        return;
    }
    

    pub fn glGetIntegerv(self: *Self, pname: i32, params: ?*IntBuffer) void {
        _ = pname;
        _ = params;
        _ = self;
        return;
    }
    

    pub fn glGetString(self: *Self, name: i32) ?*String {
        _ = name;
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn glHint(self: *Self, target: i32, mode: i32) void {
        _ = target;
        _ = mode;
        _ = self;
        return;
    }
    

    pub fn glLightModelf(self: *Self, pname: i32, param: f32) void {
        _ = pname;
        _ = param;
        _ = self;
        return;
    }
    

    pub fn glLightModelfv3(self: *Self, pname: i32, params: []f32, offset: i32) void {
        _ = pname;
        _ = params;
        _ = offset;
        _ = self;
        return;
    }
    

    pub fn glLightModelfv(self: *Self, pname: i32, params: ?*FloatBuffer) void {
        _ = pname;
        _ = params;
        _ = self;
        return;
    }
    

    pub fn glLightModelx(self: *Self, pname: i32, param: i32) void {
        _ = pname;
        _ = param;
        _ = self;
    }
    

    pub fn glLightModelxv3(self: *Self, pname: i32, params: []i32, offset: i32) void {
        _ = pname;
        _ = params;
        _ = offset;
        _ = self;
    }
    

    pub fn glLightModelxv(self: *Self, pname: i32, params: ?*IntBuffer) void {
        _ = pname;
        _ = params;
        _ = self;
    }
    

    pub fn glLightf(self: *Self, light: i32, pname: i32, param: f32) void {
        _ = light;
        _ = pname;
        _ = param;
        _ = self;
        return;
    }
    

    pub fn glLightfv4(self: *Self, light: i32, pname: i32, params: []f32, offset: i32) void {
        _ = light;
        _ = pname;
        _ = params;
        _ = offset;
        _ = self;
        return;
    }
    

    pub fn glLightfv(self: *Self, light: i32, pname: i32, params: ?*FloatBuffer) void {
        _ = light;
        _ = pname;
        _ = params;
        _ = self;
        return;
    }
    

    pub fn glLightx(self: *Self, light: i32, pname: i32, param: i32) void {
        _ = light;
        _ = pname;
        _ = param;
        _ = self;
    }
    

    pub fn glLightxv4(self: *Self, light: i32, pname: i32, params: []i32, offset: i32) void {
        _ = light;
        _ = pname;
        _ = params;
        _ = offset;
        _ = self;
    }
    

    pub fn glLightxv(self: *Self, light: i32, pname: i32, params: ?*IntBuffer) void {
        _ = light;
        _ = pname;
        _ = params;
        _ = self;
    }
    

    pub fn glLineWidth(self: *Self, width: f32) void {
        _ = width;
        _ = self;
        return;
    }
    

    pub fn glLineWidthx(self: *Self, width: i32) void {
        _ = width;
        _ = self;
    }
    

    pub fn glLoadIdentity(self: *Self) void {
        _ = self;
        return;
    }
    

    pub fn glLoadMatrixf2(self: *Self, m: []f32, offset: i32) void {
        _ = m;
        _ = offset;
        _ = self;
        return;
    }
    

    pub fn glLoadMatrixf(self: *Self, m: ?*FloatBuffer) void {
        _ = m;
        _ = self;
        return;
    }
    

    pub fn glLoadMatrixx2(self: *Self, m: []i32, offset: i32) void {
        _ = m;
        _ = offset;
        _ = self;
    }
    

    pub fn glLoadMatrixx(self: *Self, m: ?*IntBuffer) void {
        _ = m;
        _ = self;
    }
    

    pub fn glLogicOp(self: *Self, opcode: i32) void {
        _ = opcode;
        _ = self;
        return;
    }
    

    pub fn glMaterialf(self: *Self, face: i32, pname: i32, param: f32) void {
        _ = face;
        _ = pname;
        _ = param;
        _ = self;
        return;
    }
    

    pub fn glMaterialfv4(self: *Self, face: i32, pname: i32, params: []f32, offset: i32) void {
        _ = face;
        _ = pname;
        _ = params;
        _ = offset;
        _ = self;
        return;
    }
    

    pub fn glMaterialfv(self: *Self, face: i32, pname: i32, params: ?*FloatBuffer) void {
        _ = face;
        _ = pname;
        _ = params;
        _ = self;
        return;
    }
    

    pub fn glMaterialx(self: *Self, face: i32, pname: i32, param: i32) void {
        _ = face;
        _ = pname;
        _ = param;
        _ = self;
    }
    

    pub fn glMaterialxv4(self: *Self, face: i32, pname: i32, params: []i32, offset: i32) void {
        _ = face;
        _ = pname;
        _ = params;
        _ = offset;
        _ = self;
    }
    

    pub fn glMaterialxv(self: *Self, face: i32, pname: i32, params: ?*IntBuffer) void {
        _ = face;
        _ = pname;
        _ = params;
        _ = self;
    }
    

    pub fn glMatrixMode(self: *Self, mode: i32) void {
        _ = mode;
        _ = self;
        return;
    }
    

    pub fn glMultMatrixf2(self: *Self, m: []f32, offset: i32) void {
        _ = m;
        _ = offset;
        _ = self;
        return;
    }
    

    pub fn glMultMatrixf(self: *Self, m: ?*FloatBuffer) void {
        _ = m;
        _ = self;
        return;
    }
    

    pub fn glMultMatrixx2(self: *Self, m: []i32, offset: i32) void {
        _ = m;
        _ = offset;
        _ = self;
    }
    

    pub fn glMultMatrixx(self: *Self, m: ?*IntBuffer) void {
        _ = m;
        _ = self;
    }
    

    pub fn glMultiTexCoord4f(self: *Self, target: i32, s: f32, t: f32, r: f32, q: f32) void {
        _ = target;
        _ = s;
        _ = t;
        _ = r;
        _ = q;
        _ = self;
        return;
    }
    

    pub fn glMultiTexCoord4x(self: *Self, target: i32, s: i32, t: i32, r: i32, q: i32) void {
        _ = target;
        _ = s;
        _ = t;
        _ = r;
        _ = q;
        _ = self;
    }
    

    pub fn glNormal3f(self: *Self, nx: f32, ny: f32, nz: f32) void {
        _ = nx;
        _ = ny;
        _ = nz;
        _ = self;
        return;
    }
    

    pub fn glNormal3x(self: *Self, nx: i32, ny: i32, nz: i32) void {
        _ = nx;
        _ = ny;
        _ = nz;
        _ = self;
    }
    

    pub fn glNormalPointer(self: *Self, @"type": i32, stride: i32, pointer: ?*Buffer) void {
        _ = @"type";
        _ = stride;
        _ = pointer;
        _ = self;
        return;
    }
    

    pub fn glOrthof(self: *Self, left: f32, right: f32, bottom: f32, top: f32, zNear: f32, zFar: f32) void {
        _ = left;
        _ = right;
        _ = bottom;
        _ = top;
        _ = zNear;
        _ = zFar;
        _ = self;
        return;
    }
    

    pub fn glOrthox(self: *Self, left: i32, right: i32, bottom: i32, top: i32, zNear: i32, zFar: i32) void {
        _ = left;
        _ = right;
        _ = bottom;
        _ = top;
        _ = zNear;
        _ = zFar;
        _ = self;
    }
    

    pub fn glPixelStorei(self: *Self, pname: i32, param: i32) void {
        _ = pname;
        _ = param;
        _ = self;
        return;
    }
    

    pub fn glPointSize(self: *Self, size: f32) void {
        _ = size;
        _ = self;
        return;
    }
    

    pub fn glPointSizex(self: *Self, size: i32) void {
        _ = size;
        _ = self;
    }
    

    pub fn glPolygonOffset(self: *Self, factor: f32, units: f32) void {
        _ = factor;
        _ = units;
        _ = self;
        return;
    }
    

    pub fn glPolygonOffsetx(self: *Self, factor: i32, units: i32) void {
        _ = factor;
        _ = units;
        _ = self;
    }
    

    pub fn glPopMatrix(self: *Self) void {
        _ = self;
        return;
    }
    

    pub fn glPushMatrix(self: *Self) void {
        _ = self;
        return;
    }
    

    pub fn glReadPixels(self: *Self, x: i32, y: i32, width: i32, height: i32, format: i32, @"type": i32, pixels: ?*Buffer) void {
        _ = x;
        _ = y;
        _ = width;
        _ = height;
        _ = format;
        _ = @"type";
        _ = pixels;
        _ = self;
        return;
    }
    

    pub fn glRotatef(self: *Self, angle: f32, x: f32, y: f32, z: f32) void {
        _ = angle;
        _ = x;
        _ = y;
        _ = z;
        _ = self;
        return;
    }
    

    pub fn glRotatex(self: *Self, angle: i32, x: i32, y: i32, z: i32) void {
        _ = angle;
        _ = x;
        _ = y;
        _ = z;
        _ = self;
        return;
    }
    

    pub fn glSampleCoverage(self: *Self, value: f32, invert: bool) void {
        _ = value;
        _ = invert;
        _ = self;
        return;
    }
    

    pub fn glSampleCoveragex(self: *Self, value: i32, invert: bool) void {
        _ = value;
        _ = invert;
        _ = self;
    }
    

    pub fn glScalef(self: *Self, x: f32, y: f32, z: f32) void {
        _ = x;
        _ = y;
        _ = z;
        _ = self;
        return;
    }
    

    pub fn glScalex(self: *Self, x: i32, y: i32, z: i32) void {
        _ = x;
        _ = y;
        _ = z;
        _ = self;
        return;
    }
    

    pub fn glScissor(self: *Self, x: i32, y: i32, width: i32, height: i32) void {
        _ = x;
        _ = y;
        _ = width;
        _ = height;
        _ = self;
        return;
    }
    

    pub fn glShadeModel(self: *Self, mode: i32) void {
        _ = mode;
        _ = self;
        return;
    }
    

    pub fn glStencilFunc(self: *Self, func: i32, ref: i32, mask: i32) void {
        _ = func;
        _ = ref;
        _ = mask;
        _ = self;
        return;
    }
    

    pub fn glStencilMask(self: *Self, mask: i32) void {
        _ = mask;
        _ = self;
        return;
    }
    

    pub fn glStencilOp(self: *Self, fail: i32, zfail: i32, zpass: i32) void {
        _ = fail;
        _ = zfail;
        _ = zpass;
        _ = self;
        return;
    }
    

    pub fn glTexCoordPointer(self: *Self, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
        _ = size;
        _ = @"type";
        _ = stride;
        _ = pointer;
        _ = self;
        return;
    }
    

    pub fn glTexEnvf(self: *Self, target: i32, pname: i32, param: f32) void {
        _ = target;
        _ = pname;
        _ = param;
        _ = self;
        return;
    }
    

    pub fn glTexEnvfv4(self: *Self, target: i32, pname: i32, params: []f32, offset: i32) void {
        _ = target;
        _ = pname;
        _ = params;
        _ = offset;
        _ = self;
        return;
    }
    

    pub fn glTexEnvfv(self: *Self, target: i32, pname: i32, params: ?*FloatBuffer) void {
        _ = target;
        _ = pname;
        _ = params;
        _ = self;
        return;
    }
    

    pub fn glTexEnvx(self: *Self, target: i32, pname: i32, param: i32) void {
        _ = target;
        _ = pname;
        _ = param;
        _ = self;
    }
    

    pub fn glTexEnvxv4(self: *Self, target: i32, pname: i32, params: []i32, offset: i32) void {
        _ = target;
        _ = pname;
        _ = params;
        _ = offset;
        _ = self;
    }
    

    pub fn glTexEnvxv(self: *Self, target: i32, pname: i32, params: ?*IntBuffer) void {
        _ = target;
        _ = pname;
        _ = params;
        _ = self;
    }
    

    pub fn glTexImage2D(self: *Self, target: i32, level: i32, internalformat: i32, width: i32, height: i32, border: i32, format: i32, @"type": i32, pixels: ?*Buffer) void {
        _ = target;
        _ = level;
        _ = internalformat;
        _ = width;
        _ = height;
        _ = border;
        _ = format;
        _ = @"type";
        _ = pixels;
        _ = self;
        return;
    }
    

    pub fn glTexParameterf(self: *Self, target: i32, pname: i32, param: f32) void {
        _ = target;
        _ = pname;
        _ = param;
        _ = self;
        return;
    }
    

    pub fn glTexParameterx(self: *Self, target: i32, pname: i32, param: i32) void {
        _ = target;
        _ = pname;
        _ = param;
        _ = self;
    }
    

    pub fn glTexSubImage2D(self: *Self, target: i32, level: i32, xoffset: i32, yoffset: i32, width: i32, height: i32, format: i32, @"type": i32, pixels: ?*Buffer) void {
        _ = target;
        _ = level;
        _ = xoffset;
        _ = yoffset;
        _ = width;
        _ = height;
        _ = format;
        _ = @"type";
        _ = pixels;
        _ = self;
        return;
    }
    

    pub fn glTranslatef(self: *Self, x: f32, y: f32, z: f32) void {
        _ = x;
        _ = y;
        _ = z;
        _ = self;
        return;
    }
    

    pub fn glTranslatex(self: *Self, x: i32, y: i32, z: i32) void {
        _ = x;
        _ = y;
        _ = z;
        _ = self;
    }
    

    pub fn glVertexPointer(self: *Self, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
        _ = size;
        _ = @"type";
        _ = stride;
        _ = pointer;
        _ = self;
        return;
    }
    

    pub fn glViewport(self: *Self, x: i32, y: i32, width: i32, height: i32) void {
        _ = x;
        _ = y;
        _ = width;
        _ = height;
        _ = self;
        return;
    }
};


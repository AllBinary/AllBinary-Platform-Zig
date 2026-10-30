// Generated Code Do Not Modify
// package javax.microedition.khronos.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Buffer = @import("java/nio/Buffer.zig").Buffer;
// const FloatBuffer = @import("java/nio/FloatBuffer.zig").FloatBuffer;
// const IntBuffer = @import("java/nio/IntBuffer.zig").IntBuffer;
const GL = @import("javax/microedition/khronos/opengles/GL.zig").GL;

// Java interface: an implementation is a pointer and a table of functions
pub const GL10 = struct {
    const Self = @This();
    pub const java_name = "javax.microedition.khronos.opengles.GL10";
    pointer: *anyopaque,
    object: Object,
    base: GL,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    glActiveTextureFn: *const fn (pointer: *anyopaque, texture: i32) void,
    glAlphaFuncFn: *const fn (pointer: *anyopaque, func: i32, ref: f32) void,
    glBindTextureFn: *const fn (pointer: *anyopaque, target: i32, texture: i32) void,
    glBlendFuncFn: *const fn (pointer: *anyopaque, sfactor: i32, dfactor: i32) void,
    glClearFn: *const fn (pointer: *anyopaque, mask: i32) void,
    glClearColorFn: *const fn (pointer: *anyopaque, red: f32, green: f32, blue: f32, alpha: f32) void,
    glClearDepthfFn: *const fn (pointer: *anyopaque, depth: f32) void,
    glClearStencilFn: *const fn (pointer: *anyopaque, s: i32) void,
    glClientActiveTextureFn: *const fn (pointer: *anyopaque, texture: i32) void,
    glColor4fFn: *const fn (pointer: *anyopaque, red: f32, green: f32, blue: f32, alpha: f32) void,
    glColorMaskFn: *const fn (pointer: *anyopaque, red: bool, green: bool, blue: bool, alpha: bool) void,
    glColorPointerFn: *const fn (pointer: *anyopaque, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void,
    glCompressedTexImage2DFn: *const fn (pointer: *anyopaque, target: i32, level: i32, internalformat: i32, width: i32, height: i32, border: i32, imageSize: i32, data: ?*Buffer) void,
    glCompressedTexSubImage2DFn: *const fn (pointer: *anyopaque, target: i32, level: i32, xoffset: i32, yoffset: i32, width: i32, height: i32, format: i32, imageSize: i32, data: ?*Buffer) void,
    glCopyTexImage2DFn: *const fn (pointer: *anyopaque, target: i32, level: i32, internalformat: i32, x: i32, y: i32, width: i32, height: i32, border: i32) void,
    glCopyTexSubImage2DFn: *const fn (pointer: *anyopaque, target: i32, level: i32, xoffset: i32, yoffset: i32, x: i32, y: i32, width: i32, height: i32) void,
    glCullFaceFn: *const fn (pointer: *anyopaque, mode: i32) void,
    glDeleteTexturesFn: *const fn (pointer: *anyopaque, n: i32, textures: []i32, offset: i32) void,
    glDeleteTexturesFn: *const fn (pointer: *anyopaque, n: i32, textures: ?*IntBuffer) void,
    glDepthFuncFn: *const fn (pointer: *anyopaque, func: i32) void,
    glDepthMaskFn: *const fn (pointer: *anyopaque, flag: bool) void,
    glDepthRangefFn: *const fn (pointer: *anyopaque, zNear: f32, zFar: f32) void,
    glDisableFn: *const fn (pointer: *anyopaque, cap: i32) void,
    glDisableClientStateFn: *const fn (pointer: *anyopaque, array: i32) void,
    glDrawArraysFn: *const fn (pointer: *anyopaque, mode: i32, first: i32, count: i32) void,
    glDrawElementsFn: *const fn (pointer: *anyopaque, mode: i32, count: i32, @"type": i32, indices: ?*Buffer) void,
    glEnableFn: *const fn (pointer: *anyopaque, cap: i32) void,
    glEnableClientStateFn: *const fn (pointer: *anyopaque, array: i32) void,
    glFinishFn: *const fn (pointer: *anyopaque) void,
    glFlushFn: *const fn (pointer: *anyopaque) void,
    glFogfFn: *const fn (pointer: *anyopaque, pname: i32, param: f32) void,
    glFogfvFn: *const fn (pointer: *anyopaque, pname: i32, params: []f32, offset: i32) void,
    glFogfvFn: *const fn (pointer: *anyopaque, pname: i32, params: ?*FloatBuffer) void,
    glFrontFaceFn: *const fn (pointer: *anyopaque, mode: i32) void,
    glFrustumfFn: *const fn (pointer: *anyopaque, left: f32, right: f32, bottom: f32, top: f32, zNear: f32, zFar: f32) void,
    glGenTexturesFn: *const fn (pointer: *anyopaque, n: i32, textures: []i32, offset: i32) void,
    glGenTexturesFn: *const fn (pointer: *anyopaque, n: i32, textures: ?*IntBuffer) void,
    glGetErrorFn: *const fn (pointer: *anyopaque) i32,
    glGetIntegervFn: *const fn (pointer: *anyopaque, pname: i32, params: []i32, offset: i32) void,
    glGetIntegervFn: *const fn (pointer: *anyopaque, pname: i32, params: ?*IntBuffer) void,
    glGetStringFn: *const fn (pointer: *anyopaque, name: i32) ?*String,
    glHintFn: *const fn (pointer: *anyopaque, target: i32, mode: i32) void,
    glLightModelfFn: *const fn (pointer: *anyopaque, pname: i32, param: f32) void,
    glLightModelfvFn: *const fn (pointer: *anyopaque, pname: i32, params: []f32, offset: i32) void,
    glLightModelfvFn: *const fn (pointer: *anyopaque, pname: i32, params: ?*FloatBuffer) void,
    glLightfFn: *const fn (pointer: *anyopaque, light: i32, pname: i32, param: f32) void,
    glLightfvFn: *const fn (pointer: *anyopaque, light: i32, pname: i32, params: []f32, offset: i32) void,
    glLightfvFn: *const fn (pointer: *anyopaque, light: i32, pname: i32, params: ?*FloatBuffer) void,
    glLineWidthFn: *const fn (pointer: *anyopaque, width: f32) void,
    glLoadIdentityFn: *const fn (pointer: *anyopaque) void,
    glLoadMatrixfFn: *const fn (pointer: *anyopaque, m: []f32, offset: i32) void,
    glLoadMatrixfFn: *const fn (pointer: *anyopaque, m: ?*FloatBuffer) void,
    glLogicOpFn: *const fn (pointer: *anyopaque, opcode: i32) void,
    glMaterialfFn: *const fn (pointer: *anyopaque, face: i32, pname: i32, param: f32) void,
    glMaterialfvFn: *const fn (pointer: *anyopaque, face: i32, pname: i32, params: []f32, offset: i32) void,
    glMaterialfvFn: *const fn (pointer: *anyopaque, face: i32, pname: i32, params: ?*FloatBuffer) void,
    glMatrixModeFn: *const fn (pointer: *anyopaque, mode: i32) void,
    glMultMatrixfFn: *const fn (pointer: *anyopaque, m: []f32, offset: i32) void,
    glMultMatrixfFn: *const fn (pointer: *anyopaque, m: ?*FloatBuffer) void,
    glMultiTexCoord4fFn: *const fn (pointer: *anyopaque, target: i32, s: f32, t: f32, r: f32, q: f32) void,
    glNormal3fFn: *const fn (pointer: *anyopaque, nx: f32, ny: f32, nz: f32) void,
    glNormalPointerFn: *const fn (pointer: *anyopaque, @"type": i32, stride: i32, pointer: ?*Buffer) void,
    glOrthofFn: *const fn (pointer: *anyopaque, left: f32, right: f32, bottom: f32, top: f32, zNear: f32, zFar: f32) void,
    glPixelStoreiFn: *const fn (pointer: *anyopaque, pname: i32, param: i32) void,
    glPointSizeFn: *const fn (pointer: *anyopaque, size: f32) void,
    glPolygonOffsetFn: *const fn (pointer: *anyopaque, factor: f32, units: f32) void,
    glPopMatrixFn: *const fn (pointer: *anyopaque) void,
    glPushMatrixFn: *const fn (pointer: *anyopaque) void,
    glReadPixelsFn: *const fn (pointer: *anyopaque, x: i32, y: i32, width: i32, height: i32, format: i32, @"type": i32, pixels: ?*Buffer) void,
    glRotatefFn: *const fn (pointer: *anyopaque, angle: f32, x: f32, y: f32, z: f32) void,
    glRotatexFn: *const fn (pointer: *anyopaque, angle: i32, x: i32, y: i32, z: i32) void,
    glSampleCoverageFn: *const fn (pointer: *anyopaque, value: f32, invert: bool) void,
    glScalefFn: *const fn (pointer: *anyopaque, x: f32, y: f32, z: f32) void,
    glScalexFn: *const fn (pointer: *anyopaque, x: i32, y: i32, z: i32) void,
    glScissorFn: *const fn (pointer: *anyopaque, x: i32, y: i32, width: i32, height: i32) void,
    glShadeModelFn: *const fn (pointer: *anyopaque, mode: i32) void,
    glStencilFuncFn: *const fn (pointer: *anyopaque, func: i32, ref: i32, mask: i32) void,
    glStencilMaskFn: *const fn (pointer: *anyopaque, mask: i32) void,
    glStencilOpFn: *const fn (pointer: *anyopaque, fail: i32, zfail: i32, zpass: i32) void,
    glTexCoordPointerFn: *const fn (pointer: *anyopaque, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void,
    glTexEnvfFn: *const fn (pointer: *anyopaque, target: i32, pname: i32, param: f32) void,
    glTexEnvfvFn: *const fn (pointer: *anyopaque, target: i32, pname: i32, params: []f32, offset: i32) void,
    glTexEnvfvFn: *const fn (pointer: *anyopaque, target: i32, pname: i32, params: ?*FloatBuffer) void,
    glTexImage2DFn: *const fn (pointer: *anyopaque, target: i32, level: i32, internalformat: i32, width: i32, height: i32, border: i32, format: i32, @"type": i32, pixels: ?*Buffer) void,
    glTexParameterfFn: *const fn (pointer: *anyopaque, target: i32, pname: i32, param: f32) void,
    glTexParameteriFn: *const fn (pointer: *anyopaque, target: i32, pname: i32, param: i32) void,
    glTexSubImage2DFn: *const fn (pointer: *anyopaque, target: i32, level: i32, xoffset: i32, yoffset: i32, width: i32, height: i32, format: i32, @"type": i32, pixels: ?*Buffer) void,
    glTranslatefFn: *const fn (pointer: *anyopaque, x: f32, y: f32, z: f32) void,
    glVertexPointerFn: *const fn (pointer: *anyopaque, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void,
    glViewportFn: *const fn (pointer: *anyopaque, x: i32, y: i32, width: i32, height: i32) void,
    glBeginFn: *const fn (pointer: *anyopaque, i: i32) void,
    glEndFn: *const fn (pointer: *anyopaque) void,
    glVertex3fFn: *const fn (pointer: *anyopaque, f: f32, f2: f32, f3: f32) void,
    glPolygonModeFn: *const fn (pointer: *anyopaque, i: i32, i1: i32) void,

    pub fn glActiveTexture(self: *Self, texture: i32) void {
        return self.glActiveTextureFn(self.pointer, texture);
    }

    pub fn glAlphaFunc(self: *Self, func: i32, ref: f32) void {
        return self.glAlphaFuncFn(self.pointer, func, ref);
    }

    pub fn glBindTexture(self: *Self, target: i32, texture: i32) void {
        return self.glBindTextureFn(self.pointer, target, texture);
    }

    pub fn glBlendFunc(self: *Self, sfactor: i32, dfactor: i32) void {
        return self.glBlendFuncFn(self.pointer, sfactor, dfactor);
    }

    pub fn glClear(self: *Self, mask: i32) void {
        return self.glClearFn(self.pointer, mask);
    }

    pub fn glClearColor(self: *Self, red: f32, green: f32, blue: f32, alpha: f32) void {
        return self.glClearColorFn(self.pointer, red, green, blue, alpha);
    }

    pub fn glClearDepthf(self: *Self, depth: f32) void {
        return self.glClearDepthfFn(self.pointer, depth);
    }

    pub fn glClearStencil(self: *Self, s: i32) void {
        return self.glClearStencilFn(self.pointer, s);
    }

    pub fn glClientActiveTexture(self: *Self, texture: i32) void {
        return self.glClientActiveTextureFn(self.pointer, texture);
    }

    pub fn glColor4f(self: *Self, red: f32, green: f32, blue: f32, alpha: f32) void {
        return self.glColor4fFn(self.pointer, red, green, blue, alpha);
    }

    pub fn glColorMask(self: *Self, red: bool, green: bool, blue: bool, alpha: bool) void {
        return self.glColorMaskFn(self.pointer, red, green, blue, alpha);
    }

    pub fn glColorPointer(self: *Self, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
        return self.glColorPointerFn(self.pointer, size, @"type", stride, pointer);
    }

    pub fn glCompressedTexImage2D(self: *Self, target: i32, level: i32, internalformat: i32, width: i32, height: i32, border: i32, imageSize: i32, data: ?*Buffer) void {
        return self.glCompressedTexImage2DFn(self.pointer, target, level, internalformat, width, height, border, imageSize, data);
    }

    pub fn glCompressedTexSubImage2D(self: *Self, target: i32, level: i32, xoffset: i32, yoffset: i32, width: i32, height: i32, format: i32, imageSize: i32, data: ?*Buffer) void {
        return self.glCompressedTexSubImage2DFn(self.pointer, target, level, xoffset, yoffset, width, height, format, imageSize, data);
    }

    pub fn glCopyTexImage2D(self: *Self, target: i32, level: i32, internalformat: i32, x: i32, y: i32, width: i32, height: i32, border: i32) void {
        return self.glCopyTexImage2DFn(self.pointer, target, level, internalformat, x, y, width, height, border);
    }

    pub fn glCopyTexSubImage2D(self: *Self, target: i32, level: i32, xoffset: i32, yoffset: i32, x: i32, y: i32, width: i32, height: i32) void {
        return self.glCopyTexSubImage2DFn(self.pointer, target, level, xoffset, yoffset, x, y, width, height);
    }

    pub fn glCullFace(self: *Self, mode: i32) void {
        return self.glCullFaceFn(self.pointer, mode);
    }

    pub fn glDeleteTextures(self: *Self, n: i32, textures: []i32, offset: i32) void {
        return self.glDeleteTexturesFn(self.pointer, n, textures, offset);
    }

    pub fn glDeleteTextures(self: *Self, n: i32, textures: ?*IntBuffer) void {
        return self.glDeleteTexturesFn(self.pointer, n, textures);
    }

    pub fn glDepthFunc(self: *Self, func: i32) void {
        return self.glDepthFuncFn(self.pointer, func);
    }

    pub fn glDepthMask(self: *Self, flag: bool) void {
        return self.glDepthMaskFn(self.pointer, flag);
    }

    pub fn glDepthRangef(self: *Self, zNear: f32, zFar: f32) void {
        return self.glDepthRangefFn(self.pointer, zNear, zFar);
    }

    pub fn glDisable(self: *Self, cap: i32) void {
        return self.glDisableFn(self.pointer, cap);
    }

    pub fn glDisableClientState(self: *Self, array: i32) void {
        return self.glDisableClientStateFn(self.pointer, array);
    }

    pub fn glDrawArrays(self: *Self, mode: i32, first: i32, count: i32) void {
        return self.glDrawArraysFn(self.pointer, mode, first, count);
    }

    pub fn glDrawElements(self: *Self, mode: i32, count: i32, @"type": i32, indices: ?*Buffer) void {
        return self.glDrawElementsFn(self.pointer, mode, count, @"type", indices);
    }

    pub fn glEnable(self: *Self, cap: i32) void {
        return self.glEnableFn(self.pointer, cap);
    }

    pub fn glEnableClientState(self: *Self, array: i32) void {
        return self.glEnableClientStateFn(self.pointer, array);
    }

    pub fn glFinish(self: *Self) void {
        return self.glFinishFn(self.pointer);
    }

    pub fn glFlush(self: *Self) void {
        return self.glFlushFn(self.pointer);
    }

    pub fn glFogf(self: *Self, pname: i32, param: f32) void {
        return self.glFogfFn(self.pointer, pname, param);
    }

    pub fn glFogfv(self: *Self, pname: i32, params: []f32, offset: i32) void {
        return self.glFogfvFn(self.pointer, pname, params, offset);
    }

    pub fn glFogfv(self: *Self, pname: i32, params: ?*FloatBuffer) void {
        return self.glFogfvFn(self.pointer, pname, params);
    }

    pub fn glFrontFace(self: *Self, mode: i32) void {
        return self.glFrontFaceFn(self.pointer, mode);
    }

    pub fn glFrustumf(self: *Self, left: f32, right: f32, bottom: f32, top: f32, zNear: f32, zFar: f32) void {
        return self.glFrustumfFn(self.pointer, left, right, bottom, top, zNear, zFar);
    }

    pub fn glGenTextures(self: *Self, n: i32, textures: []i32, offset: i32) void {
        return self.glGenTexturesFn(self.pointer, n, textures, offset);
    }

    pub fn glGenTextures(self: *Self, n: i32, textures: ?*IntBuffer) void {
        return self.glGenTexturesFn(self.pointer, n, textures);
    }

    pub fn glGetError(self: *Self) i32 {
        return self.glGetErrorFn(self.pointer);
    }

    pub fn glGetIntegerv(self: *Self, pname: i32, params: []i32, offset: i32) void {
        return self.glGetIntegervFn(self.pointer, pname, params, offset);
    }

    pub fn glGetIntegerv(self: *Self, pname: i32, params: ?*IntBuffer) void {
        return self.glGetIntegervFn(self.pointer, pname, params);
    }

    pub fn glGetString(self: *Self, name: i32) ?*String {
        return self.glGetStringFn(self.pointer, name);
    }

    pub fn glHint(self: *Self, target: i32, mode: i32) void {
        return self.glHintFn(self.pointer, target, mode);
    }

    pub fn glLightModelf(self: *Self, pname: i32, param: f32) void {
        return self.glLightModelfFn(self.pointer, pname, param);
    }

    pub fn glLightModelfv(self: *Self, pname: i32, params: []f32, offset: i32) void {
        return self.glLightModelfvFn(self.pointer, pname, params, offset);
    }

    pub fn glLightModelfv(self: *Self, pname: i32, params: ?*FloatBuffer) void {
        return self.glLightModelfvFn(self.pointer, pname, params);
    }

    pub fn glLightf(self: *Self, light: i32, pname: i32, param: f32) void {
        return self.glLightfFn(self.pointer, light, pname, param);
    }

    pub fn glLightfv(self: *Self, light: i32, pname: i32, params: []f32, offset: i32) void {
        return self.glLightfvFn(self.pointer, light, pname, params, offset);
    }

    pub fn glLightfv(self: *Self, light: i32, pname: i32, params: ?*FloatBuffer) void {
        return self.glLightfvFn(self.pointer, light, pname, params);
    }

    pub fn glLineWidth(self: *Self, width: f32) void {
        return self.glLineWidthFn(self.pointer, width);
    }

    pub fn glLoadIdentity(self: *Self) void {
        return self.glLoadIdentityFn(self.pointer);
    }

    pub fn glLoadMatrixf(self: *Self, m: []f32, offset: i32) void {
        return self.glLoadMatrixfFn(self.pointer, m, offset);
    }

    pub fn glLoadMatrixf(self: *Self, m: ?*FloatBuffer) void {
        return self.glLoadMatrixfFn(self.pointer, m);
    }

    pub fn glLogicOp(self: *Self, opcode: i32) void {
        return self.glLogicOpFn(self.pointer, opcode);
    }

    pub fn glMaterialf(self: *Self, face: i32, pname: i32, param: f32) void {
        return self.glMaterialfFn(self.pointer, face, pname, param);
    }

    pub fn glMaterialfv(self: *Self, face: i32, pname: i32, params: []f32, offset: i32) void {
        return self.glMaterialfvFn(self.pointer, face, pname, params, offset);
    }

    pub fn glMaterialfv(self: *Self, face: i32, pname: i32, params: ?*FloatBuffer) void {
        return self.glMaterialfvFn(self.pointer, face, pname, params);
    }

    pub fn glMatrixMode(self: *Self, mode: i32) void {
        return self.glMatrixModeFn(self.pointer, mode);
    }

    pub fn glMultMatrixf(self: *Self, m: []f32, offset: i32) void {
        return self.glMultMatrixfFn(self.pointer, m, offset);
    }

    pub fn glMultMatrixf(self: *Self, m: ?*FloatBuffer) void {
        return self.glMultMatrixfFn(self.pointer, m);
    }

    pub fn glMultiTexCoord4f(self: *Self, target: i32, s: f32, t: f32, r: f32, q: f32) void {
        return self.glMultiTexCoord4fFn(self.pointer, target, s, t, r, q);
    }

    pub fn glNormal3f(self: *Self, nx: f32, ny: f32, nz: f32) void {
        return self.glNormal3fFn(self.pointer, nx, ny, nz);
    }

    pub fn glNormalPointer(self: *Self, @"type": i32, stride: i32, pointer: ?*Buffer) void {
        return self.glNormalPointerFn(self.pointer, @"type", stride, pointer);
    }

    pub fn glOrthof(self: *Self, left: f32, right: f32, bottom: f32, top: f32, zNear: f32, zFar: f32) void {
        return self.glOrthofFn(self.pointer, left, right, bottom, top, zNear, zFar);
    }

    pub fn glPixelStorei(self: *Self, pname: i32, param: i32) void {
        return self.glPixelStoreiFn(self.pointer, pname, param);
    }

    pub fn glPointSize(self: *Self, size: f32) void {
        return self.glPointSizeFn(self.pointer, size);
    }

    pub fn glPolygonOffset(self: *Self, factor: f32, units: f32) void {
        return self.glPolygonOffsetFn(self.pointer, factor, units);
    }

    pub fn glPopMatrix(self: *Self) void {
        return self.glPopMatrixFn(self.pointer);
    }

    pub fn glPushMatrix(self: *Self) void {
        return self.glPushMatrixFn(self.pointer);
    }

    pub fn glReadPixels(self: *Self, x: i32, y: i32, width: i32, height: i32, format: i32, @"type": i32, pixels: ?*Buffer) void {
        return self.glReadPixelsFn(self.pointer, x, y, width, height, format, @"type", pixels);
    }

    pub fn glRotatef(self: *Self, angle: f32, x: f32, y: f32, z: f32) void {
        return self.glRotatefFn(self.pointer, angle, x, y, z);
    }

    pub fn glRotatex(self: *Self, angle: i32, x: i32, y: i32, z: i32) void {
        return self.glRotatexFn(self.pointer, angle, x, y, z);
    }

    pub fn glSampleCoverage(self: *Self, value: f32, invert: bool) void {
        return self.glSampleCoverageFn(self.pointer, value, invert);
    }

    pub fn glScalef(self: *Self, x: f32, y: f32, z: f32) void {
        return self.glScalefFn(self.pointer, x, y, z);
    }

    pub fn glScalex(self: *Self, x: i32, y: i32, z: i32) void {
        return self.glScalexFn(self.pointer, x, y, z);
    }

    pub fn glScissor(self: *Self, x: i32, y: i32, width: i32, height: i32) void {
        return self.glScissorFn(self.pointer, x, y, width, height);
    }

    pub fn glShadeModel(self: *Self, mode: i32) void {
        return self.glShadeModelFn(self.pointer, mode);
    }

    pub fn glStencilFunc(self: *Self, func: i32, ref: i32, mask: i32) void {
        return self.glStencilFuncFn(self.pointer, func, ref, mask);
    }

    pub fn glStencilMask(self: *Self, mask: i32) void {
        return self.glStencilMaskFn(self.pointer, mask);
    }

    pub fn glStencilOp(self: *Self, fail: i32, zfail: i32, zpass: i32) void {
        return self.glStencilOpFn(self.pointer, fail, zfail, zpass);
    }

    pub fn glTexCoordPointer(self: *Self, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
        return self.glTexCoordPointerFn(self.pointer, size, @"type", stride, pointer);
    }

    pub fn glTexEnvf(self: *Self, target: i32, pname: i32, param: f32) void {
        return self.glTexEnvfFn(self.pointer, target, pname, param);
    }

    pub fn glTexEnvfv(self: *Self, target: i32, pname: i32, params: []f32, offset: i32) void {
        return self.glTexEnvfvFn(self.pointer, target, pname, params, offset);
    }

    pub fn glTexEnvfv(self: *Self, target: i32, pname: i32, params: ?*FloatBuffer) void {
        return self.glTexEnvfvFn(self.pointer, target, pname, params);
    }

    pub fn glTexImage2D(self: *Self, target: i32, level: i32, internalformat: i32, width: i32, height: i32, border: i32, format: i32, @"type": i32, pixels: ?*Buffer) void {
        return self.glTexImage2DFn(self.pointer, target, level, internalformat, width, height, border, format, @"type", pixels);
    }

    pub fn glTexParameterf(self: *Self, target: i32, pname: i32, param: f32) void {
        return self.glTexParameterfFn(self.pointer, target, pname, param);
    }

    pub fn glTexParameteri(self: *Self, target: i32, pname: i32, param: i32) void {
        return self.glTexParameteriFn(self.pointer, target, pname, param);
    }

    pub fn glTexSubImage2D(self: *Self, target: i32, level: i32, xoffset: i32, yoffset: i32, width: i32, height: i32, format: i32, @"type": i32, pixels: ?*Buffer) void {
        return self.glTexSubImage2DFn(self.pointer, target, level, xoffset, yoffset, width, height, format, @"type", pixels);
    }

    pub fn glTranslatef(self: *Self, x: f32, y: f32, z: f32) void {
        return self.glTranslatefFn(self.pointer, x, y, z);
    }

    pub fn glVertexPointer(self: *Self, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
        return self.glVertexPointerFn(self.pointer, size, @"type", stride, pointer);
    }

    pub fn glViewport(self: *Self, x: i32, y: i32, width: i32, height: i32) void {
        return self.glViewportFn(self.pointer, x, y, width, height);
    }

    pub fn glBegin(self: *Self, i: i32) void {
        return self.glBeginFn(self.pointer, i);
    }

    pub fn glEnd(self: *Self) void {
        return self.glEndFn(self.pointer);
    }

    pub fn glVertex3f(self: *Self, f: f32, f2: f32, f3: f32) void {
        return self.glVertex3fFn(self.pointer, f, f2, f3);
    }

    pub fn glPolygonMode(self: *Self, i: i32, i1: i32) void {
        return self.glPolygonModeFn(self.pointer, i, i1);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn glActiveTexture(pointer: *anyopaque, texture: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glActiveTexture").glActiveTexture(texture);
            }
            fn glAlphaFunc(pointer: *anyopaque, func: i32, ref: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glAlphaFunc").glAlphaFunc(func, ref);
            }
            fn glBindTexture(pointer: *anyopaque, target: i32, texture: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glBindTexture").glBindTexture(target, texture);
            }
            fn glBlendFunc(pointer: *anyopaque, sfactor: i32, dfactor: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glBlendFunc").glBlendFunc(sfactor, dfactor);
            }
            fn glClear(pointer: *anyopaque, mask: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glClear").glClear(mask);
            }
            fn glClearColor(pointer: *anyopaque, red: f32, green: f32, blue: f32, alpha: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glClearColor").glClearColor(red, green, blue, alpha);
            }
            fn glClearDepthf(pointer: *anyopaque, depth: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glClearDepthf").glClearDepthf(depth);
            }
            fn glClearStencil(pointer: *anyopaque, s: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glClearStencil").glClearStencil(s);
            }
            fn glClientActiveTexture(pointer: *anyopaque, texture: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glClientActiveTexture").glClientActiveTexture(texture);
            }
            fn glColor4f(pointer: *anyopaque, red: f32, green: f32, blue: f32, alpha: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glColor4f").glColor4f(red, green, blue, alpha);
            }
            fn glColorMask(pointer: *anyopaque, red: bool, green: bool, blue: bool, alpha: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glColorMask").glColorMask(red, green, blue, alpha);
            }
            fn glColorPointer(pointer: *anyopaque, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glColorPointer").glColorPointer(size, @"type", stride, pointer);
            }
            fn glCompressedTexImage2D(pointer: *anyopaque, target: i32, level: i32, internalformat: i32, width: i32, height: i32, border: i32, imageSize: i32, data: ?*Buffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glCompressedTexImage2D").glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data);
            }
            fn glCompressedTexSubImage2D(pointer: *anyopaque, target: i32, level: i32, xoffset: i32, yoffset: i32, width: i32, height: i32, format: i32, imageSize: i32, data: ?*Buffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glCompressedTexSubImage2D").glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data);
            }
            fn glCopyTexImage2D(pointer: *anyopaque, target: i32, level: i32, internalformat: i32, x: i32, y: i32, width: i32, height: i32, border: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glCopyTexImage2D").glCopyTexImage2D(target, level, internalformat, x, y, width, height, border);
            }
            fn glCopyTexSubImage2D(pointer: *anyopaque, target: i32, level: i32, xoffset: i32, yoffset: i32, x: i32, y: i32, width: i32, height: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glCopyTexSubImage2D").glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height);
            }
            fn glCullFace(pointer: *anyopaque, mode: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glCullFace").glCullFace(mode);
            }
            fn glDeleteTextures(pointer: *anyopaque, n: i32, textures: []i32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDeleteTextures").glDeleteTextures(n, textures, offset);
            }
            fn glDeleteTextures(pointer: *anyopaque, n: i32, textures: ?*IntBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDeleteTextures").glDeleteTextures(n, textures);
            }
            fn glDepthFunc(pointer: *anyopaque, func: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDepthFunc").glDepthFunc(func);
            }
            fn glDepthMask(pointer: *anyopaque, flag: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDepthMask").glDepthMask(flag);
            }
            fn glDepthRangef(pointer: *anyopaque, zNear: f32, zFar: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDepthRangef").glDepthRangef(zNear, zFar);
            }
            fn glDisable(pointer: *anyopaque, cap: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDisable").glDisable(cap);
            }
            fn glDisableClientState(pointer: *anyopaque, array: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDisableClientState").glDisableClientState(array);
            }
            fn glDrawArrays(pointer: *anyopaque, mode: i32, first: i32, count: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDrawArrays").glDrawArrays(mode, first, count);
            }
            fn glDrawElements(pointer: *anyopaque, mode: i32, count: i32, @"type": i32, indices: ?*Buffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDrawElements").glDrawElements(mode, count, @"type", indices);
            }
            fn glEnable(pointer: *anyopaque, cap: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glEnable").glEnable(cap);
            }
            fn glEnableClientState(pointer: *anyopaque, array: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glEnableClientState").glEnableClientState(array);
            }
            fn glFinish(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glFinish").glFinish();
            }
            fn glFlush(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glFlush").glFlush();
            }
            fn glFogf(pointer: *anyopaque, pname: i32, param: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glFogf").glFogf(pname, param);
            }
            fn glFogfv(pointer: *anyopaque, pname: i32, params: []f32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glFogfv").glFogfv(pname, params, offset);
            }
            fn glFogfv(pointer: *anyopaque, pname: i32, params: ?*FloatBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glFogfv").glFogfv(pname, params);
            }
            fn glFrontFace(pointer: *anyopaque, mode: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glFrontFace").glFrontFace(mode);
            }
            fn glFrustumf(pointer: *anyopaque, left: f32, right: f32, bottom: f32, top: f32, zNear: f32, zFar: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glFrustumf").glFrustumf(left, right, bottom, top, zNear, zFar);
            }
            fn glGenTextures(pointer: *anyopaque, n: i32, textures: []i32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGenTextures").glGenTextures(n, textures, offset);
            }
            fn glGenTextures(pointer: *anyopaque, n: i32, textures: ?*IntBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGenTextures").glGenTextures(n, textures);
            }
            fn glGetError(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGetError").glGetError();
            }
            fn glGetIntegerv(pointer: *anyopaque, pname: i32, params: []i32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGetIntegerv").glGetIntegerv(pname, params, offset);
            }
            fn glGetIntegerv(pointer: *anyopaque, pname: i32, params: ?*IntBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGetIntegerv").glGetIntegerv(pname, params);
            }
            fn glGetString(pointer: *anyopaque, name: i32) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "glGetString").glGetString(name));
            }
            fn glHint(pointer: *anyopaque, target: i32, mode: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glHint").glHint(target, mode);
            }
            fn glLightModelf(pointer: *anyopaque, pname: i32, param: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glLightModelf").glLightModelf(pname, param);
            }
            fn glLightModelfv(pointer: *anyopaque, pname: i32, params: []f32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glLightModelfv").glLightModelfv(pname, params, offset);
            }
            fn glLightModelfv(pointer: *anyopaque, pname: i32, params: ?*FloatBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glLightModelfv").glLightModelfv(pname, params);
            }
            fn glLightf(pointer: *anyopaque, light: i32, pname: i32, param: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glLightf").glLightf(light, pname, param);
            }
            fn glLightfv(pointer: *anyopaque, light: i32, pname: i32, params: []f32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glLightfv").glLightfv(light, pname, params, offset);
            }
            fn glLightfv(pointer: *anyopaque, light: i32, pname: i32, params: ?*FloatBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glLightfv").glLightfv(light, pname, params);
            }
            fn glLineWidth(pointer: *anyopaque, width: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glLineWidth").glLineWidth(width);
            }
            fn glLoadIdentity(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glLoadIdentity").glLoadIdentity();
            }
            fn glLoadMatrixf(pointer: *anyopaque, m: []f32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glLoadMatrixf").glLoadMatrixf(m, offset);
            }
            fn glLoadMatrixf(pointer: *anyopaque, m: ?*FloatBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glLoadMatrixf").glLoadMatrixf(m);
            }
            fn glLogicOp(pointer: *anyopaque, opcode: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glLogicOp").glLogicOp(opcode);
            }
            fn glMaterialf(pointer: *anyopaque, face: i32, pname: i32, param: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glMaterialf").glMaterialf(face, pname, param);
            }
            fn glMaterialfv(pointer: *anyopaque, face: i32, pname: i32, params: []f32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glMaterialfv").glMaterialfv(face, pname, params, offset);
            }
            fn glMaterialfv(pointer: *anyopaque, face: i32, pname: i32, params: ?*FloatBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glMaterialfv").glMaterialfv(face, pname, params);
            }
            fn glMatrixMode(pointer: *anyopaque, mode: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glMatrixMode").glMatrixMode(mode);
            }
            fn glMultMatrixf(pointer: *anyopaque, m: []f32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glMultMatrixf").glMultMatrixf(m, offset);
            }
            fn glMultMatrixf(pointer: *anyopaque, m: ?*FloatBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glMultMatrixf").glMultMatrixf(m);
            }
            fn glMultiTexCoord4f(pointer: *anyopaque, target: i32, s: f32, t: f32, r: f32, q: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glMultiTexCoord4f").glMultiTexCoord4f(target, s, t, r, q);
            }
            fn glNormal3f(pointer: *anyopaque, nx: f32, ny: f32, nz: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glNormal3f").glNormal3f(nx, ny, nz);
            }
            fn glNormalPointer(pointer: *anyopaque, @"type": i32, stride: i32, pointer: ?*Buffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glNormalPointer").glNormalPointer(@"type", stride, pointer);
            }
            fn glOrthof(pointer: *anyopaque, left: f32, right: f32, bottom: f32, top: f32, zNear: f32, zFar: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glOrthof").glOrthof(left, right, bottom, top, zNear, zFar);
            }
            fn glPixelStorei(pointer: *anyopaque, pname: i32, param: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glPixelStorei").glPixelStorei(pname, param);
            }
            fn glPointSize(pointer: *anyopaque, size: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glPointSize").glPointSize(size);
            }
            fn glPolygonOffset(pointer: *anyopaque, factor: f32, units: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glPolygonOffset").glPolygonOffset(factor, units);
            }
            fn glPopMatrix(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glPopMatrix").glPopMatrix();
            }
            fn glPushMatrix(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glPushMatrix").glPushMatrix();
            }
            fn glReadPixels(pointer: *anyopaque, x: i32, y: i32, width: i32, height: i32, format: i32, @"type": i32, pixels: ?*Buffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glReadPixels").glReadPixels(x, y, width, height, format, @"type", pixels);
            }
            fn glRotatef(pointer: *anyopaque, angle: f32, x: f32, y: f32, z: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glRotatef").glRotatef(angle, x, y, z);
            }
            fn glRotatex(pointer: *anyopaque, angle: i32, x: i32, y: i32, z: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glRotatex").glRotatex(angle, x, y, z);
            }
            fn glSampleCoverage(pointer: *anyopaque, value: f32, invert: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glSampleCoverage").glSampleCoverage(value, invert);
            }
            fn glScalef(pointer: *anyopaque, x: f32, y: f32, z: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glScalef").glScalef(x, y, z);
            }
            fn glScalex(pointer: *anyopaque, x: i32, y: i32, z: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glScalex").glScalex(x, y, z);
            }
            fn glScissor(pointer: *anyopaque, x: i32, y: i32, width: i32, height: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glScissor").glScissor(x, y, width, height);
            }
            fn glShadeModel(pointer: *anyopaque, mode: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glShadeModel").glShadeModel(mode);
            }
            fn glStencilFunc(pointer: *anyopaque, func: i32, ref: i32, mask: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glStencilFunc").glStencilFunc(func, ref, mask);
            }
            fn glStencilMask(pointer: *anyopaque, mask: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glStencilMask").glStencilMask(mask);
            }
            fn glStencilOp(pointer: *anyopaque, fail: i32, zfail: i32, zpass: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glStencilOp").glStencilOp(fail, zfail, zpass);
            }
            fn glTexCoordPointer(pointer: *anyopaque, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glTexCoordPointer").glTexCoordPointer(size, @"type", stride, pointer);
            }
            fn glTexEnvf(pointer: *anyopaque, target: i32, pname: i32, param: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glTexEnvf").glTexEnvf(target, pname, param);
            }
            fn glTexEnvfv(pointer: *anyopaque, target: i32, pname: i32, params: []f32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glTexEnvfv").glTexEnvfv(target, pname, params, offset);
            }
            fn glTexEnvfv(pointer: *anyopaque, target: i32, pname: i32, params: ?*FloatBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glTexEnvfv").glTexEnvfv(target, pname, params);
            }
            fn glTexImage2D(pointer: *anyopaque, target: i32, level: i32, internalformat: i32, width: i32, height: i32, border: i32, format: i32, @"type": i32, pixels: ?*Buffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glTexImage2D").glTexImage2D(target, level, internalformat, width, height, border, format, @"type", pixels);
            }
            fn glTexParameterf(pointer: *anyopaque, target: i32, pname: i32, param: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glTexParameterf").glTexParameterf(target, pname, param);
            }
            fn glTexParameteri(pointer: *anyopaque, target: i32, pname: i32, param: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glTexParameteri").glTexParameteri(target, pname, param);
            }
            fn glTexSubImage2D(pointer: *anyopaque, target: i32, level: i32, xoffset: i32, yoffset: i32, width: i32, height: i32, format: i32, @"type": i32, pixels: ?*Buffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glTexSubImage2D").glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, @"type", pixels);
            }
            fn glTranslatef(pointer: *anyopaque, x: f32, y: f32, z: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glTranslatef").glTranslatef(x, y, z);
            }
            fn glVertexPointer(pointer: *anyopaque, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glVertexPointer").glVertexPointer(size, @"type", stride, pointer);
            }
            fn glViewport(pointer: *anyopaque, x: i32, y: i32, width: i32, height: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glViewport").glViewport(x, y, width, height);
            }
            fn glBegin(pointer: *anyopaque, i: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glBegin").glBegin(i);
            }
            fn glEnd(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glEnd").glEnd();
            }
            fn glVertex3f(pointer: *anyopaque, f: f32, f2: f32, f3: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glVertex3f").glVertex3f(f, f2, f3);
            }
            fn glPolygonMode(pointer: *anyopaque, i: i32, i1: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glPolygonMode").glPolygonMode(i, i1);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = GL.of(object).?.*, .toStringFn = Methods.toString, .glActiveTextureFn = Methods.glActiveTexture, .glAlphaFuncFn = Methods.glAlphaFunc, .glBindTextureFn = Methods.glBindTexture, .glBlendFuncFn = Methods.glBlendFunc, .glClearFn = Methods.glClear, .glClearColorFn = Methods.glClearColor, .glClearDepthfFn = Methods.glClearDepthf, .glClearStencilFn = Methods.glClearStencil, .glClientActiveTextureFn = Methods.glClientActiveTexture, .glColor4fFn = Methods.glColor4f, .glColorMaskFn = Methods.glColorMask, .glColorPointerFn = Methods.glColorPointer, .glCompressedTexImage2DFn = Methods.glCompressedTexImage2D, .glCompressedTexSubImage2DFn = Methods.glCompressedTexSubImage2D, .glCopyTexImage2DFn = Methods.glCopyTexImage2D, .glCopyTexSubImage2DFn = Methods.glCopyTexSubImage2D, .glCullFaceFn = Methods.glCullFace, .glDeleteTexturesFn = Methods.glDeleteTextures, .glDeleteTexturesFn = Methods.glDeleteTextures, .glDepthFuncFn = Methods.glDepthFunc, .glDepthMaskFn = Methods.glDepthMask, .glDepthRangefFn = Methods.glDepthRangef, .glDisableFn = Methods.glDisable, .glDisableClientStateFn = Methods.glDisableClientState, .glDrawArraysFn = Methods.glDrawArrays, .glDrawElementsFn = Methods.glDrawElements, .glEnableFn = Methods.glEnable, .glEnableClientStateFn = Methods.glEnableClientState, .glFinishFn = Methods.glFinish, .glFlushFn = Methods.glFlush, .glFogfFn = Methods.glFogf, .glFogfvFn = Methods.glFogfv, .glFogfvFn = Methods.glFogfv, .glFrontFaceFn = Methods.glFrontFace, .glFrustumfFn = Methods.glFrustumf, .glGenTexturesFn = Methods.glGenTextures, .glGenTexturesFn = Methods.glGenTextures, .glGetErrorFn = Methods.glGetError, .glGetIntegervFn = Methods.glGetIntegerv, .glGetIntegervFn = Methods.glGetIntegerv, .glGetStringFn = Methods.glGetString, .glHintFn = Methods.glHint, .glLightModelfFn = Methods.glLightModelf, .glLightModelfvFn = Methods.glLightModelfv, .glLightModelfvFn = Methods.glLightModelfv, .glLightfFn = Methods.glLightf, .glLightfvFn = Methods.glLightfv, .glLightfvFn = Methods.glLightfv, .glLineWidthFn = Methods.glLineWidth, .glLoadIdentityFn = Methods.glLoadIdentity, .glLoadMatrixfFn = Methods.glLoadMatrixf, .glLoadMatrixfFn = Methods.glLoadMatrixf, .glLogicOpFn = Methods.glLogicOp, .glMaterialfFn = Methods.glMaterialf, .glMaterialfvFn = Methods.glMaterialfv, .glMaterialfvFn = Methods.glMaterialfv, .glMatrixModeFn = Methods.glMatrixMode, .glMultMatrixfFn = Methods.glMultMatrixf, .glMultMatrixfFn = Methods.glMultMatrixf, .glMultiTexCoord4fFn = Methods.glMultiTexCoord4f, .glNormal3fFn = Methods.glNormal3f, .glNormalPointerFn = Methods.glNormalPointer, .glOrthofFn = Methods.glOrthof, .glPixelStoreiFn = Methods.glPixelStorei, .glPointSizeFn = Methods.glPointSize, .glPolygonOffsetFn = Methods.glPolygonOffset, .glPopMatrixFn = Methods.glPopMatrix, .glPushMatrixFn = Methods.glPushMatrix, .glReadPixelsFn = Methods.glReadPixels, .glRotatefFn = Methods.glRotatef, .glRotatexFn = Methods.glRotatex, .glSampleCoverageFn = Methods.glSampleCoverage, .glScalefFn = Methods.glScalef, .glScalexFn = Methods.glScalex, .glScissorFn = Methods.glScissor, .glShadeModelFn = Methods.glShadeModel, .glStencilFuncFn = Methods.glStencilFunc, .glStencilMaskFn = Methods.glStencilMask, .glStencilOpFn = Methods.glStencilOp, .glTexCoordPointerFn = Methods.glTexCoordPointer, .glTexEnvfFn = Methods.glTexEnvf, .glTexEnvfvFn = Methods.glTexEnvfv, .glTexEnvfvFn = Methods.glTexEnvfv, .glTexImage2DFn = Methods.glTexImage2D, .glTexParameterfFn = Methods.glTexParameterf, .glTexParameteriFn = Methods.glTexParameteri, .glTexSubImage2DFn = Methods.glTexSubImage2D, .glTranslatefFn = Methods.glTranslatef, .glVertexPointerFn = Methods.glVertexPointer, .glViewportFn = Methods.glViewport, .glBeginFn = Methods.glBegin, .glEndFn = Methods.glEnd, .glVertex3fFn = Methods.glVertex3f, .glPolygonModeFn = Methods.glPolygonMode };
        return this;
    }
    pub const GL_ADD: i32 = 260;
    pub const GL_ALIASED_LINE_WIDTH_RANGE: i32 = 33902;
    pub const GL_ALIASED_POINT_SIZE_RANGE: i32 = 33901;
    pub const GL_ALPHA: i32 = 6406;
    pub const GL_ALPHA_BITS: i32 = 3413;
    pub const GL_ALPHA_TEST: i32 = 3008;
    pub const GL_ALWAYS: i32 = 519;
    pub const GL_AMBIENT: i32 = 4608;
    pub const GL_AMBIENT_AND_DIFFUSE: i32 = 5634;
    pub const GL_AND: i32 = 5377;
    pub const GL_AND_INVERTED: i32 = 5380;
    pub const GL_AND_REVERSE: i32 = 5378;
    pub const GL_BACK: i32 = 1029;
    pub const GL_BLEND: i32 = 3042;
    pub const GL_BLUE_BITS: i32 = 3412;
    pub const GL_BYTE: i32 = 5120;
    pub const GL_CCW: i32 = 2305;
    pub const GL_CLAMP_TO_EDGE: i32 = 33071;
    pub const GL_CLEAR: i32 = 5376;
    pub const GL_COLOR_ARRAY: i32 = 32886;
    pub const GL_COLOR_BUFFER_BIT: i32 = 16384;
    pub const GL_COLOR_LOGIC_OP: i32 = 3058;
    pub const GL_COLOR_MATERIAL: i32 = 2903;
    pub const GL_COMPRESSED_TEXTURE_FORMATS: i32 = 34467;
    pub const GL_CONSTANT_ATTENUATION: i32 = 4615;
    pub const GL_COPY: i32 = 5379;
    pub const GL_COPY_INVERTED: i32 = 5388;
    pub const GL_CULL_FACE: i32 = 2884;
    pub const GL_CW: i32 = 2304;
    pub const GL_DECAL: i32 = 8449;
    pub const GL_DECR: i32 = 7683;
    pub const GL_DEPTH_BITS: i32 = 3414;
    pub const GL_DEPTH_BUFFER_BIT: i32 = 256;
    pub const GL_DEPTH_TEST: i32 = 2929;
    pub const GL_DIFFUSE: i32 = 4609;
    pub const GL_DITHER: i32 = 3024;
    pub const GL_DONT_CARE: i32 = 4352;
    pub const GL_DST_ALPHA: i32 = 772;
    pub const GL_DST_COLOR: i32 = 774;
    pub const GL_EMISSION: i32 = 5632;
    pub const GL_EQUAL: i32 = 514;
    pub const GL_EQUIV: i32 = 5385;
    pub const GL_EXP: i32 = 2048;
    pub const GL_EXP2: i32 = 2049;
    pub const GL_EXTENSIONS: i32 = 7939;
    pub const GL_FALSE: i32 = 0;
    pub const GL_FASTEST: i32 = 4353;
    pub const GL_FIXED: i32 = 5132;
    pub const GL_FLAT: i32 = 7424;
    pub const GL_FLOAT: i32 = 5126;
    pub const GL_FOG: i32 = 2912;
    pub const GL_FOG_COLOR: i32 = 2918;
    pub const GL_FOG_DENSITY: i32 = 2914;
    pub const GL_FOG_END: i32 = 2916;
    pub const GL_FOG_HINT: i32 = 3156;
    pub const GL_FOG_MODE: i32 = 2917;
    pub const GL_FOG_START: i32 = 2915;
    pub const GL_FRONT: i32 = 1028;
    pub const GL_FRONT_AND_BACK: i32 = 1032;
    pub const GL_GEQUAL: i32 = 518;
    pub const GL_GREATER: i32 = 516;
    pub const GL_GREEN_BITS: i32 = 3411;
    pub const GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES: i32 = 35739;
    pub const GL_IMPLEMENTATION_COLOR_READ_TYPE_OES: i32 = 35738;
    pub const GL_INCR: i32 = 7682;
    pub const GL_INVALID_ENUM: i32 = 1280;
    pub const GL_INVALID_OPERATION: i32 = 1282;
    pub const GL_INVALID_VALUE: i32 = 1281;
    pub const GL_INVERT: i32 = 5386;
    pub const GL_KEEP: i32 = 7680;
    pub const GL_LEQUAL: i32 = 515;
    pub const GL_LESS: i32 = 513;
    pub const GL_LIGHT_MODEL_AMBIENT: i32 = 2899;
    pub const GL_LIGHT_MODEL_TWO_SIDE: i32 = 2898;
    pub const GL_LIGHT0: i32 = 16384;
    pub const GL_LIGHT1: i32 = 16385;
    pub const GL_LIGHT2: i32 = 16386;
    pub const GL_LIGHT3: i32 = 16387;
    pub const GL_LIGHT4: i32 = 16388;
    pub const GL_LIGHT5: i32 = 16389;
    pub const GL_LIGHT6: i32 = 16390;
    pub const GL_LIGHT7: i32 = 16391;
    pub const GL_LIGHTING: i32 = 2896;
    pub const GL_LINE_LOOP: i32 = 2;
    pub const GL_LINE_SMOOTH: i32 = 2848;
    pub const GL_LINE_SMOOTH_HINT: i32 = 3154;
    pub const GL_LINE_STRIP: i32 = 3;
    pub const GL_LINEAR: i32 = 9729;
    pub const GL_LINEAR_ATTENUATION: i32 = 4616;
    pub const GL_LINEAR_MIPMAP_LINEAR: i32 = 9987;
    pub const GL_LINEAR_MIPMAP_NEAREST: i32 = 9985;
    pub const GL_LINES: i32 = 1;
    pub const GL_LUMINANCE: i32 = 6409;
    pub const GL_LUMINANCE_ALPHA: i32 = 6410;
    pub const GL_MAX_ELEMENTS_INDICES: i32 = 33001;
    pub const GL_MAX_ELEMENTS_VERTICES: i32 = 33000;
    pub const GL_MAX_LIGHTS: i32 = 3377;
    pub const GL_MAX_MODELVIEW_STACK_DEPTH: i32 = 3382;
    pub const GL_MAX_PROJECTION_STACK_DEPTH: i32 = 3384;
    pub const GL_MAX_TEXTURE_SIZE: i32 = 3379;
    pub const GL_MAX_TEXTURE_STACK_DEPTH: i32 = 3385;
    pub const GL_MAX_TEXTURE_UNITS: i32 = 34018;
    pub const GL_MAX_VIEWPORT_DIMS: i32 = 3386;
    pub const GL_MODELVIEW: i32 = 5888;
    pub const GL_MODULATE: i32 = 8448;
    pub const GL_MULTISAMPLE: i32 = 32925;
    pub const GL_NAND: i32 = 5390;
    pub const GL_NEAREST: i32 = 9728;
    pub const GL_NEAREST_MIPMAP_LINEAR: i32 = 9986;
    pub const GL_NEAREST_MIPMAP_NEAREST: i32 = 9984;
    pub const GL_NEVER: i32 = 512;
    pub const GL_NICEST: i32 = 4354;
    pub const GL_NO_ERROR: i32 = 0;
    pub const GL_NOOP: i32 = 5381;
    pub const GL_NOR: i32 = 5384;
    pub const GL_NORMAL_ARRAY: i32 = 32885;
    pub const GL_NORMALIZE: i32 = 2977;
    pub const GL_NOTEQUAL: i32 = 517;
    pub const GL_NUM_COMPRESSED_TEXTURE_FORMATS: i32 = 34466;
    pub const GL_ONE: i32 = 1;
    pub const GL_ONE_MINUS_DST_ALPHA: i32 = 773;
    pub const GL_ONE_MINUS_DST_COLOR: i32 = 775;
    pub const GL_ONE_MINUS_SRC_ALPHA: i32 = 771;
    pub const GL_ONE_MINUS_SRC_COLOR: i32 = 769;
    pub const GL_OR: i32 = 5383;
    pub const GL_OR_INVERTED: i32 = 5389;
    pub const GL_OR_REVERSE: i32 = 5387;
    pub const GL_OUT_OF_MEMORY: i32 = 1285;
    pub const GL_PACK_ALIGNMENT: i32 = 3333;
    pub const GL_PALETTE4_R5_G6_B5_OES: i32 = 35730;
    pub const GL_PALETTE4_RGB5_A1_OES: i32 = 35732;
    pub const GL_PALETTE4_RGB8_OES: i32 = 35728;
    pub const GL_PALETTE4_RGBA4_OES: i32 = 35731;
    pub const GL_PALETTE4_RGBA8_OES: i32 = 35729;
    pub const GL_PALETTE8_R5_G6_B5_OES: i32 = 35735;
    pub const GL_PALETTE8_RGB5_A1_OES: i32 = 35737;
    pub const GL_PALETTE8_RGB8_OES: i32 = 35733;
    pub const GL_PALETTE8_RGBA4_OES: i32 = 35736;
    pub const GL_PALETTE8_RGBA8_OES: i32 = 35734;
    pub const GL_PERSPECTIVE_CORRECTION_HINT: i32 = 3152;
    pub const GL_POINT_SMOOTH: i32 = 2832;
    pub const GL_POINT_SMOOTH_HINT: i32 = 3153;
    pub const GL_POINTS: i32 = 0;
    pub const GL_POINT_FADE_THRESHOLD_SIZE: i32 = 33064;
    pub const GL_POINT_SIZE: i32 = 2833;
    pub const GL_POLYGON_OFFSET_FILL: i32 = 32823;
    pub const GL_POLYGON_SMOOTH_HINT: i32 = 3155;
    pub const GL_POSITION: i32 = 4611;
    pub const GL_PROJECTION: i32 = 5889;
    pub const GL_QUADRATIC_ATTENUATION: i32 = 4617;
    pub const GL_RED_BITS: i32 = 3410;
    pub const GL_RENDERER: i32 = 7937;
    pub const GL_REPEAT: i32 = 10497;
    pub const GL_REPLACE: i32 = 7681;
    pub const GL_RESCALE_NORMAL: i32 = 32826;
    pub const GL_RGB: i32 = 6407;
    pub const GL_RGBA: i32 = 6408;
    pub const GL_SAMPLE_ALPHA_TO_COVERAGE: i32 = 32926;
    pub const GL_SAMPLE_ALPHA_TO_ONE: i32 = 32927;
    pub const GL_SAMPLE_COVERAGE: i32 = 32928;
    pub const GL_SCISSOR_TEST: i32 = 3089;
    pub const GL_SET: i32 = 5391;
    pub const GL_SHININESS: i32 = 5633;
    pub const GL_SHORT: i32 = 5122;
    pub const GL_SMOOTH: i32 = 7425;
    pub const GL_SMOOTH_LINE_WIDTH_RANGE: i32 = 2850;
    pub const GL_SMOOTH_POINT_SIZE_RANGE: i32 = 2834;
    pub const GL_SPECULAR: i32 = 4610;
    pub const GL_SPOT_CUTOFF: i32 = 4614;
    pub const GL_SPOT_DIRECTION: i32 = 4612;
    pub const GL_SPOT_EXPONENT: i32 = 4613;
    pub const GL_SRC_ALPHA: i32 = 770;
    pub const GL_SRC_ALPHA_SATURATE: i32 = 776;
    pub const GL_SRC_COLOR: i32 = 768;
    pub const GL_STACK_OVERFLOW: i32 = 1283;
    pub const GL_STACK_UNDERFLOW: i32 = 1284;
    pub const GL_STENCIL_BITS: i32 = 3415;
    pub const GL_STENCIL_BUFFER_BIT: i32 = 1024;
    pub const GL_STENCIL_TEST: i32 = 2960;
    pub const GL_SUBPIXEL_BITS: i32 = 3408;
    pub const GL_TEXTURE: i32 = 5890;
    pub const GL_TEXTURE_2D: i32 = 3553;
    pub const GL_TEXTURE_COORD_ARRAY: i32 = 32888;
    pub const GL_TEXTURE_ENV: i32 = 8960;
    pub const GL_TEXTURE_ENV_COLOR: i32 = 8705;
    pub const GL_TEXTURE_ENV_MODE: i32 = 8704;
    pub const GL_TEXTURE_MAG_FILTER: i32 = 10240;
    pub const GL_TEXTURE_MIN_FILTER: i32 = 10241;
    pub const GL_TEXTURE_WRAP_S: i32 = 10242;
    pub const GL_TEXTURE_WRAP_T: i32 = 10243;
    pub const GL_TEXTURE0: i32 = 33984;
    pub const GL_TEXTURE1: i32 = 33985;
    pub const GL_TEXTURE2: i32 = 33986;
    pub const GL_TEXTURE3: i32 = 33987;
    pub const GL_TEXTURE4: i32 = 33988;
    pub const GL_TEXTURE5: i32 = 33989;
    pub const GL_TEXTURE6: i32 = 33990;
    pub const GL_TEXTURE7: i32 = 33991;
    pub const GL_TEXTURE8: i32 = 33992;
    pub const GL_TEXTURE9: i32 = 33993;
    pub const GL_TEXTURE10: i32 = 33994;
    pub const GL_TEXTURE11: i32 = 33995;
    pub const GL_TEXTURE12: i32 = 33996;
    pub const GL_TEXTURE13: i32 = 33997;
    pub const GL_TEXTURE14: i32 = 33998;
    pub const GL_TEXTURE15: i32 = 33999;
    pub const GL_TEXTURE16: i32 = 34000;
    pub const GL_TEXTURE17: i32 = 34001;
    pub const GL_TEXTURE18: i32 = 34002;
    pub const GL_TEXTURE19: i32 = 34003;
    pub const GL_TEXTURE20: i32 = 34004;
    pub const GL_TEXTURE21: i32 = 34005;
    pub const GL_TEXTURE22: i32 = 34006;
    pub const GL_TEXTURE23: i32 = 34007;
    pub const GL_TEXTURE24: i32 = 34008;
    pub const GL_TEXTURE25: i32 = 34009;
    pub const GL_TEXTURE26: i32 = 34010;
    pub const GL_TEXTURE27: i32 = 34011;
    pub const GL_TEXTURE28: i32 = 34012;
    pub const GL_TEXTURE29: i32 = 34013;
    pub const GL_TEXTURE30: i32 = 34014;
    pub const GL_TEXTURE31: i32 = 34015;
    pub const GL_TRIANGLE_FAN: i32 = 6;
    pub const GL_TRIANGLE_STRIP: i32 = 5;
    pub const GL_TRIANGLES: i32 = 4;
    pub const GL_TRUE: i32 = 1;
    pub const GL_UNPACK_ALIGNMENT: i32 = 3317;
    pub const GL_UNSIGNED_BYTE: i32 = 5121;
    pub const GL_UNSIGNED_SHORT: i32 = 5123;
    pub const GL_UNSIGNED_SHORT_4_4_4_4: i32 = 32819;
    pub const GL_UNSIGNED_SHORT_5_5_5_1: i32 = 32820;
    pub const GL_UNSIGNED_SHORT_5_6_5: i32 = 33635;
    pub const GL_VENDOR: i32 = 7936;
    pub const GL_VERSION: i32 = 7938;
    pub const GL_VERTEX_ARRAY: i32 = 32884;
    pub const GL_XOR: i32 = 5382;
    pub const GL_ZERO: i32 = 0;
};


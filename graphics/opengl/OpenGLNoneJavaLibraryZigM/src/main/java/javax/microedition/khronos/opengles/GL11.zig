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
const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;

// Java interface: an implementation is a pointer and a table of functions
pub const GL11 = struct {
    const Self = @This();
    pub const java_name = "javax.microedition.khronos.opengles.GL11";
    pointer: *anyopaque,
    object: Object,
    base: GL10,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    glBindBufferFn: *const fn (pointer: *anyopaque, target: i32, buffer: i32) void,
    glBufferDataFn: *const fn (pointer: *anyopaque, target: i32, size: i32, data: ?*Buffer, usage: i32) void,
    glBufferSubDataFn: *const fn (pointer: *anyopaque, target: i32, offset: i32, size: i32, data: ?*Buffer) void,
    glClipPlanefFn: *const fn (pointer: *anyopaque, plane: i32, equation: []f32, offset: i32) void,
    glClipPlanefFn: *const fn (pointer: *anyopaque, plane: i32, equation: ?*FloatBuffer) void,
    glColor4ubFn: *const fn (pointer: *anyopaque, red: i8, green: i8, blue: i8, alpha: i8) void,
    glColorPointerFn: *const fn (pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void,
    glDeleteBuffersFn: *const fn (pointer: *anyopaque, n: i32, buffers: []i32, offset: i32) void,
    glDeleteBuffersFn: *const fn (pointer: *anyopaque, n: i32, buffers: ?*IntBuffer) void,
    glDrawElementsFn: *const fn (pointer: *anyopaque, mode: i32, count: i32, @"type": i32, offset: i32) void,
    glGenBuffersFn: *const fn (pointer: *anyopaque, n: i32, buffers: []i32, offset: i32) void,
    glGenBuffersFn: *const fn (pointer: *anyopaque, n: i32, buffers: ?*IntBuffer) void,
    glGetBufferParameterivFn: *const fn (pointer: *anyopaque, target: i32, pname: i32, params: []i32, offset: i32) void,
    glGetBufferParameterivFn: *const fn (pointer: *anyopaque, target: i32, pname: i32, params: ?*IntBuffer) void,
    glGetClipPlanefFn: *const fn (pointer: *anyopaque, pname: i32, eqn: []f32, offset: i32) void,
    glGetClipPlanefFn: *const fn (pointer: *anyopaque, pname: i32, eqn: ?*FloatBuffer) void,
    glGetFloatvFn: *const fn (pointer: *anyopaque, pname: i32, params: []f32, offset: i32) void,
    glGetFloatvFn: *const fn (pointer: *anyopaque, pname: i32, params: ?*FloatBuffer) void,
    glGetLightfvFn: *const fn (pointer: *anyopaque, light: i32, pname: i32, params: []f32, offset: i32) void,
    glGetLightfvFn: *const fn (pointer: *anyopaque, light: i32, pname: i32, params: ?*FloatBuffer) void,
    glGetMaterialfvFn: *const fn (pointer: *anyopaque, face: i32, pname: i32, params: []f32, offset: i32) void,
    glGetMaterialfvFn: *const fn (pointer: *anyopaque, face: i32, pname: i32, params: ?*FloatBuffer) void,
    glGetTexEnvivFn: *const fn (pointer: *anyopaque, env: i32, pname: i32, params: []i32, offset: i32) void,
    glGetTexEnvivFn: *const fn (pointer: *anyopaque, env: i32, pname: i32, params: ?*IntBuffer) void,
    glGetTexParameterfvFn: *const fn (pointer: *anyopaque, target: i32, pname: i32, params: []f32, offset: i32) void,
    glGetTexParameterfvFn: *const fn (pointer: *anyopaque, target: i32, pname: i32, params: ?*FloatBuffer) void,
    glGetTexParameterivFn: *const fn (pointer: *anyopaque, target: i32, pname: i32, params: []i32, offset: i32) void,
    glGetTexParameterivFn: *const fn (pointer: *anyopaque, target: i32, pname: i32, params: ?*IntBuffer) void,
    glIsBufferFn: *const fn (pointer: *anyopaque, buffer: i32) bool,
    glIsEnabledFn: *const fn (pointer: *anyopaque, cap: i32) bool,
    glIsTextureFn: *const fn (pointer: *anyopaque, texture: i32) bool,
    glNormalPointerFn: *const fn (pointer: *anyopaque, @"type": i32, stride: i32, offset: i32) void,
    glPointParameterfFn: *const fn (pointer: *anyopaque, pname: i32, param: f32) void,
    glPointParameterfvFn: *const fn (pointer: *anyopaque, pname: i32, params: []f32, offset: i32) void,
    glPointParameterfvFn: *const fn (pointer: *anyopaque, pname: i32, params: ?*FloatBuffer) void,
    glTexCoordPointerFn: *const fn (pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void,
    glTexEnviFn: *const fn (pointer: *anyopaque, target: i32, pname: i32, param: i32) void,
    glTexEnvivFn: *const fn (pointer: *anyopaque, target: i32, pname: i32, params: []i32, offset: i32) void,
    glTexEnvivFn: *const fn (pointer: *anyopaque, target: i32, pname: i32, params: ?*IntBuffer) void,
    glTexParameterfvFn: *const fn (pointer: *anyopaque, target: i32, pname: i32, params: []f32, offset: i32) void,
    glTexParameterfvFn: *const fn (pointer: *anyopaque, target: i32, pname: i32, params: ?*FloatBuffer) void,
    glTexParameterivFn: *const fn (pointer: *anyopaque, target: i32, pname: i32, params: []i32, offset: i32) void,
    glTexParameterivFn: *const fn (pointer: *anyopaque, target: i32, pname: i32, params: ?*IntBuffer) void,
    glVertexPointerFn: *const fn (pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void,

    pub fn glBindBuffer(self: *Self, target: i32, buffer: i32) void {
        return self.glBindBufferFn(self.pointer, target, buffer);
    }

    pub fn glBufferData(self: *Self, target: i32, size: i32, data: ?*Buffer, usage: i32) void {
        return self.glBufferDataFn(self.pointer, target, size, data, usage);
    }

    pub fn glBufferSubData(self: *Self, target: i32, offset: i32, size: i32, data: ?*Buffer) void {
        return self.glBufferSubDataFn(self.pointer, target, offset, size, data);
    }

    pub fn glClipPlanef(self: *Self, plane: i32, equation: []f32, offset: i32) void {
        return self.glClipPlanefFn(self.pointer, plane, equation, offset);
    }

    pub fn glClipPlanef(self: *Self, plane: i32, equation: ?*FloatBuffer) void {
        return self.glClipPlanefFn(self.pointer, plane, equation);
    }

    pub fn glColor4ub(self: *Self, red: i8, green: i8, blue: i8, alpha: i8) void {
        return self.glColor4ubFn(self.pointer, red, green, blue, alpha);
    }

    pub fn glColorPointer(self: *Self, size: i32, @"type": i32, stride: i32, offset: i32) void {
        return self.glColorPointerFn(self.pointer, size, @"type", stride, offset);
    }

    pub fn glDeleteBuffers(self: *Self, n: i32, buffers: []i32, offset: i32) void {
        return self.glDeleteBuffersFn(self.pointer, n, buffers, offset);
    }

    pub fn glDeleteBuffers(self: *Self, n: i32, buffers: ?*IntBuffer) void {
        return self.glDeleteBuffersFn(self.pointer, n, buffers);
    }

    pub fn glDrawElements(self: *Self, mode: i32, count: i32, @"type": i32, offset: i32) void {
        return self.glDrawElementsFn(self.pointer, mode, count, @"type", offset);
    }

    pub fn glGenBuffers(self: *Self, n: i32, buffers: []i32, offset: i32) void {
        return self.glGenBuffersFn(self.pointer, n, buffers, offset);
    }

    pub fn glGenBuffers(self: *Self, n: i32, buffers: ?*IntBuffer) void {
        return self.glGenBuffersFn(self.pointer, n, buffers);
    }

    pub fn glGetBufferParameteriv(self: *Self, target: i32, pname: i32, params: []i32, offset: i32) void {
        return self.glGetBufferParameterivFn(self.pointer, target, pname, params, offset);
    }

    pub fn glGetBufferParameteriv(self: *Self, target: i32, pname: i32, params: ?*IntBuffer) void {
        return self.glGetBufferParameterivFn(self.pointer, target, pname, params);
    }

    pub fn glGetClipPlanef(self: *Self, pname: i32, eqn: []f32, offset: i32) void {
        return self.glGetClipPlanefFn(self.pointer, pname, eqn, offset);
    }

    pub fn glGetClipPlanef(self: *Self, pname: i32, eqn: ?*FloatBuffer) void {
        return self.glGetClipPlanefFn(self.pointer, pname, eqn);
    }

    pub fn glGetFloatv(self: *Self, pname: i32, params: []f32, offset: i32) void {
        return self.glGetFloatvFn(self.pointer, pname, params, offset);
    }

    pub fn glGetFloatv(self: *Self, pname: i32, params: ?*FloatBuffer) void {
        return self.glGetFloatvFn(self.pointer, pname, params);
    }

    pub fn glGetLightfv(self: *Self, light: i32, pname: i32, params: []f32, offset: i32) void {
        return self.glGetLightfvFn(self.pointer, light, pname, params, offset);
    }

    pub fn glGetLightfv(self: *Self, light: i32, pname: i32, params: ?*FloatBuffer) void {
        return self.glGetLightfvFn(self.pointer, light, pname, params);
    }

    pub fn glGetMaterialfv(self: *Self, face: i32, pname: i32, params: []f32, offset: i32) void {
        return self.glGetMaterialfvFn(self.pointer, face, pname, params, offset);
    }

    pub fn glGetMaterialfv(self: *Self, face: i32, pname: i32, params: ?*FloatBuffer) void {
        return self.glGetMaterialfvFn(self.pointer, face, pname, params);
    }

    pub fn glGetTexEnviv(self: *Self, env: i32, pname: i32, params: []i32, offset: i32) void {
        return self.glGetTexEnvivFn(self.pointer, env, pname, params, offset);
    }

    pub fn glGetTexEnviv(self: *Self, env: i32, pname: i32, params: ?*IntBuffer) void {
        return self.glGetTexEnvivFn(self.pointer, env, pname, params);
    }

    pub fn glGetTexParameterfv(self: *Self, target: i32, pname: i32, params: []f32, offset: i32) void {
        return self.glGetTexParameterfvFn(self.pointer, target, pname, params, offset);
    }

    pub fn glGetTexParameterfv(self: *Self, target: i32, pname: i32, params: ?*FloatBuffer) void {
        return self.glGetTexParameterfvFn(self.pointer, target, pname, params);
    }

    pub fn glGetTexParameteriv(self: *Self, target: i32, pname: i32, params: []i32, offset: i32) void {
        return self.glGetTexParameterivFn(self.pointer, target, pname, params, offset);
    }

    pub fn glGetTexParameteriv(self: *Self, target: i32, pname: i32, params: ?*IntBuffer) void {
        return self.glGetTexParameterivFn(self.pointer, target, pname, params);
    }

    pub fn glIsBuffer(self: *Self, buffer: i32) bool {
        return self.glIsBufferFn(self.pointer, buffer);
    }

    pub fn glIsEnabled(self: *Self, cap: i32) bool {
        return self.glIsEnabledFn(self.pointer, cap);
    }

    pub fn glIsTexture(self: *Self, texture: i32) bool {
        return self.glIsTextureFn(self.pointer, texture);
    }

    pub fn glNormalPointer(self: *Self, @"type": i32, stride: i32, offset: i32) void {
        return self.glNormalPointerFn(self.pointer, @"type", stride, offset);
    }

    pub fn glPointParameterf(self: *Self, pname: i32, param: f32) void {
        return self.glPointParameterfFn(self.pointer, pname, param);
    }

    pub fn glPointParameterfv(self: *Self, pname: i32, params: []f32, offset: i32) void {
        return self.glPointParameterfvFn(self.pointer, pname, params, offset);
    }

    pub fn glPointParameterfv(self: *Self, pname: i32, params: ?*FloatBuffer) void {
        return self.glPointParameterfvFn(self.pointer, pname, params);
    }

    pub fn glTexCoordPointer(self: *Self, size: i32, @"type": i32, stride: i32, offset: i32) void {
        return self.glTexCoordPointerFn(self.pointer, size, @"type", stride, offset);
    }

    pub fn glTexEnvi(self: *Self, target: i32, pname: i32, param: i32) void {
        return self.glTexEnviFn(self.pointer, target, pname, param);
    }

    pub fn glTexEnviv(self: *Self, target: i32, pname: i32, params: []i32, offset: i32) void {
        return self.glTexEnvivFn(self.pointer, target, pname, params, offset);
    }

    pub fn glTexEnviv(self: *Self, target: i32, pname: i32, params: ?*IntBuffer) void {
        return self.glTexEnvivFn(self.pointer, target, pname, params);
    }

    pub fn glTexParameterfv(self: *Self, target: i32, pname: i32, params: []f32, offset: i32) void {
        return self.glTexParameterfvFn(self.pointer, target, pname, params, offset);
    }

    pub fn glTexParameterfv(self: *Self, target: i32, pname: i32, params: ?*FloatBuffer) void {
        return self.glTexParameterfvFn(self.pointer, target, pname, params);
    }

    pub fn glTexParameteriv(self: *Self, target: i32, pname: i32, params: []i32, offset: i32) void {
        return self.glTexParameterivFn(self.pointer, target, pname, params, offset);
    }

    pub fn glTexParameteriv(self: *Self, target: i32, pname: i32, params: ?*IntBuffer) void {
        return self.glTexParameterivFn(self.pointer, target, pname, params);
    }

    pub fn glVertexPointer(self: *Self, size: i32, @"type": i32, stride: i32, offset: i32) void {
        return self.glVertexPointerFn(self.pointer, size, @"type", stride, offset);
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
            fn glBindBuffer(pointer: *anyopaque, target: i32, buffer: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glBindBuffer").glBindBuffer(target, buffer);
            }
            fn glBufferData(pointer: *anyopaque, target: i32, size: i32, data: ?*Buffer, usage: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glBufferData").glBufferData(target, size, data, usage);
            }
            fn glBufferSubData(pointer: *anyopaque, target: i32, offset: i32, size: i32, data: ?*Buffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glBufferSubData").glBufferSubData(target, offset, size, data);
            }
            fn glClipPlanef(pointer: *anyopaque, plane: i32, equation: []f32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glClipPlanef").glClipPlanef(plane, equation, offset);
            }
            fn glClipPlanef(pointer: *anyopaque, plane: i32, equation: ?*FloatBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glClipPlanef").glClipPlanef(plane, equation);
            }
            fn glColor4ub(pointer: *anyopaque, red: i8, green: i8, blue: i8, alpha: i8) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glColor4ub").glColor4ub(red, green, blue, alpha);
            }
            fn glColorPointer(pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glColorPointer").glColorPointer(size, @"type", stride, offset);
            }
            fn glDeleteBuffers(pointer: *anyopaque, n: i32, buffers: []i32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDeleteBuffers").glDeleteBuffers(n, buffers, offset);
            }
            fn glDeleteBuffers(pointer: *anyopaque, n: i32, buffers: ?*IntBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDeleteBuffers").glDeleteBuffers(n, buffers);
            }
            fn glDrawElements(pointer: *anyopaque, mode: i32, count: i32, @"type": i32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDrawElements").glDrawElements(mode, count, @"type", offset);
            }
            fn glGenBuffers(pointer: *anyopaque, n: i32, buffers: []i32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGenBuffers").glGenBuffers(n, buffers, offset);
            }
            fn glGenBuffers(pointer: *anyopaque, n: i32, buffers: ?*IntBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGenBuffers").glGenBuffers(n, buffers);
            }
            fn glGetBufferParameteriv(pointer: *anyopaque, target: i32, pname: i32, params: []i32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGetBufferParameteriv").glGetBufferParameteriv(target, pname, params, offset);
            }
            fn glGetBufferParameteriv(pointer: *anyopaque, target: i32, pname: i32, params: ?*IntBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGetBufferParameteriv").glGetBufferParameteriv(target, pname, params);
            }
            fn glGetClipPlanef(pointer: *anyopaque, pname: i32, eqn: []f32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGetClipPlanef").glGetClipPlanef(pname, eqn, offset);
            }
            fn glGetClipPlanef(pointer: *anyopaque, pname: i32, eqn: ?*FloatBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGetClipPlanef").glGetClipPlanef(pname, eqn);
            }
            fn glGetFloatv(pointer: *anyopaque, pname: i32, params: []f32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGetFloatv").glGetFloatv(pname, params, offset);
            }
            fn glGetFloatv(pointer: *anyopaque, pname: i32, params: ?*FloatBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGetFloatv").glGetFloatv(pname, params);
            }
            fn glGetLightfv(pointer: *anyopaque, light: i32, pname: i32, params: []f32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGetLightfv").glGetLightfv(light, pname, params, offset);
            }
            fn glGetLightfv(pointer: *anyopaque, light: i32, pname: i32, params: ?*FloatBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGetLightfv").glGetLightfv(light, pname, params);
            }
            fn glGetMaterialfv(pointer: *anyopaque, face: i32, pname: i32, params: []f32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGetMaterialfv").glGetMaterialfv(face, pname, params, offset);
            }
            fn glGetMaterialfv(pointer: *anyopaque, face: i32, pname: i32, params: ?*FloatBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGetMaterialfv").glGetMaterialfv(face, pname, params);
            }
            fn glGetTexEnviv(pointer: *anyopaque, env: i32, pname: i32, params: []i32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGetTexEnviv").glGetTexEnviv(env, pname, params, offset);
            }
            fn glGetTexEnviv(pointer: *anyopaque, env: i32, pname: i32, params: ?*IntBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGetTexEnviv").glGetTexEnviv(env, pname, params);
            }
            fn glGetTexParameterfv(pointer: *anyopaque, target: i32, pname: i32, params: []f32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGetTexParameterfv").glGetTexParameterfv(target, pname, params, offset);
            }
            fn glGetTexParameterfv(pointer: *anyopaque, target: i32, pname: i32, params: ?*FloatBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGetTexParameterfv").glGetTexParameterfv(target, pname, params);
            }
            fn glGetTexParameteriv(pointer: *anyopaque, target: i32, pname: i32, params: []i32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGetTexParameteriv").glGetTexParameteriv(target, pname, params, offset);
            }
            fn glGetTexParameteriv(pointer: *anyopaque, target: i32, pname: i32, params: ?*IntBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glGetTexParameteriv").glGetTexParameteriv(target, pname, params);
            }
            fn glIsBuffer(pointer: *anyopaque, buffer: i32) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glIsBuffer").glIsBuffer(buffer);
            }
            fn glIsEnabled(pointer: *anyopaque, cap: i32) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glIsEnabled").glIsEnabled(cap);
            }
            fn glIsTexture(pointer: *anyopaque, texture: i32) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glIsTexture").glIsTexture(texture);
            }
            fn glNormalPointer(pointer: *anyopaque, @"type": i32, stride: i32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glNormalPointer").glNormalPointer(@"type", stride, offset);
            }
            fn glPointParameterf(pointer: *anyopaque, pname: i32, param: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glPointParameterf").glPointParameterf(pname, param);
            }
            fn glPointParameterfv(pointer: *anyopaque, pname: i32, params: []f32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glPointParameterfv").glPointParameterfv(pname, params, offset);
            }
            fn glPointParameterfv(pointer: *anyopaque, pname: i32, params: ?*FloatBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glPointParameterfv").glPointParameterfv(pname, params);
            }
            fn glTexCoordPointer(pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glTexCoordPointer").glTexCoordPointer(size, @"type", stride, offset);
            }
            fn glTexEnvi(pointer: *anyopaque, target: i32, pname: i32, param: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glTexEnvi").glTexEnvi(target, pname, param);
            }
            fn glTexEnviv(pointer: *anyopaque, target: i32, pname: i32, params: []i32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glTexEnviv").glTexEnviv(target, pname, params, offset);
            }
            fn glTexEnviv(pointer: *anyopaque, target: i32, pname: i32, params: ?*IntBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glTexEnviv").glTexEnviv(target, pname, params);
            }
            fn glTexParameterfv(pointer: *anyopaque, target: i32, pname: i32, params: []f32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glTexParameterfv").glTexParameterfv(target, pname, params, offset);
            }
            fn glTexParameterfv(pointer: *anyopaque, target: i32, pname: i32, params: ?*FloatBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glTexParameterfv").glTexParameterfv(target, pname, params);
            }
            fn glTexParameteriv(pointer: *anyopaque, target: i32, pname: i32, params: []i32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glTexParameteriv").glTexParameteriv(target, pname, params, offset);
            }
            fn glTexParameteriv(pointer: *anyopaque, target: i32, pname: i32, params: ?*IntBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glTexParameteriv").glTexParameteriv(target, pname, params);
            }
            fn glVertexPointer(pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glVertexPointer").glVertexPointer(size, @"type", stride, offset);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = GL10.of(object).?.*, .toStringFn = Methods.toString, .glBindBufferFn = Methods.glBindBuffer, .glBufferDataFn = Methods.glBufferData, .glBufferSubDataFn = Methods.glBufferSubData, .glClipPlanefFn = Methods.glClipPlanef, .glClipPlanefFn = Methods.glClipPlanef, .glColor4ubFn = Methods.glColor4ub, .glColorPointerFn = Methods.glColorPointer, .glDeleteBuffersFn = Methods.glDeleteBuffers, .glDeleteBuffersFn = Methods.glDeleteBuffers, .glDrawElementsFn = Methods.glDrawElements, .glGenBuffersFn = Methods.glGenBuffers, .glGenBuffersFn = Methods.glGenBuffers, .glGetBufferParameterivFn = Methods.glGetBufferParameteriv, .glGetBufferParameterivFn = Methods.glGetBufferParameteriv, .glGetClipPlanefFn = Methods.glGetClipPlanef, .glGetClipPlanefFn = Methods.glGetClipPlanef, .glGetFloatvFn = Methods.glGetFloatv, .glGetFloatvFn = Methods.glGetFloatv, .glGetLightfvFn = Methods.glGetLightfv, .glGetLightfvFn = Methods.glGetLightfv, .glGetMaterialfvFn = Methods.glGetMaterialfv, .glGetMaterialfvFn = Methods.glGetMaterialfv, .glGetTexEnvivFn = Methods.glGetTexEnviv, .glGetTexEnvivFn = Methods.glGetTexEnviv, .glGetTexParameterfvFn = Methods.glGetTexParameterfv, .glGetTexParameterfvFn = Methods.glGetTexParameterfv, .glGetTexParameterivFn = Methods.glGetTexParameteriv, .glGetTexParameterivFn = Methods.glGetTexParameteriv, .glIsBufferFn = Methods.glIsBuffer, .glIsEnabledFn = Methods.glIsEnabled, .glIsTextureFn = Methods.glIsTexture, .glNormalPointerFn = Methods.glNormalPointer, .glPointParameterfFn = Methods.glPointParameterf, .glPointParameterfvFn = Methods.glPointParameterfv, .glPointParameterfvFn = Methods.glPointParameterfv, .glTexCoordPointerFn = Methods.glTexCoordPointer, .glTexEnviFn = Methods.glTexEnvi, .glTexEnvivFn = Methods.glTexEnviv, .glTexEnvivFn = Methods.glTexEnviv, .glTexParameterfvFn = Methods.glTexParameterfv, .glTexParameterfvFn = Methods.glTexParameterfv, .glTexParameterivFn = Methods.glTexParameteriv, .glTexParameterivFn = Methods.glTexParameteriv, .glVertexPointerFn = Methods.glVertexPointer };
        return this;
    }
    pub const GL_ACTIVE_TEXTURE: i32 = 34016;
    pub const GL_ADD_SIGNED: i32 = 34164;
    pub const GL_ALPHA_SCALE: i32 = 3356;
    pub const GL_ALPHA_TEST_FUNC: i32 = 3009;
    pub const GL_ALPHA_TEST_REF: i32 = 3010;
    pub const GL_ARRAY_BUFFER: i32 = 34962;
    pub const GL_ARRAY_BUFFER_BINDING: i32 = 34964;
    pub const GL_BLEND_DST: i32 = 3040;
    pub const GL_BLEND_SRC: i32 = 3041;
    pub const GL_BUFFER_ACCESS: i32 = 35003;
    pub const GL_BUFFER_SIZE: i32 = 34660;
    pub const GL_BUFFER_USAGE: i32 = 34661;
    pub const GL_CLIENT_ACTIVE_TEXTURE: i32 = 34017;
    pub const GL_CLIP_PLANE0: i32 = 12288;
    pub const GL_CLIP_PLANE1: i32 = 12289;
    pub const GL_CLIP_PLANE2: i32 = 12290;
    pub const GL_CLIP_PLANE3: i32 = 12291;
    pub const GL_CLIP_PLANE4: i32 = 12292;
    pub const GL_CLIP_PLANE5: i32 = 12293;
    pub const GL_COLOR_ARRAY_BUFFER_BINDING: i32 = 34968;
    pub const GL_COLOR_ARRAY_POINTER: i32 = 32912;
    pub const GL_COLOR_ARRAY_SIZE: i32 = 32897;
    pub const GL_COLOR_ARRAY_STRIDE: i32 = 32899;
    pub const GL_COLOR_ARRAY_TYPE: i32 = 32898;
    pub const GL_COLOR_CLEAR_VALUE: i32 = 3106;
    pub const GL_COLOR_WRITEMASK: i32 = 3107;
    pub const GL_COMBINE: i32 = 34160;
    pub const GL_COMBINE_ALPHA: i32 = 34162;
    pub const GL_COMBINE_RGB: i32 = 34161;
    pub const GL_CONSTANT: i32 = 34166;
    pub const GL_COORD_REPLACE_OES: i32 = 34914;
    pub const GL_CULL_FACE_MODE: i32 = 2885;
    pub const GL_CURRENT_COLOR: i32 = 2816;
    pub const GL_CURRENT_NORMAL: i32 = 2818;
    pub const GL_CURRENT_TEXTURE_COORDS: i32 = 2819;
    pub const GL_DEPTH_CLEAR_VALUE: i32 = 2931;
    pub const GL_DEPTH_FUNC: i32 = 2932;
    pub const GL_DEPTH_RANGE: i32 = 2928;
    pub const GL_DEPTH_WRITEMASK: i32 = 2930;
    pub const GL_DOT3_RGB: i32 = 34478;
    pub const GL_DOT3_RGBA: i32 = 34479;
    pub const GL_DYNAMIC_DRAW: i32 = 35048;
    pub const GL_ELEMENT_ARRAY_BUFFER: i32 = 34963;
    pub const GL_ELEMENT_ARRAY_BUFFER_BINDING: i32 = 34965;
    pub const GL_FRONT_FACE: i32 = 2886;
    pub const GL_GENERATE_MIPMAP: i32 = 33169;
    pub const GL_GENERATE_MIPMAP_HINT: i32 = 33170;
    pub const GL_INTERPOLATE: i32 = 34165;
    pub const GL_LINE_WIDTH: i32 = 2849;
    pub const GL_LOGIC_OP_MODE: i32 = 3056;
    pub const GL_MATRIX_MODE: i32 = 2976;
    pub const GL_MAX_CLIP_PLANES: i32 = 3378;
    pub const GL_MODELVIEW_MATRIX: i32 = 2982;
    pub const GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES: i32 = 35213;
    pub const GL_MODELVIEW_STACK_DEPTH: i32 = 2979;
    pub const GL_NORMAL_ARRAY_BUFFER_BINDING: i32 = 34967;
    pub const GL_NORMAL_ARRAY_POINTER: i32 = 32911;
    pub const GL_NORMAL_ARRAY_STRIDE: i32 = 32895;
    pub const GL_NORMAL_ARRAY_TYPE: i32 = 32894;
    pub const GL_OPERAND0_ALPHA: i32 = 34200;
    pub const GL_OPERAND0_RGB: i32 = 34192;
    pub const GL_OPERAND1_ALPHA: i32 = 34201;
    pub const GL_OPERAND1_RGB: i32 = 34193;
    pub const GL_OPERAND2_ALPHA: i32 = 34202;
    pub const GL_OPERAND2_RGB: i32 = 34194;
    pub const GL_POINT_DISTANCE_ATTENUATION: i32 = 33065;
    pub const GL_POINT_FADE_THRESHOLD_SIZE: i32 = 33064;
    pub const GL_POINT_SIZE: i32 = 2833;
    pub const GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES: i32 = 35743;
    pub const GL_POINT_SIZE_ARRAY_OES: i32 = 35740;
    pub const GL_POINT_SIZE_ARRAY_POINTER_OES: i32 = 35212;
    pub const GL_POINT_SIZE_ARRAY_STRIDE_OES: i32 = 35211;
    pub const GL_POINT_SIZE_ARRAY_TYPE_OES: i32 = 35210;
    pub const GL_POINT_SIZE_MAX: i32 = 33063;
    pub const GL_POINT_SIZE_MIN: i32 = 33062;
    pub const GL_POINT_SPRITE_OES: i32 = 34913;
    pub const GL_POLYGON_OFFSET_FACTOR: i32 = 32824;
    pub const GL_POLYGON_OFFSET_UNITS: i32 = 10752;
    pub const GL_PREVIOUS: i32 = 34168;
    pub const GL_PRIMARY_COLOR: i32 = 34167;
    pub const GL_PROJECTION_MATRIX: i32 = 2983;
    pub const GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES: i32 = 35214;
    pub const GL_PROJECTION_STACK_DEPTH: i32 = 2980;
    pub const GL_RGB_SCALE: i32 = 34163;
    pub const GL_SAMPLE_BUFFERS: i32 = 32936;
    pub const GL_SAMPLE_COVERAGE_INVERT: i32 = 32939;
    pub const GL_SAMPLE_COVERAGE_VALUE: i32 = 32938;
    pub const GL_SAMPLES: i32 = 32937;
    pub const GL_SCISSOR_BOX: i32 = 3088;
    pub const GL_SHADE_MODEL: i32 = 2900;
    pub const GL_SRC0_ALPHA: i32 = 34184;
    pub const GL_SRC0_RGB: i32 = 34176;
    pub const GL_SRC1_ALPHA: i32 = 34185;
    pub const GL_SRC1_RGB: i32 = 34177;
    pub const GL_SRC2_ALPHA: i32 = 34186;
    pub const GL_SRC2_RGB: i32 = 34178;
    pub const GL_STATIC_DRAW: i32 = 35044;
    pub const GL_STENCIL_CLEAR_VALUE: i32 = 2961;
    pub const GL_STENCIL_FAIL: i32 = 2964;
    pub const GL_STENCIL_FUNC: i32 = 2962;
    pub const GL_STENCIL_PASS_DEPTH_FAIL: i32 = 2965;
    pub const GL_STENCIL_PASS_DEPTH_PASS: i32 = 2966;
    pub const GL_STENCIL_REF: i32 = 2967;
    pub const GL_STENCIL_VALUE_MASK: i32 = 2963;
    pub const GL_STENCIL_WRITEMASK: i32 = 2968;
    pub const GL_SUBTRACT: i32 = 34023;
    pub const GL_TEXTURE_BINDING_2D: i32 = 32873;
    pub const GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING: i32 = 34970;
    pub const GL_TEXTURE_COORD_ARRAY_POINTER: i32 = 32914;
    pub const GL_TEXTURE_COORD_ARRAY_SIZE: i32 = 32904;
    pub const GL_TEXTURE_COORD_ARRAY_STRIDE: i32 = 32906;
    pub const GL_TEXTURE_COORD_ARRAY_TYPE: i32 = 32905;
    pub const GL_TEXTURE_MATRIX: i32 = 2984;
    pub const GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES: i32 = 35215;
    pub const GL_TEXTURE_STACK_DEPTH: i32 = 2981;
    pub const GL_VERTEX_ARRAY_BUFFER_BINDING: i32 = 34966;
    pub const GL_VERTEX_ARRAY_POINTER: i32 = 32910;
    pub const GL_VERTEX_ARRAY_SIZE: i32 = 32890;
    pub const GL_VERTEX_ARRAY_STRIDE: i32 = 32892;
    pub const GL_VERTEX_ARRAY_TYPE: i32 = 32891;
    pub const GL_VIEWPORT: i32 = 2978;
    pub const GL_WRITE_ONLY: i32 = 35001;
};


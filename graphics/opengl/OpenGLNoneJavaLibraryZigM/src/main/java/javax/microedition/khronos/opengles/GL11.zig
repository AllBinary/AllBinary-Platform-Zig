// Generated Code Do Not Modify
// package javax.microedition.khronos.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Buffer = @import("java/nio/Buffer.zig").Buffer;
const FloatBuffer = @import("java/nio/FloatBuffer.zig").FloatBuffer;
const IntBuffer = @import("java/nio/IntBuffer.zig").IntBuffer;
const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;

// Java interface: an implementation is a pointer and a table of functions
pub const GL11 = struct {
    const Self = @This();
    pub const java_name = "javax.microedition.khronos.opengles.GL11";
    pointer: *anyopaque,
    object: Object,
    base: GL10,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    glBindBufferFn: *const fn (interface_pointer: *anyopaque, target: i32, buffer: i32) void,
    glBufferDataFn: *const fn (interface_pointer: *anyopaque, target: i32, size: i32, data: ?*Buffer, usage: i32) void,
    glBufferSubDataFn: *const fn (interface_pointer: *anyopaque, target: i32, offset: i32, size: i32, data: ?*Buffer) void,
    glClipPlanef3Fn: *const fn (interface_pointer: *anyopaque, plane: i32, equation: []f32, offset: i32) void,
    glClipPlanefFn: *const fn (interface_pointer: *anyopaque, plane: i32, equation: ?*FloatBuffer) void,
    glColor4ubFn: *const fn (interface_pointer: *anyopaque, red: i8, green: i8, blue: i8, alpha: i8) void,
    glColorPointerFn: *const fn (interface_pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void,
    glDeleteBuffers3Fn: *const fn (interface_pointer: *anyopaque, n: i32, buffers: []i32, offset: i32) void,
    glDeleteBuffersFn: *const fn (interface_pointer: *anyopaque, n: i32, buffers: ?*IntBuffer) void,
    glDrawElementsFn: *const fn (interface_pointer: *anyopaque, mode: i32, count: i32, @"type": i32, offset: i32) void,
    glGenBuffers3Fn: *const fn (interface_pointer: *anyopaque, n: i32, buffers: []i32, offset: i32) void,
    glGenBuffersFn: *const fn (interface_pointer: *anyopaque, n: i32, buffers: ?*IntBuffer) void,
    glGetBufferParameteriv4Fn: *const fn (interface_pointer: *anyopaque, target: i32, pname: i32, params: []i32, offset: i32) void,
    glGetBufferParameterivFn: *const fn (interface_pointer: *anyopaque, target: i32, pname: i32, params: ?*IntBuffer) void,
    glGetClipPlanef3Fn: *const fn (interface_pointer: *anyopaque, pname: i32, eqn: []f32, offset: i32) void,
    glGetClipPlanefFn: *const fn (interface_pointer: *anyopaque, pname: i32, eqn: ?*FloatBuffer) void,
    glGetFloatv3Fn: *const fn (interface_pointer: *anyopaque, pname: i32, params: []f32, offset: i32) void,
    glGetFloatvFn: *const fn (interface_pointer: *anyopaque, pname: i32, params: ?*FloatBuffer) void,
    glGetLightfv4Fn: *const fn (interface_pointer: *anyopaque, light: i32, pname: i32, params: []f32, offset: i32) void,
    glGetLightfvFn: *const fn (interface_pointer: *anyopaque, light: i32, pname: i32, params: ?*FloatBuffer) void,
    glGetMaterialfv4Fn: *const fn (interface_pointer: *anyopaque, face: i32, pname: i32, params: []f32, offset: i32) void,
    glGetMaterialfvFn: *const fn (interface_pointer: *anyopaque, face: i32, pname: i32, params: ?*FloatBuffer) void,
    glGetTexEnviv4Fn: *const fn (interface_pointer: *anyopaque, env: i32, pname: i32, params: []i32, offset: i32) void,
    glGetTexEnvivFn: *const fn (interface_pointer: *anyopaque, env: i32, pname: i32, params: ?*IntBuffer) void,
    glGetTexParameterfv4Fn: *const fn (interface_pointer: *anyopaque, target: i32, pname: i32, params: []f32, offset: i32) void,
    glGetTexParameterfvFn: *const fn (interface_pointer: *anyopaque, target: i32, pname: i32, params: ?*FloatBuffer) void,
    glGetTexParameteriv4Fn: *const fn (interface_pointer: *anyopaque, target: i32, pname: i32, params: []i32, offset: i32) void,
    glGetTexParameterivFn: *const fn (interface_pointer: *anyopaque, target: i32, pname: i32, params: ?*IntBuffer) void,
    glIsBufferFn: *const fn (interface_pointer: *anyopaque, buffer: i32) bool,
    glIsEnabledFn: *const fn (interface_pointer: *anyopaque, cap: i32) bool,
    glIsTextureFn: *const fn (interface_pointer: *anyopaque, texture: i32) bool,
    glNormalPointerFn: *const fn (interface_pointer: *anyopaque, @"type": i32, stride: i32, offset: i32) void,
    glPointParameterfFn: *const fn (interface_pointer: *anyopaque, pname: i32, param: f32) void,
    glPointParameterfv3Fn: *const fn (interface_pointer: *anyopaque, pname: i32, params: []f32, offset: i32) void,
    glPointParameterfvFn: *const fn (interface_pointer: *anyopaque, pname: i32, params: ?*FloatBuffer) void,
    glTexCoordPointerFn: *const fn (interface_pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void,
    glTexEnviFn: *const fn (interface_pointer: *anyopaque, target: i32, pname: i32, param: i32) void,
    glTexEnviv4Fn: *const fn (interface_pointer: *anyopaque, target: i32, pname: i32, params: []i32, offset: i32) void,
    glTexEnvivFn: *const fn (interface_pointer: *anyopaque, target: i32, pname: i32, params: ?*IntBuffer) void,
    glTexParameterfv4Fn: *const fn (interface_pointer: *anyopaque, target: i32, pname: i32, params: []f32, offset: i32) void,
    glTexParameterfvFn: *const fn (interface_pointer: *anyopaque, target: i32, pname: i32, params: ?*FloatBuffer) void,
    glTexParameteriv4Fn: *const fn (interface_pointer: *anyopaque, target: i32, pname: i32, params: []i32, offset: i32) void,
    glTexParameterivFn: *const fn (interface_pointer: *anyopaque, target: i32, pname: i32, params: ?*IntBuffer) void,
    glVertexPointerFn: *const fn (interface_pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void,

    pub fn glBindBuffer(self: *Self, target: i32, buffer: i32) void {
        return self.glBindBufferFn(self.pointer, target, buffer);
    }

    pub fn glBufferData(self: *Self, target: i32, size: i32, data: ?*Buffer, usage: i32) void {
        return self.glBufferDataFn(self.pointer, target, size, data, usage);
    }

    pub fn glBufferSubData(self: *Self, target: i32, offset: i32, size: i32, data: ?*Buffer) void {
        return self.glBufferSubDataFn(self.pointer, target, offset, size, data);
    }

    pub fn glClipPlanef3(self: *Self, plane: i32, equation: []f32, offset: i32) void {
        return self.glClipPlanef3Fn(self.pointer, plane, equation, offset);
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

    pub fn glDeleteBuffers3(self: *Self, n: i32, buffers: []i32, offset: i32) void {
        return self.glDeleteBuffers3Fn(self.pointer, n, buffers, offset);
    }

    pub fn glDeleteBuffers(self: *Self, n: i32, buffers: ?*IntBuffer) void {
        return self.glDeleteBuffersFn(self.pointer, n, buffers);
    }

    pub fn glDrawElements(self: *Self, mode: i32, count: i32, @"type": i32, offset: i32) void {
        return self.glDrawElementsFn(self.pointer, mode, count, @"type", offset);
    }

    pub fn glGenBuffers3(self: *Self, n: i32, buffers: []i32, offset: i32) void {
        return self.glGenBuffers3Fn(self.pointer, n, buffers, offset);
    }

    pub fn glGenBuffers(self: *Self, n: i32, buffers: ?*IntBuffer) void {
        return self.glGenBuffersFn(self.pointer, n, buffers);
    }

    pub fn glGetBufferParameteriv4(self: *Self, target: i32, pname: i32, params: []i32, offset: i32) void {
        return self.glGetBufferParameteriv4Fn(self.pointer, target, pname, params, offset);
    }

    pub fn glGetBufferParameteriv(self: *Self, target: i32, pname: i32, params: ?*IntBuffer) void {
        return self.glGetBufferParameterivFn(self.pointer, target, pname, params);
    }

    pub fn glGetClipPlanef3(self: *Self, pname: i32, eqn: []f32, offset: i32) void {
        return self.glGetClipPlanef3Fn(self.pointer, pname, eqn, offset);
    }

    pub fn glGetClipPlanef(self: *Self, pname: i32, eqn: ?*FloatBuffer) void {
        return self.glGetClipPlanefFn(self.pointer, pname, eqn);
    }

    pub fn glGetFloatv3(self: *Self, pname: i32, params: []f32, offset: i32) void {
        return self.glGetFloatv3Fn(self.pointer, pname, params, offset);
    }

    pub fn glGetFloatv(self: *Self, pname: i32, params: ?*FloatBuffer) void {
        return self.glGetFloatvFn(self.pointer, pname, params);
    }

    pub fn glGetLightfv4(self: *Self, light: i32, pname: i32, params: []f32, offset: i32) void {
        return self.glGetLightfv4Fn(self.pointer, light, pname, params, offset);
    }

    pub fn glGetLightfv(self: *Self, light: i32, pname: i32, params: ?*FloatBuffer) void {
        return self.glGetLightfvFn(self.pointer, light, pname, params);
    }

    pub fn glGetMaterialfv4(self: *Self, face: i32, pname: i32, params: []f32, offset: i32) void {
        return self.glGetMaterialfv4Fn(self.pointer, face, pname, params, offset);
    }

    pub fn glGetMaterialfv(self: *Self, face: i32, pname: i32, params: ?*FloatBuffer) void {
        return self.glGetMaterialfvFn(self.pointer, face, pname, params);
    }

    pub fn glGetTexEnviv4(self: *Self, env: i32, pname: i32, params: []i32, offset: i32) void {
        return self.glGetTexEnviv4Fn(self.pointer, env, pname, params, offset);
    }

    pub fn glGetTexEnviv(self: *Self, env: i32, pname: i32, params: ?*IntBuffer) void {
        return self.glGetTexEnvivFn(self.pointer, env, pname, params);
    }

    pub fn glGetTexParameterfv4(self: *Self, target: i32, pname: i32, params: []f32, offset: i32) void {
        return self.glGetTexParameterfv4Fn(self.pointer, target, pname, params, offset);
    }

    pub fn glGetTexParameterfv(self: *Self, target: i32, pname: i32, params: ?*FloatBuffer) void {
        return self.glGetTexParameterfvFn(self.pointer, target, pname, params);
    }

    pub fn glGetTexParameteriv4(self: *Self, target: i32, pname: i32, params: []i32, offset: i32) void {
        return self.glGetTexParameteriv4Fn(self.pointer, target, pname, params, offset);
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

    pub fn glPointParameterfv3(self: *Self, pname: i32, params: []f32, offset: i32) void {
        return self.glPointParameterfv3Fn(self.pointer, pname, params, offset);
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

    pub fn glTexEnviv4(self: *Self, target: i32, pname: i32, params: []i32, offset: i32) void {
        return self.glTexEnviv4Fn(self.pointer, target, pname, params, offset);
    }

    pub fn glTexEnviv(self: *Self, target: i32, pname: i32, params: ?*IntBuffer) void {
        return self.glTexEnvivFn(self.pointer, target, pname, params);
    }

    pub fn glTexParameterfv4(self: *Self, target: i32, pname: i32, params: []f32, offset: i32) void {
        return self.glTexParameterfv4Fn(self.pointer, target, pname, params, offset);
    }

    pub fn glTexParameterfv(self: *Self, target: i32, pname: i32, params: ?*FloatBuffer) void {
        return self.glTexParameterfvFn(self.pointer, target, pname, params);
    }

    pub fn glTexParameteriv4(self: *Self, target: i32, pname: i32, params: []i32, offset: i32) void {
        return self.glTexParameteriv4Fn(self.pointer, target, pname, params, offset);
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
        const ImplementationType = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn glBindBuffer(interface_pointer: *anyopaque, target: i32, buffer: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glBindBuffer", .{ target, buffer });
            }
            fn glBufferData(interface_pointer: *anyopaque, target: i32, size: i32, data: ?*Buffer, usage: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glBufferData", .{ target, size, data, usage });
            }
            fn glBufferSubData(interface_pointer: *anyopaque, target: i32, offset: i32, size: i32, data: ?*Buffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glBufferSubData", .{ target, offset, size, data });
            }
            fn glClipPlanef3(interface_pointer: *anyopaque, plane: i32, equation: []f32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glClipPlanef", .{ plane, equation, offset });
            }
            fn glClipPlanef(interface_pointer: *anyopaque, plane: i32, equation: ?*FloatBuffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glClipPlanef", .{ plane, equation });
            }
            fn glColor4ub(interface_pointer: *anyopaque, red: i8, green: i8, blue: i8, alpha: i8) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glColor4ub", .{ red, green, blue, alpha });
            }
            fn glColorPointer(interface_pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glColorPointer", .{ size, @"type", stride, offset });
            }
            fn glDeleteBuffers3(interface_pointer: *anyopaque, n: i32, buffers: []i32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glDeleteBuffers", .{ n, buffers, offset });
            }
            fn glDeleteBuffers(interface_pointer: *anyopaque, n: i32, buffers: ?*IntBuffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glDeleteBuffers", .{ n, buffers });
            }
            fn glDrawElements(interface_pointer: *anyopaque, mode: i32, count: i32, @"type": i32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glDrawElements", .{ mode, count, @"type", offset });
            }
            fn glGenBuffers3(interface_pointer: *anyopaque, n: i32, buffers: []i32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glGenBuffers", .{ n, buffers, offset });
            }
            fn glGenBuffers(interface_pointer: *anyopaque, n: i32, buffers: ?*IntBuffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glGenBuffers", .{ n, buffers });
            }
            fn glGetBufferParameteriv4(interface_pointer: *anyopaque, target: i32, pname: i32, params: []i32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glGetBufferParameteriv", .{ target, pname, params, offset });
            }
            fn glGetBufferParameteriv(interface_pointer: *anyopaque, target: i32, pname: i32, params: ?*IntBuffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glGetBufferParameteriv", .{ target, pname, params });
            }
            fn glGetClipPlanef3(interface_pointer: *anyopaque, pname: i32, eqn: []f32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glGetClipPlanef", .{ pname, eqn, offset });
            }
            fn glGetClipPlanef(interface_pointer: *anyopaque, pname: i32, eqn: ?*FloatBuffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glGetClipPlanef", .{ pname, eqn });
            }
            fn glGetFloatv3(interface_pointer: *anyopaque, pname: i32, params: []f32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glGetFloatv", .{ pname, params, offset });
            }
            fn glGetFloatv(interface_pointer: *anyopaque, pname: i32, params: ?*FloatBuffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glGetFloatv", .{ pname, params });
            }
            fn glGetLightfv4(interface_pointer: *anyopaque, light: i32, pname: i32, params: []f32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glGetLightfv", .{ light, pname, params, offset });
            }
            fn glGetLightfv(interface_pointer: *anyopaque, light: i32, pname: i32, params: ?*FloatBuffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glGetLightfv", .{ light, pname, params });
            }
            fn glGetMaterialfv4(interface_pointer: *anyopaque, face: i32, pname: i32, params: []f32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glGetMaterialfv", .{ face, pname, params, offset });
            }
            fn glGetMaterialfv(interface_pointer: *anyopaque, face: i32, pname: i32, params: ?*FloatBuffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glGetMaterialfv", .{ face, pname, params });
            }
            fn glGetTexEnviv4(interface_pointer: *anyopaque, env: i32, pname: i32, params: []i32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glGetTexEnviv", .{ env, pname, params, offset });
            }
            fn glGetTexEnviv(interface_pointer: *anyopaque, env: i32, pname: i32, params: ?*IntBuffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glGetTexEnviv", .{ env, pname, params });
            }
            fn glGetTexParameterfv4(interface_pointer: *anyopaque, target: i32, pname: i32, params: []f32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glGetTexParameterfv", .{ target, pname, params, offset });
            }
            fn glGetTexParameterfv(interface_pointer: *anyopaque, target: i32, pname: i32, params: ?*FloatBuffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glGetTexParameterfv", .{ target, pname, params });
            }
            fn glGetTexParameteriv4(interface_pointer: *anyopaque, target: i32, pname: i32, params: []i32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glGetTexParameteriv", .{ target, pname, params, offset });
            }
            fn glGetTexParameteriv(interface_pointer: *anyopaque, target: i32, pname: i32, params: ?*IntBuffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glGetTexParameteriv", .{ target, pname, params });
            }
            fn glIsBuffer(interface_pointer: *anyopaque, buffer: i32) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glIsBuffer", .{ buffer });
            }
            fn glIsEnabled(interface_pointer: *anyopaque, cap: i32) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glIsEnabled", .{ cap });
            }
            fn glIsTexture(interface_pointer: *anyopaque, texture: i32) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glIsTexture", .{ texture });
            }
            fn glNormalPointer(interface_pointer: *anyopaque, @"type": i32, stride: i32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glNormalPointer", .{ @"type", stride, offset });
            }
            fn glPointParameterf(interface_pointer: *anyopaque, pname: i32, param: f32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glPointParameterf", .{ pname, param });
            }
            fn glPointParameterfv3(interface_pointer: *anyopaque, pname: i32, params: []f32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glPointParameterfv", .{ pname, params, offset });
            }
            fn glPointParameterfv(interface_pointer: *anyopaque, pname: i32, params: ?*FloatBuffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glPointParameterfv", .{ pname, params });
            }
            fn glTexCoordPointer(interface_pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glTexCoordPointer", .{ size, @"type", stride, offset });
            }
            fn glTexEnvi(interface_pointer: *anyopaque, target: i32, pname: i32, param: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glTexEnvi", .{ target, pname, param });
            }
            fn glTexEnviv4(interface_pointer: *anyopaque, target: i32, pname: i32, params: []i32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glTexEnviv", .{ target, pname, params, offset });
            }
            fn glTexEnviv(interface_pointer: *anyopaque, target: i32, pname: i32, params: ?*IntBuffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glTexEnviv", .{ target, pname, params });
            }
            fn glTexParameterfv4(interface_pointer: *anyopaque, target: i32, pname: i32, params: []f32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glTexParameterfv", .{ target, pname, params, offset });
            }
            fn glTexParameterfv(interface_pointer: *anyopaque, target: i32, pname: i32, params: ?*FloatBuffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glTexParameterfv", .{ target, pname, params });
            }
            fn glTexParameteriv4(interface_pointer: *anyopaque, target: i32, pname: i32, params: []i32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glTexParameteriv", .{ target, pname, params, offset });
            }
            fn glTexParameteriv(interface_pointer: *anyopaque, target: i32, pname: i32, params: ?*IntBuffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glTexParameteriv", .{ target, pname, params });
            }
            fn glVertexPointer(interface_pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glVertexPointer", .{ size, @"type", stride, offset });
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = GL10.of(object).?.*, .toStringFn = Methods.toString, .glBindBufferFn = Methods.glBindBuffer, .glBufferDataFn = Methods.glBufferData, .glBufferSubDataFn = Methods.glBufferSubData, .glClipPlanef3Fn = Methods.glClipPlanef3, .glClipPlanefFn = Methods.glClipPlanef, .glColor4ubFn = Methods.glColor4ub, .glColorPointerFn = Methods.glColorPointer, .glDeleteBuffers3Fn = Methods.glDeleteBuffers3, .glDeleteBuffersFn = Methods.glDeleteBuffers, .glDrawElementsFn = Methods.glDrawElements, .glGenBuffers3Fn = Methods.glGenBuffers3, .glGenBuffersFn = Methods.glGenBuffers, .glGetBufferParameteriv4Fn = Methods.glGetBufferParameteriv4, .glGetBufferParameterivFn = Methods.glGetBufferParameteriv, .glGetClipPlanef3Fn = Methods.glGetClipPlanef3, .glGetClipPlanefFn = Methods.glGetClipPlanef, .glGetFloatv3Fn = Methods.glGetFloatv3, .glGetFloatvFn = Methods.glGetFloatv, .glGetLightfv4Fn = Methods.glGetLightfv4, .glGetLightfvFn = Methods.glGetLightfv, .glGetMaterialfv4Fn = Methods.glGetMaterialfv4, .glGetMaterialfvFn = Methods.glGetMaterialfv, .glGetTexEnviv4Fn = Methods.glGetTexEnviv4, .glGetTexEnvivFn = Methods.glGetTexEnviv, .glGetTexParameterfv4Fn = Methods.glGetTexParameterfv4, .glGetTexParameterfvFn = Methods.glGetTexParameterfv, .glGetTexParameteriv4Fn = Methods.glGetTexParameteriv4, .glGetTexParameterivFn = Methods.glGetTexParameteriv, .glIsBufferFn = Methods.glIsBuffer, .glIsEnabledFn = Methods.glIsEnabled, .glIsTextureFn = Methods.glIsTexture, .glNormalPointerFn = Methods.glNormalPointer, .glPointParameterfFn = Methods.glPointParameterf, .glPointParameterfv3Fn = Methods.glPointParameterfv3, .glPointParameterfvFn = Methods.glPointParameterfv, .glTexCoordPointerFn = Methods.glTexCoordPointer, .glTexEnviFn = Methods.glTexEnvi, .glTexEnviv4Fn = Methods.glTexEnviv4, .glTexEnvivFn = Methods.glTexEnviv, .glTexParameterfv4Fn = Methods.glTexParameterfv4, .glTexParameterfvFn = Methods.glTexParameterfv, .glTexParameteriv4Fn = Methods.glTexParameteriv4, .glTexParameterivFn = Methods.glTexParameteriv, .glVertexPointerFn = Methods.glVertexPointer };
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


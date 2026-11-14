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
const ShortBuffer = @import("java/nio/ShortBuffer.zig").ShortBuffer;
const GL = @import("javax/microedition/khronos/opengles/GL.zig").GL;

// Java interface: an implementation is a pointer and a table of functions
pub const GL11Ext = struct {
    const Self = @This();
    pub const java_name = "javax.microedition.khronos.opengles.GL11Ext";
    pointer: *anyopaque,
    object: Object,
    base: GL,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    glTexParameterfvFn: *const fn (interface_pointer: *anyopaque, target: i32, pname: i32, param: []f32, offset: i32) void,
    glCurrentPaletteMatrixOESFn: *const fn (interface_pointer: *anyopaque, matrixpaletteindex: i32) void,
    glDrawTexfOESFn: *const fn (interface_pointer: *anyopaque, x: f32, y: f32, z: f32, width: f32, height: f32) void,
    glDrawTexfvOES2Fn: *const fn (interface_pointer: *anyopaque, coords: []f32, offset: i32) void,
    glDrawTexfvOESFn: *const fn (interface_pointer: *anyopaque, coords: ?*FloatBuffer) void,
    glDrawTexiOESFn: *const fn (interface_pointer: *anyopaque, x: i32, y: i32, z: i32, width: i32, height: i32) void,
    glDrawTexivOES2Fn: *const fn (interface_pointer: *anyopaque, coords: []i32, offset: i32) void,
    glDrawTexivOESFn: *const fn (interface_pointer: *anyopaque, coords: ?*IntBuffer) void,
    glDrawTexsOESFn: *const fn (interface_pointer: *anyopaque, x: i16, y: i16, z: i16, width: i16, height: i16) void,
    glDrawTexsvOES2Fn: *const fn (interface_pointer: *anyopaque, coords: []i16, offset: i32) void,
    glDrawTexsvOESFn: *const fn (interface_pointer: *anyopaque, coords: ?*ShortBuffer) void,
    glDrawTexxOESFn: *const fn (interface_pointer: *anyopaque, x: i32, y: i32, z: i32, width: i32, height: i32) void,
    glDrawTexxvOES2Fn: *const fn (interface_pointer: *anyopaque, coords: []i32, offset: i32) void,
    glDrawTexxvOESFn: *const fn (interface_pointer: *anyopaque, coords: ?*IntBuffer) void,
    glEnableFn: *const fn (interface_pointer: *anyopaque, cap: i32) void,
    glEnableClientStateFn: *const fn (interface_pointer: *anyopaque, array: i32) void,
    glLoadPaletteFromModelViewMatrixOESFn: *const fn (interface_pointer: *anyopaque) void,
    glMatrixIndexPointerOES__int_int_int_BufferFn: *const fn (interface_pointer: *anyopaque, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void,
    glMatrixIndexPointerOES__int_int_int_intFn: *const fn (interface_pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void,
    glWeightPointerOES__int_int_int_BufferFn: *const fn (interface_pointer: *anyopaque, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void,
    glWeightPointerOES__int_int_int_intFn: *const fn (interface_pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void,

    pub fn glTexParameterfv(self: *Self, target: i32, pname: i32, param: []f32, offset: i32) void {
        return self.glTexParameterfvFn(self.pointer, target, pname, param, offset);
    }

    pub fn glCurrentPaletteMatrixOES(self: *Self, matrixpaletteindex: i32) void {
        return self.glCurrentPaletteMatrixOESFn(self.pointer, matrixpaletteindex);
    }

    pub fn glDrawTexfOES(self: *Self, x: f32, y: f32, z: f32, width: f32, height: f32) void {
        return self.glDrawTexfOESFn(self.pointer, x, y, z, width, height);
    }

    pub fn glDrawTexfvOES2(self: *Self, coords: []f32, offset: i32) void {
        return self.glDrawTexfvOES2Fn(self.pointer, coords, offset);
    }

    pub fn glDrawTexfvOES(self: *Self, coords: ?*FloatBuffer) void {
        return self.glDrawTexfvOESFn(self.pointer, coords);
    }

    pub fn glDrawTexiOES(self: *Self, x: i32, y: i32, z: i32, width: i32, height: i32) void {
        return self.glDrawTexiOESFn(self.pointer, x, y, z, width, height);
    }

    pub fn glDrawTexivOES2(self: *Self, coords: []i32, offset: i32) void {
        return self.glDrawTexivOES2Fn(self.pointer, coords, offset);
    }

    pub fn glDrawTexivOES(self: *Self, coords: ?*IntBuffer) void {
        return self.glDrawTexivOESFn(self.pointer, coords);
    }

    pub fn glDrawTexsOES(self: *Self, x: i16, y: i16, z: i16, width: i16, height: i16) void {
        return self.glDrawTexsOESFn(self.pointer, x, y, z, width, height);
    }

    pub fn glDrawTexsvOES2(self: *Self, coords: []i16, offset: i32) void {
        return self.glDrawTexsvOES2Fn(self.pointer, coords, offset);
    }

    pub fn glDrawTexsvOES(self: *Self, coords: ?*ShortBuffer) void {
        return self.glDrawTexsvOESFn(self.pointer, coords);
    }

    pub fn glDrawTexxOES(self: *Self, x: i32, y: i32, z: i32, width: i32, height: i32) void {
        return self.glDrawTexxOESFn(self.pointer, x, y, z, width, height);
    }

    pub fn glDrawTexxvOES2(self: *Self, coords: []i32, offset: i32) void {
        return self.glDrawTexxvOES2Fn(self.pointer, coords, offset);
    }

    pub fn glDrawTexxvOES(self: *Self, coords: ?*IntBuffer) void {
        return self.glDrawTexxvOESFn(self.pointer, coords);
    }

    pub fn glEnable(self: *Self, cap: i32) void {
        return self.glEnableFn(self.pointer, cap);
    }

    pub fn glEnableClientState(self: *Self, array: i32) void {
        return self.glEnableClientStateFn(self.pointer, array);
    }

    pub fn glLoadPaletteFromModelViewMatrixOES(self: *Self) void {
        return self.glLoadPaletteFromModelViewMatrixOESFn(self.pointer);
    }

    pub fn glMatrixIndexPointerOES__int_int_int_Buffer(self: *Self, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
        return self.glMatrixIndexPointerOES__int_int_int_BufferFn(self.pointer, size, @"type", stride, pointer);
    }

    pub fn glMatrixIndexPointerOES__int_int_int_int(self: *Self, size: i32, @"type": i32, stride: i32, offset: i32) void {
        return self.glMatrixIndexPointerOES__int_int_int_intFn(self.pointer, size, @"type", stride, offset);
    }

    pub fn glWeightPointerOES__int_int_int_Buffer(self: *Self, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
        return self.glWeightPointerOES__int_int_int_BufferFn(self.pointer, size, @"type", stride, pointer);
    }

    pub fn glWeightPointerOES__int_int_int_int(self: *Self, size: i32, @"type": i32, stride: i32, offset: i32) void {
        return self.glWeightPointerOES__int_int_int_intFn(self.pointer, size, @"type", stride, offset);
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
            fn glTexParameterfv(interface_pointer: *anyopaque, target: i32, pname: i32, param: []f32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glTexParameterfv", .{ target, pname, param, offset });
            }
            fn glCurrentPaletteMatrixOES(interface_pointer: *anyopaque, matrixpaletteindex: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glCurrentPaletteMatrixOES", .{ matrixpaletteindex });
            }
            fn glDrawTexfOES(interface_pointer: *anyopaque, x: f32, y: f32, z: f32, width: f32, height: f32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glDrawTexfOES", .{ x, y, z, width, height });
            }
            fn glDrawTexfvOES2(interface_pointer: *anyopaque, coords: []f32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glDrawTexfvOES", .{ coords, offset });
            }
            fn glDrawTexfvOES(interface_pointer: *anyopaque, coords: ?*FloatBuffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glDrawTexfvOES", .{ coords });
            }
            fn glDrawTexiOES(interface_pointer: *anyopaque, x: i32, y: i32, z: i32, width: i32, height: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glDrawTexiOES", .{ x, y, z, width, height });
            }
            fn glDrawTexivOES2(interface_pointer: *anyopaque, coords: []i32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glDrawTexivOES", .{ coords, offset });
            }
            fn glDrawTexivOES(interface_pointer: *anyopaque, coords: ?*IntBuffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glDrawTexivOES", .{ coords });
            }
            fn glDrawTexsOES(interface_pointer: *anyopaque, x: i16, y: i16, z: i16, width: i16, height: i16) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glDrawTexsOES", .{ x, y, z, width, height });
            }
            fn glDrawTexsvOES2(interface_pointer: *anyopaque, coords: []i16, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glDrawTexsvOES", .{ coords, offset });
            }
            fn glDrawTexsvOES(interface_pointer: *anyopaque, coords: ?*ShortBuffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glDrawTexsvOES", .{ coords });
            }
            fn glDrawTexxOES(interface_pointer: *anyopaque, x: i32, y: i32, z: i32, width: i32, height: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glDrawTexxOES", .{ x, y, z, width, height });
            }
            fn glDrawTexxvOES2(interface_pointer: *anyopaque, coords: []i32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glDrawTexxvOES", .{ coords, offset });
            }
            fn glDrawTexxvOES(interface_pointer: *anyopaque, coords: ?*IntBuffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glDrawTexxvOES", .{ coords });
            }
            fn glEnable(interface_pointer: *anyopaque, cap: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glEnable", .{ cap });
            }
            fn glEnableClientState(interface_pointer: *anyopaque, array: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glEnableClientState", .{ array });
            }
            fn glLoadPaletteFromModelViewMatrixOES(interface_pointer: *anyopaque) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "glLoadPaletteFromModelViewMatrixOES").glLoadPaletteFromModelViewMatrixOES();
            }
            fn glMatrixIndexPointerOES__int_int_int_Buffer(interface_pointer: *anyopaque, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glMatrixIndexPointerOES", .{ size, @"type", stride, pointer });
            }
            fn glMatrixIndexPointerOES__int_int_int_int(interface_pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glMatrixIndexPointerOES", .{ size, @"type", stride, offset });
            }
            fn glWeightPointerOES__int_int_int_Buffer(interface_pointer: *anyopaque, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glWeightPointerOES", .{ size, @"type", stride, pointer });
            }
            fn glWeightPointerOES__int_int_int_int(interface_pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "glWeightPointerOES", .{ size, @"type", stride, offset });
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = GL.of(object).?.*, .toStringFn = Methods.toString, .glTexParameterfvFn = Methods.glTexParameterfv, .glCurrentPaletteMatrixOESFn = Methods.glCurrentPaletteMatrixOES, .glDrawTexfOESFn = Methods.glDrawTexfOES, .glDrawTexfvOES2Fn = Methods.glDrawTexfvOES2, .glDrawTexfvOESFn = Methods.glDrawTexfvOES, .glDrawTexiOESFn = Methods.glDrawTexiOES, .glDrawTexivOES2Fn = Methods.glDrawTexivOES2, .glDrawTexivOESFn = Methods.glDrawTexivOES, .glDrawTexsOESFn = Methods.glDrawTexsOES, .glDrawTexsvOES2Fn = Methods.glDrawTexsvOES2, .glDrawTexsvOESFn = Methods.glDrawTexsvOES, .glDrawTexxOESFn = Methods.glDrawTexxOES, .glDrawTexxvOES2Fn = Methods.glDrawTexxvOES2, .glDrawTexxvOESFn = Methods.glDrawTexxvOES, .glEnableFn = Methods.glEnable, .glEnableClientStateFn = Methods.glEnableClientState, .glLoadPaletteFromModelViewMatrixOESFn = Methods.glLoadPaletteFromModelViewMatrixOES, .glMatrixIndexPointerOES__int_int_int_BufferFn = Methods.glMatrixIndexPointerOES__int_int_int_Buffer, .glMatrixIndexPointerOES__int_int_int_intFn = Methods.glMatrixIndexPointerOES__int_int_int_int, .glWeightPointerOES__int_int_int_BufferFn = Methods.glWeightPointerOES__int_int_int_Buffer, .glWeightPointerOES__int_int_int_intFn = Methods.glWeightPointerOES__int_int_int_int };
        return this;
    }
    pub const GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES: i32 = 35742;
    pub const GL_MATRIX_INDEX_ARRAY_OES: i32 = 34884;
    pub const GL_MATRIX_INDEX_ARRAY_POINTER_OES: i32 = 34889;
    pub const GL_MATRIX_INDEX_ARRAY_SIZE_OES: i32 = 34886;
    pub const GL_MATRIX_INDEX_ARRAY_STRIDE_OES: i32 = 34888;
    pub const GL_MATRIX_INDEX_ARRAY_TYPE_OES: i32 = 34887;
    pub const GL_MATRIX_PALETTE_OES: i32 = 34880;
    pub const GL_MAX_PALETTE_MATRICES_OES: i32 = 34882;
    pub const GL_MAX_VERTEX_UNITS_OES: i32 = 34468;
    pub const GL_TEXTURE_CROP_RECT_OES: i32 = 35741;
    pub const GL_WEIGHT_ARRAY_BUFFER_BINDING_OES: i32 = 34974;
    pub const GL_WEIGHT_ARRAY_OES: i32 = 34477;
    pub const GL_WEIGHT_ARRAY_POINTER_OES: i32 = 34476;
    pub const GL_WEIGHT_ARRAY_SIZE_OES: i32 = 34475;
    pub const GL_WEIGHT_ARRAY_STRIDE_OES: i32 = 34474;
    pub const GL_WEIGHT_ARRAY_TYPE_OES: i32 = 34473;
};


// Generated Code Do Not Modify
// package javax.microedition.khronos.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GL = @import("javax/microedition/khronos/opengles/GL.zig").GL;

// Java interface: an implementation is a pointer and a table of functions
pub const GL11Ext = struct {
    const Self = @This();
    pub const java_name = "javax.microedition.khronos.opengles.GL11Ext";
    pointer: *anyopaque,
    object: Object,
    base: GL,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    glTexParameterfvFn: *const fn (pointer: *anyopaque, target: i32, pname: i32, param: []f32, offset: i32) void,
    glCurrentPaletteMatrixOESFn: *const fn (pointer: *anyopaque, matrixpaletteindex: i32) void,
    glDrawTexfOESFn: *const fn (pointer: *anyopaque, x: f32, y: f32, z: f32, width: f32, height: f32) void,
    glDrawTexfvOESFn: *const fn (pointer: *anyopaque, coords: []f32, offset: i32) void,
    glDrawTexfvOESFn: *const fn (pointer: *anyopaque, coords: ?*FloatBuffer) void,
    glDrawTexiOESFn: *const fn (pointer: *anyopaque, x: i32, y: i32, z: i32, width: i32, height: i32) void,
    glDrawTexivOESFn: *const fn (pointer: *anyopaque, coords: []i32, offset: i32) void,
    glDrawTexivOESFn: *const fn (pointer: *anyopaque, coords: ?*IntBuffer) void,
    glDrawTexsOESFn: *const fn (pointer: *anyopaque, x: i16, y: i16, z: i16, width: i16, height: i16) void,
    glDrawTexsvOESFn: *const fn (pointer: *anyopaque, coords: []i16, offset: i32) void,
    glDrawTexsvOESFn: *const fn (pointer: *anyopaque, coords: ?*ShortBuffer) void,
    glDrawTexxOESFn: *const fn (pointer: *anyopaque, x: i32, y: i32, z: i32, width: i32, height: i32) void,
    glDrawTexxvOESFn: *const fn (pointer: *anyopaque, coords: []i32, offset: i32) void,
    glDrawTexxvOESFn: *const fn (pointer: *anyopaque, coords: ?*IntBuffer) void,
    glEnableFn: *const fn (pointer: *anyopaque, cap: i32) void,
    glEnableClientStateFn: *const fn (pointer: *anyopaque, array: i32) void,
    glLoadPaletteFromModelViewMatrixOESFn: *const fn (pointer: *anyopaque) void,
    glMatrixIndexPointerOESFn: *const fn (pointer: *anyopaque, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void,
    glMatrixIndexPointerOESFn: *const fn (pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void,
    glWeightPointerOESFn: *const fn (pointer: *anyopaque, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void,
    glWeightPointerOESFn: *const fn (pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void,

    pub fn glTexParameterfv(self: *Self, target: i32, pname: i32, param: []f32, offset: i32) void {
        return self.glTexParameterfvFn(self.pointer, target, pname, param, offset);
    }

    pub fn glCurrentPaletteMatrixOES(self: *Self, matrixpaletteindex: i32) void {
        return self.glCurrentPaletteMatrixOESFn(self.pointer, matrixpaletteindex);
    }

    pub fn glDrawTexfOES(self: *Self, x: f32, y: f32, z: f32, width: f32, height: f32) void {
        return self.glDrawTexfOESFn(self.pointer, x, y, z, width, height);
    }

    pub fn glDrawTexfvOES(self: *Self, coords: []f32, offset: i32) void {
        return self.glDrawTexfvOESFn(self.pointer, coords, offset);
    }

    pub fn glDrawTexfvOES(self: *Self, coords: ?*FloatBuffer) void {
        return self.glDrawTexfvOESFn(self.pointer, coords);
    }

    pub fn glDrawTexiOES(self: *Self, x: i32, y: i32, z: i32, width: i32, height: i32) void {
        return self.glDrawTexiOESFn(self.pointer, x, y, z, width, height);
    }

    pub fn glDrawTexivOES(self: *Self, coords: []i32, offset: i32) void {
        return self.glDrawTexivOESFn(self.pointer, coords, offset);
    }

    pub fn glDrawTexivOES(self: *Self, coords: ?*IntBuffer) void {
        return self.glDrawTexivOESFn(self.pointer, coords);
    }

    pub fn glDrawTexsOES(self: *Self, x: i16, y: i16, z: i16, width: i16, height: i16) void {
        return self.glDrawTexsOESFn(self.pointer, x, y, z, width, height);
    }

    pub fn glDrawTexsvOES(self: *Self, coords: []i16, offset: i32) void {
        return self.glDrawTexsvOESFn(self.pointer, coords, offset);
    }

    pub fn glDrawTexsvOES(self: *Self, coords: ?*ShortBuffer) void {
        return self.glDrawTexsvOESFn(self.pointer, coords);
    }

    pub fn glDrawTexxOES(self: *Self, x: i32, y: i32, z: i32, width: i32, height: i32) void {
        return self.glDrawTexxOESFn(self.pointer, x, y, z, width, height);
    }

    pub fn glDrawTexxvOES(self: *Self, coords: []i32, offset: i32) void {
        return self.glDrawTexxvOESFn(self.pointer, coords, offset);
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

    pub fn glMatrixIndexPointerOES(self: *Self, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
        return self.glMatrixIndexPointerOESFn(self.pointer, size, @"type", stride, pointer);
    }

    pub fn glMatrixIndexPointerOES(self: *Self, size: i32, @"type": i32, stride: i32, offset: i32) void {
        return self.glMatrixIndexPointerOESFn(self.pointer, size, @"type", stride, offset);
    }

    pub fn glWeightPointerOES(self: *Self, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
        return self.glWeightPointerOESFn(self.pointer, size, @"type", stride, pointer);
    }

    pub fn glWeightPointerOES(self: *Self, size: i32, @"type": i32, stride: i32, offset: i32) void {
        return self.glWeightPointerOESFn(self.pointer, size, @"type", stride, offset);
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
            fn glTexParameterfv(pointer: *anyopaque, target: i32, pname: i32, param: []f32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glTexParameterfv").glTexParameterfv(target, pname, param, offset);
            }
            fn glCurrentPaletteMatrixOES(pointer: *anyopaque, matrixpaletteindex: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glCurrentPaletteMatrixOES").glCurrentPaletteMatrixOES(matrixpaletteindex);
            }
            fn glDrawTexfOES(pointer: *anyopaque, x: f32, y: f32, z: f32, width: f32, height: f32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDrawTexfOES").glDrawTexfOES(x, y, z, width, height);
            }
            fn glDrawTexfvOES(pointer: *anyopaque, coords: []f32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDrawTexfvOES").glDrawTexfvOES(coords, offset);
            }
            fn glDrawTexfvOES(pointer: *anyopaque, coords: ?*FloatBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDrawTexfvOES").glDrawTexfvOES(coords);
            }
            fn glDrawTexiOES(pointer: *anyopaque, x: i32, y: i32, z: i32, width: i32, height: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDrawTexiOES").glDrawTexiOES(x, y, z, width, height);
            }
            fn glDrawTexivOES(pointer: *anyopaque, coords: []i32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDrawTexivOES").glDrawTexivOES(coords, offset);
            }
            fn glDrawTexivOES(pointer: *anyopaque, coords: ?*IntBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDrawTexivOES").glDrawTexivOES(coords);
            }
            fn glDrawTexsOES(pointer: *anyopaque, x: i16, y: i16, z: i16, width: i16, height: i16) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDrawTexsOES").glDrawTexsOES(x, y, z, width, height);
            }
            fn glDrawTexsvOES(pointer: *anyopaque, coords: []i16, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDrawTexsvOES").glDrawTexsvOES(coords, offset);
            }
            fn glDrawTexsvOES(pointer: *anyopaque, coords: ?*ShortBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDrawTexsvOES").glDrawTexsvOES(coords);
            }
            fn glDrawTexxOES(pointer: *anyopaque, x: i32, y: i32, z: i32, width: i32, height: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDrawTexxOES").glDrawTexxOES(x, y, z, width, height);
            }
            fn glDrawTexxvOES(pointer: *anyopaque, coords: []i32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDrawTexxvOES").glDrawTexxvOES(coords, offset);
            }
            fn glDrawTexxvOES(pointer: *anyopaque, coords: ?*IntBuffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glDrawTexxvOES").glDrawTexxvOES(coords);
            }
            fn glEnable(pointer: *anyopaque, cap: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glEnable").glEnable(cap);
            }
            fn glEnableClientState(pointer: *anyopaque, array: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glEnableClientState").glEnableClientState(array);
            }
            fn glLoadPaletteFromModelViewMatrixOES(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glLoadPaletteFromModelViewMatrixOES").glLoadPaletteFromModelViewMatrixOES();
            }
            fn glMatrixIndexPointerOES(pointer: *anyopaque, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glMatrixIndexPointerOES").glMatrixIndexPointerOES(size, @"type", stride, pointer);
            }
            fn glMatrixIndexPointerOES(pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glMatrixIndexPointerOES").glMatrixIndexPointerOES(size, @"type", stride, offset);
            }
            fn glWeightPointerOES(pointer: *anyopaque, size: i32, @"type": i32, stride: i32, pointer: ?*Buffer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glWeightPointerOES").glWeightPointerOES(size, @"type", stride, pointer);
            }
            fn glWeightPointerOES(pointer: *anyopaque, size: i32, @"type": i32, stride: i32, offset: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "glWeightPointerOES").glWeightPointerOES(size, @"type", stride, offset);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = GL.of(object).?.*, .toStringFn = Methods.toString, .glTexParameterfvFn = Methods.glTexParameterfv, .glCurrentPaletteMatrixOESFn = Methods.glCurrentPaletteMatrixOES, .glDrawTexfOESFn = Methods.glDrawTexfOES, .glDrawTexfvOESFn = Methods.glDrawTexfvOES, .glDrawTexfvOESFn = Methods.glDrawTexfvOES, .glDrawTexiOESFn = Methods.glDrawTexiOES, .glDrawTexivOESFn = Methods.glDrawTexivOES, .glDrawTexivOESFn = Methods.glDrawTexivOES, .glDrawTexsOESFn = Methods.glDrawTexsOES, .glDrawTexsvOESFn = Methods.glDrawTexsvOES, .glDrawTexsvOESFn = Methods.glDrawTexsvOES, .glDrawTexxOESFn = Methods.glDrawTexxOES, .glDrawTexxvOESFn = Methods.glDrawTexxvOES, .glDrawTexxvOESFn = Methods.glDrawTexxvOES, .glEnableFn = Methods.glEnable, .glEnableClientStateFn = Methods.glEnableClientState, .glLoadPaletteFromModelViewMatrixOESFn = Methods.glLoadPaletteFromModelViewMatrixOES, .glMatrixIndexPointerOESFn = Methods.glMatrixIndexPointerOES, .glMatrixIndexPointerOESFn = Methods.glMatrixIndexPointerOES, .glWeightPointerOESFn = Methods.glWeightPointerOES, .glWeightPointerOESFn = Methods.glWeightPointerOES };
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


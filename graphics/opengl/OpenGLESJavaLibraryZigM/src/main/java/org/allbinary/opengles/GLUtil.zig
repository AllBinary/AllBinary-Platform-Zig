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
// const Buffer = @import("java/nio/Buffer.zig").Buffer;
// const ByteBuffer = @import("java/nio/ByteBuffer.zig").ByteBuffer;
// const ByteOrder = @import("java/nio/ByteOrder.zig").ByteOrder;
// const FloatBuffer = @import("java/nio/FloatBuffer.zig").FloatBuffer;

pub const GLUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.opengles.GLUtil";
    BYTES_PER_FLOAT: i32 = 0,
    NULL_FLOAT_BUFFER: ?*FloatBuffer = null,
    var instance: ?*GLUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GLUtil.create();
    }

    fn initFields(this: *Self) void {
        this.BYTES_PER_FLOAT = 4;
        this.NULL_FLOAT_BUFFER = Inheritance.upcast(?*FloatBuffer, Inheritance.receiverOf(Inheritance.callStatic(ByteBuffer, "allocateDirect", .{ 0 }).?, "asFloatBuffer").asFloatBuffer());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GLUtil {
        return Inheritance.upcast(?*GLUtil, GLUtil.instance);
    }
    

    pub fn makeFloatBuffer3(self: *Self, p_a: f32, p_b: f32, p_c: f32) ?*FloatBuffer {
        const b: ?*ByteBuffer = Inheritance.upcast(?*ByteBuffer, Inheritance.callStatic(ByteBuffer, "allocateDirect", .{ 3 * self.BYTES_PER_FLOAT }));
        _ = Inheritance.call(b.?, "order", .{ ByteOrder.nativeOrder() });
        const buffer: ?*FloatBuffer = Inheritance.upcast(?*FloatBuffer, b.?.asFloatBuffer());
        _ = Inheritance.call(buffer.?, "put", .{ p_a });
        _ = Inheritance.call(buffer.?, "put", .{ p_b });
        _ = Inheritance.call(buffer.?, "put", .{ p_c });
        _ = Inheritance.call(self, "position", .{ buffer, 0 });
        return buffer;
    }
    

    pub fn makeFloatBuffer4(self: *Self, p_a: f32, p_b: f32, p_c: f32, p_d: f32) ?*FloatBuffer {
        const b: ?*ByteBuffer = Inheritance.upcast(?*ByteBuffer, Inheritance.callStatic(ByteBuffer, "allocateDirect", .{ 4 * self.BYTES_PER_FLOAT }));
        _ = Inheritance.call(b.?, "order", .{ ByteOrder.nativeOrder() });
        const buffer: ?*FloatBuffer = Inheritance.upcast(?*FloatBuffer, b.?.asFloatBuffer());
        _ = Inheritance.call(buffer.?, "put", .{ p_a });
        _ = Inheritance.call(buffer.?, "put", .{ p_b });
        _ = Inheritance.call(buffer.?, "put", .{ p_c });
        _ = Inheritance.call(buffer.?, "put", .{ p_d });
        _ = Inheritance.call(self, "position", .{ buffer, 0 });
        return buffer;
    }
    

    pub fn makeFloatBuffer(self: *Self, byteBuffer: ?*ByteBuffer) ?*FloatBuffer {
        const b: ?*ByteBuffer = Inheritance.upcast(?*ByteBuffer, Inheritance.callStatic(ByteBuffer, "allocateDirect", .{ byteBuffer.?.limit() * self.BYTES_PER_FLOAT }));
        _ = Inheritance.call(b.?, "order", .{ ByteOrder.nativeOrder() });
        const buffer: ?*FloatBuffer = Inheritance.upcast(?*FloatBuffer, b.?.asFloatBuffer());
        var unsigned: i32 = 0;
        var v: f32 = 0.0;
        while (byteBuffer.?.hasRemaining()) {
            unsigned = (@as(i32, @intCast(byteBuffer.?.get()))) & 0xFF;
            v = (@as(f32, @floatFromInt(unsigned))) / 255.0;
            _ = Inheritance.call(buffer.?, "put", .{ v });
        }
        _ = Inheritance.call(self, "position", .{ buffer, 0 });
        return buffer;
    }
    

    pub fn position(self: *Self, buffer: ?*Buffer, newPosition: i32) ?*Buffer {
        _ = self;
        return Inheritance.upcast(?*Buffer, Inheritance.call(buffer.?, "position", .{ newPosition }));
    }
    

    pub fn rotateUVs(self: *Self, uvs: []f32, angleDegrees: f32, pivotU: f32, pivotV: f32) void {
        _ = self;
        const angleRad: f64 = std.math.degreesToRadians(@as(f64, @floatCast(angleDegrees)));
        const cosA: f64 = @cos(angleRad);
        const sinA: f64 = @sin(angleRad);
        {
            var i: i32 = 0;
            while (i < @as(i32, @intCast(uvs.len))) : (i += 2) {
            const u: f32 = uvs[@intCast(i)];
            const v: f32 = uvs[@intCast(i + 1)];
            const du: f32 = u - pivotU;
            const dv: f32 = v - pivotV;
            const ru: f32 = @as(f32, @floatCast((@as(f64, @floatCast(du)) * cosA - @as(f64, @floatCast(dv)) * sinA))) + pivotU;
            const rv: f32 = @as(f32, @floatCast((@as(f64, @floatCast(du)) * sinA + @as(f64, @floatCast(dv)) * cosA))) + pivotV;
            uvs[@intCast(i)] = ru;
            uvs[@intCast(i + 1)] = rv;
            }
        }
    }
};


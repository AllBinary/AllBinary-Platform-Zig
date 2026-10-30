// Generated Code Do Not Modify
// package org.allbinary.util

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const MathUtil = @import("org/allbinary/logic/math/MathUtil.zig").MathUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const System = @import("java/lang/System.zig").System;

pub const ArrayUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.util.ArrayUtil";
    mathUtil: ?*MathUtil = null,
    var instance: ?*ArrayUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ArrayUtil.create();
    }

    fn initFields(this: *Self) void {
        this.mathUtil = Inheritance.upcast(?*MathUtil, MathUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ArrayUtil {
        return Inheritance.upcast(?*ArrayUtil, ArrayUtil.instance);
    }
    

    pub fn copyOf(self: *Self, original: []?Object, newLength: i32) []?Object {
        return Inheritance.call(self, "copyOfType", .{ original, newLength, @as(?*anyopaque, @ptrCast(@constCast(Object.of(original).?.class))) });
    }
    

    pub fn copyOfType(self: *Self, original: []?Object, newLength: i32, newType: ?*anyopaque) []?Object {
        _ = newType;
        const copy: []?Object = array_N66068: { const array_N66068_array = allocator.alloc(?Object, @intCast(newLength)) catch unreachable; @memset(array_N66068_array, null); break :array_N66068 array_N66068_array; };
        _ = @memmove(copy[@intCast(0)..@intCast(0 + Inheritance.call(self.mathUtil.?, "min", .{ @as(i32, @intCast(original.len)), newLength }))], original[@intCast(0)..@intCast(0 + Inheritance.call(self.mathUtil.?, "min", .{ @as(i32, @intCast(original.len)), newLength }))]);
        return copy;
    }
    

    pub fn copyOfbyte(self: *Self, original: []i8, newLength: i32) []i8 {
        const copy: []i8 = array_N66361: { const array_N66361_array = allocator.alloc(i8, @intCast(newLength)) catch unreachable; @memset(array_N66361_array, 0); break :array_N66361 array_N66361_array; };
        _ = @memmove(copy[@intCast(0)..@intCast(0 + Inheritance.call(self.mathUtil.?, "min", .{ @as(i32, @intCast(original.len)), newLength }))], original[@intCast(0)..@intCast(0 + Inheritance.call(self.mathUtil.?, "min", .{ @as(i32, @intCast(original.len)), newLength }))]);
        return copy;
    }
    

    pub fn copyOfshort(self: *Self, original: []i16, newLength: i32) []i16 {
        const copy: []i16 = array_N66614: { const array_N66614_array = allocator.alloc(i16, @intCast(newLength)) catch unreachable; @memset(array_N66614_array, 0); break :array_N66614 array_N66614_array; };
        _ = @memmove(copy[@intCast(0)..@intCast(0 + Inheritance.call(self.mathUtil.?, "min", .{ @as(i32, @intCast(original.len)), newLength }))], original[@intCast(0)..@intCast(0 + Inheritance.call(self.mathUtil.?, "min", .{ @as(i32, @intCast(original.len)), newLength }))]);
        return copy;
    }
    

    pub fn copyOfint(self: *Self, original: []i32, newLength: i32) []i32 {
        const copy: []i32 = array_N66853: { const array_N66853_array = allocator.alloc(i32, @intCast(newLength)) catch unreachable; @memset(array_N66853_array, 0); break :array_N66853 array_N66853_array; };
        _ = @memmove(copy[@intCast(0)..@intCast(0 + Inheritance.call(self.mathUtil.?, "min", .{ @as(i32, @intCast(original.len)), newLength }))], original[@intCast(0)..@intCast(0 + Inheritance.call(self.mathUtil.?, "min", .{ @as(i32, @intCast(original.len)), newLength }))]);
        return copy;
    }
    

    pub fn copyOflong(self: *Self, original: []i64, newLength: i32) []i64 {
        const copy: []i64 = array_N67106: { const array_N67106_array = allocator.alloc(i64, @intCast(newLength)) catch unreachable; @memset(array_N67106_array, 0); break :array_N67106 array_N67106_array; };
        _ = @memmove(copy[@intCast(0)..@intCast(0 + Inheritance.call(self.mathUtil.?, "min", .{ @as(i32, @intCast(original.len)), newLength }))], original[@intCast(0)..@intCast(0 + Inheritance.call(self.mathUtil.?, "min", .{ @as(i32, @intCast(original.len)), newLength }))]);
        return copy;
    }
    

    pub fn copyOfchar(self: *Self, original: []u16, newLength: i32) []u16 {
        const copy: []u16 = array_N67359: { const array_N67359_array = allocator.alloc(u16, @intCast(newLength)) catch unreachable; @memset(array_N67359_array, 0); break :array_N67359 array_N67359_array; };
        _ = @memmove(copy[@intCast(0)..@intCast(0 + Inheritance.call(self.mathUtil.?, "min", .{ @as(i32, @intCast(original.len)), newLength }))], original[@intCast(0)..@intCast(0 + Inheritance.call(self.mathUtil.?, "min", .{ @as(i32, @intCast(original.len)), newLength }))]);
        return copy;
    }
    

    pub fn copyOffloat(self: *Self, original: []f32, newLength: i32) []f32 {
        const copy: []f32 = array_N67612: { const array_N67612_array = allocator.alloc(f32, @intCast(newLength)) catch unreachable; @memset(array_N67612_array, 0.0); break :array_N67612 array_N67612_array; };
        _ = @memmove(copy[@intCast(0)..@intCast(0 + Inheritance.call(self.mathUtil.?, "min", .{ @as(i32, @intCast(original.len)), newLength }))], original[@intCast(0)..@intCast(0 + Inheritance.call(self.mathUtil.?, "min", .{ @as(i32, @intCast(original.len)), newLength }))]);
        return copy;
    }
    

    pub fn copyOfdouble(self: *Self, original: []f64, newLength: i32) []f64 {
        const copy: []f64 = array_N67865: { const array_N67865_array = allocator.alloc(f64, @intCast(newLength)) catch unreachable; @memset(array_N67865_array, 0.0); break :array_N67865 array_N67865_array; };
        _ = @memmove(copy[@intCast(0)..@intCast(0 + Inheritance.call(self.mathUtil.?, "min", .{ @as(i32, @intCast(original.len)), newLength }))], original[@intCast(0)..@intCast(0 + Inheritance.call(self.mathUtil.?, "min", .{ @as(i32, @intCast(original.len)), newLength }))]);
        return copy;
    }
    

    pub fn copyOfboolean(self: *Self, original: []bool, newLength: i32) []bool {
        const copy: []bool = array_N68118: { const array_N68118_array = allocator.alloc(bool, @intCast(newLength)) catch unreachable; @memset(array_N68118_array, false); break :array_N68118 array_N68118_array; };
        _ = @memmove(copy[@intCast(0)..@intCast(0 + Inheritance.call(self.mathUtil.?, "min", .{ @as(i32, @intCast(original.len)), newLength }))], original[@intCast(0)..@intCast(0 + Inheritance.call(self.mathUtil.?, "min", .{ @as(i32, @intCast(original.len)), newLength }))]);
        return copy;
    }
    

    pub fn reverse(self: *Self, intArray: []i32) void {
        _ = self;
        const length: i32 = @as(i32, @intCast(intArray.len)) - 1;
        var temp: i32 = 0;
        const size: i32 = @divTrunc(length, 2);
        {
            var index: i32 = 0;
            while (index <= size) : (index += 1) {
            temp = intArray[@intCast(index)];
            intArray[@intCast(index)] = intArray[@intCast(length - index)];
            intArray[@intCast(length - index)] = temp;
            }
        }
    }
    

    pub fn flip(self: *Self, intArray: []i32, width: i32, height: i32) void {
        _ = self;
        const length: i32 = height - 1;
        var temp: i32 = 0;
        var index: i32 = 0;
        var rowIndex: i32 = 0;
        {
            var y: i32 = 0;
            while (y <= @divTrunc(length, 2)) : (y += 1) {
            {
                var x: i32 = 0;
                while (x < width) : (x += 1) {
                rowIndex = ((length - y) * width);
                index = x + (y * width);
                temp = intArray[@intCast(index)];
                intArray[@intCast(index)] = intArray[@intCast(rowIndex + x)];
                intArray[@intCast(rowIndex + x)] = temp;
                }
            }
            }
        }
    }
    

    pub fn toStringFromTwoDimensionaArray(self: *Self, twoDimensionalIntArray: [][]i32) ?*String {
        _ = self;
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        const endIndex: i32 = @as(i32, @intCast(twoDimensionalIntArray.len));
        const endIndex2: i32 = @as(i32, @intCast(twoDimensionalIntArray[@intCast(0)].len));
        {
            var index: i32 = 0;
            while (index < endIndex) : (index += 1) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.BRACE_OPEN });
            {
                var index2: i32 = 0;
                while (index2 < endIndex2) : (index2 += 1) {
                _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast(twoDimensionalIntArray[@intCast(index)][@intCast(index2)])) });
                _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.COMMA_SEP });
                }
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.BRACE_CLOSE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn toStringFromObjectArray(self: *Self, objectArray: []?Object) ?*String {
        _ = self;
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(objectArray.len))) : (index += 1) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ objectArray[@intCast(index)] }) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.COMMA_SEP });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn toStringFromByteArray(self: *Self, byteArray: []i8) ?*String {
        _ = self;
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(byteArray.len))) : (index += 1) {
            _ = Inheritance.call(stringBuffer.?, "appendbyte", .{ byteArray[@intCast(index)] });
            _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.COMMA_SEP });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};


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
// package org.allbinary.game.rand

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Random = @import("java/util/Random.zig").Random;
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsConstructor = @import("jsinterop/annotations/JsConstructor.zig").JsConstructor;
const MathUtil = @import("org/allbinary/logic/math/MathUtil.zig").MathUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const System = @import("java/lang/System.zig").System;
const Integer = @import("java/lang/Integer.zig").Integer;

//Do not use in client code for money related things.
pub const MyRandomFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.rand.MyRandomFactory";
    mathUtil: ?*MathUtil = null,
    rand: ?*Random = null,
    var instance: ?*MyRandomFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MyRandomFactory.create();
    }

    fn initFields(this: *Self) void {
        this.mathUtil = Inheritance.upcast(?*MathUtil, MathUtil.getInstance());
        
    }
    

    pub fn getInstance() ?*MyRandomFactory {
        return Inheritance.upcast(?*MyRandomFactory, MyRandomFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.rand = Inheritance.callStatic(Random, "create1", .{ std.Io.Timestamp.now(std.Io.Threaded.global_single_threaded.io(), .real).toMilliseconds() });
        return this;
    }
    

    pub fn setSeed(self: *Self, seed: i64) void {
        self.rand = Inheritance.callStatic(Random, "create1", .{ seed });
    }
    

    pub fn getNextInt(self: *Self, range: i32) i32 {
        const div: i32 = (@divTrunc(@as(i32, std.math.maxInt(i32)), range)) + 1;
        return @as(i32, @intCast(((divide_N66208: { const left_N66208 = self.rand.?.nextInt(); const right_N66208 = div; break :divide_N66208 if (comptime @typeInfo(@TypeOf(left_N66208)) == .int or @TypeOf(left_N66208) == comptime_int) @divTrunc(left_N66208, right_N66208) else left_N66208 / right_N66208; }))));
    }
    

    pub fn getAbsoluteNextInt(self: *Self, range: i32) i32 {
        return Inheritance.call(self.mathUtil.?, "abs", .{ Inheritance.call(self, "getNextInt", .{ range }) });
    }
    

    pub fn getAbsoluteNextIntAllowZero(self: *Self, range: i32) i32 {
        if (range == 0) {
            return 0;
        } else {
            return Inheritance.call(self.mathUtil.?, "abs", .{ Inheritance.call(self, "getNextInt", .{ range }) });
        }
    }
    

    pub fn shuffle(self: *Self, intArray: []i32) void {
        _ = Inheritance.call(self, "shuffleTotal", .{ intArray, @as(i32, @intCast(intArray.len)) * 7 });
    }
    

    pub fn shuffleTotal(self: *Self, intArray: []i32, shuffleTotal_: i32) void {
        const size: i32 = @as(i32, @intCast(intArray.len));
        var randomIndex: i32 = 0;
        var randomIndex2: i32 = 0;
        var value: i32 = 0;
        {
            var index: i32 = 0;
            while (index < shuffleTotal_) : (index += 1) {
            randomIndex = Inheritance.call(self, "getAbsoluteNextIntAllowZero", .{ size });
            randomIndex2 = Inheritance.call(self, "getAbsoluteNextIntAllowZero", .{ size });
            value = intArray[@intCast(randomIndex)];
            intArray[@intCast(randomIndex)] = intArray[@intCast(randomIndex2)];
            intArray[@intCast(randomIndex2)] = value;
            }
        }
    }
    

    pub fn shuffle2(self: *Self, intArray: []i32, intArray2: []i32) void {
        _ = Inheritance.call(self, "shuffle2Total", .{ intArray, intArray2, @as(i32, @intCast(intArray.len)) * 7 });
    }
    

    pub fn shuffle2Total(self: *Self, intArray: []i32, intArray2: []i32, shuffleTotal_: i32) void {
        const size: i32 = @as(i32, @intCast(intArray.len));
        var randomIndex: i32 = 0;
        var randomIndex2: i32 = 0;
        var value: i32 = 0;
        var value2: i32 = 0;
        {
            var index: i32 = 0;
            while (index < shuffleTotal_) : (index += 1) {
            randomIndex = Inheritance.call(self, "getAbsoluteNextIntAllowZero", .{ size });
            randomIndex2 = Inheritance.call(self, "getAbsoluteNextIntAllowZero", .{ size });
            value = intArray[@intCast(randomIndex)];
            value2 = intArray2[@intCast(randomIndex)];
            intArray[@intCast(randomIndex)] = intArray[@intCast(randomIndex2)];
            intArray[@intCast(randomIndex2)] = value;
            intArray2[@intCast(randomIndex)] = intArray2[@intCast(randomIndex2)];
            intArray2[@intCast(randomIndex2)] = value2;
            }
        }
    }
    

    pub fn main(args: []?*String) void {
        _ = args;
        const randomFactory: ?*MyRandomFactory = Inheritance.upcast(?*MyRandomFactory, MyRandomFactory.getInstance());
        const stringBuilder: ?*StringMaker = StringMaker.create();
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        const size2: i32 = 100;
        {
            var index: i32 = 0;
            while (index < size2) : (index += 1) {
            _ = Inheritance.call(Inheritance.call(stringBuilder.?, "appendint", .{ @as(i32, @intCast(Inheritance.call(randomFactory.?, "getAbsoluteNextInt", .{ 3 }))) }).?, "append", .{ commonSeps.?.COMMA });
            }
        }
        _ = std.debug.print("{s}\n", .{String.text(Object.toString(Object.of(stringBuilder)))});
        _ = Inheritance.call(stringBuilder.?, "delete", .{ 0, stringBuilder.?.length() });
        const intArray: []i32 = array_N68366: { const array_N68366_array = allocator.alloc(i32, @intCast(52)) catch unreachable; @memset(array_N68366_array, 0); break :array_N68366 array_N68366_array; };
        const intArray2: []i32 = array_N68420: { const array_N68420_array = allocator.alloc(i32, @intCast(52)) catch unreachable; @memset(array_N68420_array, 0); break :array_N68420 array_N68420_array; };
        const size: i32 = @as(i32, @intCast(intArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            intArray[@intCast(index)] = index;
            intArray2[@intCast(index)] = index;
            }
        }
        _ = Inheritance.call(randomFactory.?, "shuffle2", .{ intArray, intArray2 });
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(Inheritance.call(stringBuilder.?, "appendint", .{ intArray[@intCast(index)] }).?, "append", .{ commonSeps.?.COMMA });
            }
        }
        _ = std.debug.print("{s}\n", .{String.text(Object.toString(Object.of(stringBuilder)))});
        _ = Inheritance.call(stringBuilder.?, "delete", .{ 0, stringBuilder.?.length() });
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(Inheritance.call(stringBuilder.?, "appendint", .{ intArray2[@intCast(index)] }).?, "append", .{ commonSeps.?.COMMA });
            }
        }
        _ = std.debug.print("{s}\n", .{String.text(Object.toString(Object.of(stringBuilder)))});
        var found: bool = false;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            found = false;
            {
                var index2: i32 = 0;
                while (index2 < size) : (index2 += 1) {
                if (intArray[@intCast(index2)] == index) {
                    found = true;
                }
                }
            }
            if (!found) {
                std.debug.panic("{any}", .{error.RuntimeException});
            }
            }
        }
    }
};


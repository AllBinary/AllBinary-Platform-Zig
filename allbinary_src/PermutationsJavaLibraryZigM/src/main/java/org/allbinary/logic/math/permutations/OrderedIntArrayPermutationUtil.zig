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
// package org.allbinary.logic.math.permutations

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Visitor = @import("org/allbinary/logic/util/visitor/Visitor.zig").Visitor;
const IntPermutationVisitor = @import("org/allbinary/logic/math/permutations/IntPermutationVisitor.zig").IntPermutationVisitor;
const System = @import("java/lang/System.zig").System;

pub const OrderedIntArrayPermutationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.math.permutations.OrderedIntArrayPermutationUtil";
    TOTAL_ITERATIONS_TABLE: ?*String = null,
    FINISHED: ?*String = null,
    var instance: ?*OrderedIntArrayPermutationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OrderedIntArrayPermutationUtil.create();
    }

    fn initFields(this: *Self) void {
        this.TOTAL_ITERATIONS_TABLE = String.literal("Total Iterations: ");
        this.FINISHED = String.literal("\nFINISHED");
    }
    

    pub fn getInstance() ?*OrderedIntArrayPermutationUtil {
        return Inheritance.upcast(?*OrderedIntArrayPermutationUtil, OrderedIntArrayPermutationUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getNext(self: *Self, data: []i32) void {
        const length: i32 = @as(i32, @intCast(data.len));
        var i: i32 = length - 1;
        while (data[@intCast(i - 1)] >= data[@intCast(i)]) {
            i = i - 1;
        }
        var j: i32 = length;
        while (data[@intCast(j - 1)] <= data[@intCast(i - 1)]) {
            j = j - 1;
        }
        _ = Inheritance.call(self, "swap", .{ data, i - 1, j - 1 });
        i += 1;
        j = length;
        while (i < j) {
            _ = Inheritance.call(self, "swap", .{ data, i - 1, j - 1 });
            i += 1;
            j -= 1;
        }
    }
    

    pub fn swap(self: *Self, data: []i32, a: i32, b: i32) void {
        _ = self;
        const temp: i32 = data[@intCast(a)];
        data[@intCast(a)] = data[@intCast(b)];
        data[@intCast(b)] = temp;
    }
    

    pub fn factorial(self: *Self, dataLength: i32) i64 {
        _ = self;
        var temp: i64 = 1;
        if (dataLength > 1) {
            {
                var i: i32 = 1;
                while (i <= dataLength) : (i += 1) {
                temp *= @as(i64, @intCast(i));
                }
            }
        }
        return temp;
    }
    

    pub fn generate(self: *Self, data: []i32, visitor: ?*Visitor) void {
        const iterations: i64 = Inheritance.call(self, "factorial", .{ @as(i32, @intCast(data.len)) });
        _ = std.debug.print("{s}", .{String.text(self.TOTAL_ITERATIONS_TABLE)});
        _ = std.debug.print("{s}\n", .{String.text(iterations)});
        {
            var count: i64 = 0;
            while (count < iterations - 1) : (count += 1) {
            _ = Inheritance.call(self, "getNext", .{ data });
            _ = Inheritance.call(visitor.?, "visit", .{ self });
            }
        }
        _ = std.debug.print("{s}\n", .{String.text(self.FINISHED)});
    }
    

    pub fn main(args: []?*String) void {
        _ = args;
        const TOTAL: i32 = 3;
        const data: []i32 = array_N67263: { const array_N67263_array = allocator.alloc(i32, @intCast(TOTAL)) catch unreachable; @memset(array_N67263_array, 0); break :array_N67263 array_N67263_array; };
        {
            var i: i32 = 0;
            while (i < TOTAL) : (i += 1) {
            data[@intCast(i)] = i;
            }
        }
        const permutationVisitor: ?*IntPermutationVisitor = Inheritance.callStatic(IntPermutationVisitor, "create1", .{ data });
        const ORIGINAL_DATA_LABEL: ?*String = String.literal("Original Data: ");
        _ = std.debug.print("{s}", .{String.text(ORIGINAL_DATA_LABEL)});
        _ = Inheritance.call(permutationVisitor.?, "print", .{ data });
        _ = Inheritance.call(OrderedIntArrayPermutationUtil.getInstance().?, "generate", .{ data, permutationVisitor });
    }
};


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
// package org.allbinary.ag.game.vector

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const HealthVectorData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.ag.game.vector.HealthVectorData";
    pub var points: [][][]i32 = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        points = @constCast(&[_][][]i32{ @constCast(&[_][]i32{ @constCast(&[_]i32{ 2, 1 })[0..], @constCast(&[_]i32{ 3, 2 })[0..], @constCast(&[_]i32{ 3, 2 })[0..], @constCast(&[_]i32{ 4, 1 })[0..], @constCast(&[_]i32{ 4, 1 })[0..], @constCast(&[_]i32{ 5, 1 })[0..], @constCast(&[_]i32{ 5, 1 })[0..], @constCast(&[_]i32{ 6, 2 })[0..], @constCast(&[_]i32{ 6, 2 })[0..], @constCast(&[_]i32{ 6, 3 })[0..], @constCast(&[_]i32{ 6, 3 })[0..], @constCast(&[_]i32{ 3, 6 })[0..], @constCast(&[_]i32{ 3, 6 })[0..], @constCast(&[_]i32{ 0, 3 })[0..], @constCast(&[_]i32{ 0, 3 })[0..], @constCast(&[_]i32{ 0, 2 })[0..], @constCast(&[_]i32{ 0, 2 })[0..], @constCast(&[_]i32{ 1, 1 })[0..], @constCast(&[_]i32{ 1, 1 })[0..], @constCast(&[_]i32{ 2, 1 })[0..], @constCast(&[_]i32{ 1000, 1000 })[0..] })[0..] })[0..];
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};


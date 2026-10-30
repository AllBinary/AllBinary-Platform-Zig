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
// package org.allbinary.game.ag.vector

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const MineVectorData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.vector.MineVectorData";
    pub var points: [][][]i32 = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        points = @constCast(&[_][][]i32{ @constCast(&[_][]i32{ @constCast(&[_]i32{ 10, 5 })[0..], @constCast(&[_]i32{ 2, 6 })[0..], @constCast(&[_]i32{ 1000, 1000 })[0..], @constCast(&[_]i32{ 2, 2 })[0..], @constCast(&[_]i32{ 10, 9 })[0..], @constCast(&[_]i32{ 1000, 1000 })[0..], @constCast(&[_]i32{ 10, 2 })[0..], @constCast(&[_]i32{ 2, 9 })[0..], @constCast(&[_]i32{ 1000, 1000 })[0..], @constCast(&[_]i32{ 2, 5 })[0..], @constCast(&[_]i32{ 10, 6 })[0..], @constCast(&[_]i32{ 1000, 1000 })[0..], @constCast(&[_]i32{ 7, 9 })[0..], @constCast(&[_]i32{ 5, 2 })[0..], @constCast(&[_]i32{ 1000, 1000 })[0..], @constCast(&[_]i32{ 7, 2 })[0..], @constCast(&[_]i32{ 5, 9 })[0..], @constCast(&[_]i32{ 1000, 1000 })[0..] })[0..] })[0..];
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};


// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const GameGlobalsFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.canvas.GameGlobalsFactory";
    newCanvas: bool = false,
    newDisplaybleTime: i64 = 0,
    point: ?*GPoint = null,
    var instance: ?*GameGlobalsFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GameGlobalsFactory.create();
    }

    fn initFields(this: *Self) void {
        this.newCanvas = true;
        this.newDisplaybleTime = @as(i64, @intCast(@as(i32, std.math.minInt(i32))));
        this.point = Inheritance.upcast(?*GPoint, PointFactory.getInstance().?.ZERO_ZERO);
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GameGlobalsFactory {
        return Inheritance.upcast(?*GameGlobalsFactory, GameGlobalsFactory.instance);
    }
};


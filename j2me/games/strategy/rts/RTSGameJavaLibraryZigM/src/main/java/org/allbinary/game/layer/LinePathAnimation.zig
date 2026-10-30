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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const Layer = @import("org/allbinary/layer/Layer.zig").Layer;

pub const LinePathAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.LinePathAnimation";
    var instance: ?*LinePathAnimation = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LinePathAnimation.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*LinePathAnimation {
        return Inheritance.upcast(?*LinePathAnimation, LinePathAnimation.instance);
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics, point: ?*GPoint, nextPoint: ?*GPoint, tiledLayer: ?*Layer) void {
        _ = tiledLayer;
        _ = self;
        _ = Inheritance.call(graphics.?, "drawLine", .{ nextPoint.?.getX(), nextPoint.?.getY(), point.?.getX(), point.?.getY() });
    }
};


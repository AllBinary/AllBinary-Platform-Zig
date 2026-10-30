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
// package org.allbinary.game.health

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const HealthBarAnimation = @import("org/allbinary/game/health/HealthBarAnimation.zig").HealthBarAnimation;

pub const HealthBarTwodAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.health.HealthBarTwodAnimation";
    base: HealthBarAnimation = undefined,
    

    pub fn create2(layerInterface: ?*AllBinaryLayer, location: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HealthBarAnimation, "create2", .{ layerInterface, location }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paintXY(self: *Self, graphics: ?*Graphics, x: i32, y: i32) void {
        _ = x;
        _ = y;
        const ax: i32 = Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.fieldPointer(self, "allbinaryLayer").*.?, "getViewPosition").getViewPosition().?, "getX").getX();
        _ = Inheritance.call(Inheritance.fieldPointer(self, "basicSetColorUtil").*.?, "setBasicColorP3", .{ graphics, Inheritance.fieldPointer(self, "basicColor").*, Inheritance.fieldPointer(self, "colorP").* });
        _ = Inheritance.call(graphics.?, "fillRect", .{ ax, Inheritance.receiver(self, "getY").getY() - 1, Inheritance.fieldPointer(self, "x2").*, Inheritance.fieldPointer(self, "thickness").* });
    }
};


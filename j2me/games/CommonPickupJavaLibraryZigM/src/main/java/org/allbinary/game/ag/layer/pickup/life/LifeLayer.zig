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
// package org.allbinary.game.ag.layer.pickup.life

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Life = @import("org/allbinary/game/ag/life/Life.zig").Life;
const LifeVisitorInterface = @import("org/allbinary/game/ag/life/LifeVisitorInterface.zig").LifeVisitorInterface;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const ViewPosition = @import("org/allbinary/view/ViewPosition.zig").ViewPosition;

pub const LifeLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.pickup.life.LifeLayer";
    base: AllBinaryLayer = undefined,
    // Implements LifeVisitorInterface
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryLayer, "create3", .{ StringUtil.getInstance().?.EMPTY_STRING, Inheritance.callStatic(Rectangle, "create3", .{ PointFactory.getInstance().?.ZERO_ZERO, 0, 0 }), ViewPosition.getInstanceD() }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    pub fn visit(self: *Self, lifeInterface: ?*Life) void {
        _ = self;
        _ = Inheritance.call(lifeInterface.?, "add", .{ @as(i16, @intCast(1)) });
    }
};


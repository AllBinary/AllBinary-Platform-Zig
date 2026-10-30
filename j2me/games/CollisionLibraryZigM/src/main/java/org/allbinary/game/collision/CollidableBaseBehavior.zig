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
// package org.allbinary.game.collision

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const CollidableCompositeLayer = @import("org/allbinary/game/layer/CollidableCompositeLayer.zig").CollidableCompositeLayer;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const CollidableInterface = @import("org/allbinary/game/collision/CollidableInterface.zig").CollidableInterface;
const CollidableInterfaceCompositeInterface = @import("org/allbinary/game/collision/CollidableInterfaceCompositeInterface.zig").CollidableInterfaceCompositeInterface;
const CollisionType = @import("org/allbinary/game/collision/CollisionType.zig").CollisionType;
const CollisionTypeFactory = @import("org/allbinary/game/collision/CollisionTypeFactory.zig").CollisionTypeFactory;
const LayerCollisionUtil = @import("org/allbinary/game/collision/LayerCollisionUtil.zig").LayerCollisionUtil;

pub const CollidableBaseBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.collision.CollidableBaseBehavior";
    pub const java_interfaces = .{ CollidableInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    layerCollisionUtil: ?*LayerCollisionUtil = null,
    collidable: bool = false,
    // Implements CollidableInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.layerCollisionUtil = Inheritance.upcast(?*LayerCollisionUtil, LayerCollisionUtil.getInstance());
        this.collidable = true;
    }
    

    pub fn create1(collidable: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.collidable = collidable;
        return this;
    }
    

    pub fn update(self: *Self) void {
        _ = self;
    }
    

    pub fn getName(self: *Self) ?*String {
        return Inheritance.upcast(?*String, String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name));
    }
    

    pub fn setCollidable(self: *Self, collidable: bool) void {
        self.collidable = collidable;
    }
    

    pub fn isCollidable(self: *Self, ownerLayer: ?*CollidableCompositeLayer) bool {
        _ = ownerLayer;
        return self.collidable;
    }
    

    // throws Exception
    pub fn collide(self: *Self, ownerLayer: ?*CollidableCompositeLayer, allbinaryCollidableLayer: ?*CollidableCompositeLayer) void {
        _ = ownerLayer;
        _ = allbinaryCollidableLayer;
        std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.commonStrings.?.NOT_IMPLEMENTED }).?, "append", .{ CommonLabels.getInstance().?.COLON_SEP }).?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name) }))); break :exception error.Exception; }});
    }
    

    pub fn isCollision(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collisionLayer: ?*CollidableCompositeLayer) bool {
        return Inheritance.call(self.layerCollisionUtil.?, "isCollision", .{ ownerLayer, collisionLayer });
    }
    

    pub fn isCollisionInterface(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableInterfaceCompositeInterface) bool {
        return Inheritance.call(self.layerCollisionUtil.?, "isCollision", .{ ownerLayer, Inheritance.cast(?*AllBinaryLayer, collidableInterfaceCompositeInterface) });
    }
    

    // throws Exception
    pub fn collideInterface(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableInterfaceCompositeInterface) void {
        _ = ownerLayer;
        _ = collidableInterfaceCompositeInterface;
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    pub fn paint(self: *Self, ownerLayer: ?*CollidableCompositeLayer, graphics: ?*Graphics) void {
        _ = ownerLayer;
        _ = graphics;
        _ = self;
    }
    

    pub fn getCollisionTypeWith(self: *Self, layerInterface: ?*AllBinaryLayer) ?*CollisionType {
        _ = layerInterface;
        _ = self;
        return Inheritance.upcast(?*CollisionType, CollisionTypeFactory.getInstance().?.NONE);
    }
};


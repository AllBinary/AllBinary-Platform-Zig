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
// package org.allbinary.game.layer.pickup

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const CountedPickedUpLayerInterfaceFactoryInterface = @import("org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryInterface.zig").CountedPickedUpLayerInterfaceFactoryInterface;
const CountedPickedUpLayerInterfaceFactoryPool = @import("org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool.zig").CountedPickedUpLayerInterfaceFactoryPool;
const IconLayer = @import("org/allbinary/game/layer/pickup/IconLayer.zig").IconLayer;
const PickedUpLayerInterfaceFactory = @import("org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory.zig").PickedUpLayerInterfaceFactory;
const PickedUpLayerType = @import("org/allbinary/game/layer/pickup/PickedUpLayerType.zig").PickedUpLayerType;
const PickedUpLayerTypeFactory = @import("org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.zig").PickedUpLayerTypeFactory;

pub const CountedPickedUpLayerInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory";
    pub const java_interfaces = .{ CountedPickedUpLayerInterfaceFactoryInterface };
    base: PickedUpLayerInterfaceFactory = undefined,
    id: i32 = 0,
    // Implements CountedPickedUpLayerInterfaceFactoryInterface
    pub var NULL_COUNTED_PICKUP_LAYER_FACTORY: ?*CountedPickedUpLayerInterfaceFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_COUNTED_PICKUP_LAYER_FACTORY = Inheritance.callStatic(CountedPickedUpLayerInterfaceFactory, "create3", .{ PickedUpLayerTypeFactory.getInstance().?.NONE, IconLayer.NULL_ICON_LAYER, Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }) });
    }

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create3(pickeUpLayerType: ?*PickedUpLayerType, iconLayer: ?*IconLayer, animationInterface: ?*Animation) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PickedUpLayerInterfaceFactory, "create3", .{ pickeUpLayerType, iconLayer, animationInterface }).*;
        this.initFields();
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(CountedPickedUpLayerInterfaceFactoryPool.getInstance().?, "getList").getList());
        this.id = list.?.size();
        _ = Inheritance.call(list.?, "add", .{ this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getNextInstance(self: *Self, hashtable: ?*ABHashtable, x: i32, y: i32, z: i32) ?*AllBinaryLayer {
        _ = hashtable;
        _ = x;
        _ = y;
        _ = z;
        _ = self;
        std.debug.panic("{any}", .{exception: { _ = CommonStrings.getInstance().?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    pub fn getTotal(self: *Self) i32 {
        _ = self;
        return -1;
    }
    

    pub fn getId(self: *Self) i32 {
        return self.id;
    }
};


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
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const IconLayer = @import("org/allbinary/game/layer/pickup/IconLayer.zig").IconLayer;
const PickedUpLayerInterfaceFactoryBase = @import("org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryBase.zig").PickedUpLayerInterfaceFactoryBase;
const PickedUpLayerType = @import("org/allbinary/game/layer/pickup/PickedUpLayerType.zig").PickedUpLayerType;

pub const PickedUpLayerInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory";
    base: PickedUpLayerInterfaceFactoryBase = undefined,
    pickedUpLayerType: ?*PickedUpLayerType = null,
    iconLayer: ?*IconLayer = null,
    animationInterface: ?*Animation = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create3(pickeUpLayerType: ?*PickedUpLayerType, iconLayer: ?*IconLayer, animationInterface: ?*Animation) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = PickedUpLayerInterfaceFactoryBase.create().*;
        this.initFields();
        this.pickedUpLayerType = pickeUpLayerType;
        this.animationInterface = animationInterface;
        this.iconLayer = iconLayer;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getIconLayer(self: *Self) ?*AllBinaryLayer {
        return Inheritance.upcast(?*AllBinaryLayer, self.iconLayer);
    }
    

    pub fn getAnimationInterface(self: *Self) ?*Animation {
        return self.animationInterface;
    }
    

    pub fn getPickedUpLayerType(self: *Self) ?*PickedUpLayerType {
        return self.pickedUpLayerType;
    }
};


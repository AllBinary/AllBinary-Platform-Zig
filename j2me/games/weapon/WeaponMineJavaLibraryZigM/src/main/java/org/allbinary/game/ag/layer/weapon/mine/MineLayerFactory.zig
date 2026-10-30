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
// package org.allbinary.game.ag.layer.weapon.mine

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerFactoryInterface = @import("org/allbinary/layer/AllBinaryLayerFactoryInterface.zig").AllBinaryLayerFactoryInterface;
const ViewPositionFactoryInterface = @import("org/allbinary/view/ViewPositionFactoryInterface.zig").ViewPositionFactoryInterface;
const MineLayer = @import("org/allbinary/game/ag/layer/weapon/mine/MineLayer.zig").MineLayer;

pub const MineLayerFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory";
    viewPositionFactoryInterface: ?*ViewPositionFactoryInterface = null,
    // Implements AllBinaryLayerFactoryInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(viewPositionFactoryInterface: ?*ViewPositionFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.viewPositionFactoryInterface = viewPositionFactoryInterface;
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self) ?*AllBinaryLayer {
        return Inheritance.upcast(?*AllBinaryLayer, Inheritance.callStatic(MineLayer, "create1", .{ self.viewPositionFactoryInterface.?.getInstance() }));
    }
};


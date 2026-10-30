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
// package org.allbinary.media.graphics.geography.map.racetrack.drop

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const LayerInterfaceFactoryInterface = @import("org/allbinary/layer/LayerInterfaceFactoryInterface.zig").LayerInterfaceFactoryInterface;

pub const RaceTrackAdjacentDropLayerFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory";
    list: ?*BasicArrayList = null,
    basicArrayListUtil: ?*BasicArrayListUtil = null,
    var DROP_LAYER_FACTORY: ?*RaceTrackAdjacentDropLayerFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        DROP_LAYER_FACTORY = RaceTrackAdjacentDropLayerFactory.create();
    }

    fn initFields(this: *Self) void {
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.basicArrayListUtil = Inheritance.upcast(?*BasicArrayListUtil, BasicArrayListUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn clear(self: *Self) void {
        _ = self.list.?.clear();
    }
    

    pub fn getInstance() ?*RaceTrackAdjacentDropLayerFactory {
        return Inheritance.upcast(?*RaceTrackAdjacentDropLayerFactory, RaceTrackAdjacentDropLayerFactory.DROP_LAYER_FACTORY);
    }
    

    pub fn getSize(self: *Self) i32 {
        return self.list.?.size();
    }
    

    pub fn getRandomInstance(self: *Self) ?*LayerInterfaceFactoryInterface {
        return Inheritance.cast(?*LayerInterfaceFactoryInterface, Inheritance.call(self.basicArrayListUtil.?, "getRandom", .{ self.list }));
    }
    

    pub fn add(self: *Self, layerInterfaceFactoryInterface: ?*LayerInterfaceFactoryInterface) void {
        _ = Inheritance.call(self.list.?, "add", .{ layerInterfaceFactoryInterface });
    }
};


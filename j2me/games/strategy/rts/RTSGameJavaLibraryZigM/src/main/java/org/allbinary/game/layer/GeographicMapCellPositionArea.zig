// 
// AllBinary Open License Version 1 
// Copyright (c) 2003 AllBinary 
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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const LayerCoveringCellPositionsUtil = @import("org/allbinary/game/layer/geographic/map/LayerCoveringCellPositionsUtil.zig").LayerCoveringCellPositionsUtil;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const CellPositionsUtil = @import("org/allbinary/media/graphics/geography/map/CellPositionsUtil.zig").CellPositionsUtil;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const BasicArrayListS = @import("org/allbinary/util/BasicArrayListS.zig").BasicArrayListS;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const GeographicMapCellPositionAreaBase = @import("org/allbinary/game/layer/GeographicMapCellPositionAreaBase.zig").GeographicMapCellPositionAreaBase;

pub const GeographicMapCellPositionArea = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.GeographicMapCellPositionArea";
    base: GeographicMapCellPositionAreaBase = undefined,
    cellPositionsUtil: ?*CellPositionsUtil = null,
    layerCoveringCellPositionsUtil: ?*LayerCoveringCellPositionsUtil = null,
    reusableOccupyingGeographicMapCellPositionList: ?*BasicArrayList = null,
    reusableSurroundingGeographicMapCellPositionList: ?*BasicArrayList = null,
    surroundingCircularIndexUtil: ?*CircularIndexUtil = null,
    layerInterface: ?*AllBinaryLayer = null,
    LIST: ?*BasicArrayList = null,
    occupyingGeographicMapCellPositionList: ?*BasicArrayList = null,
    surroundingGeographicMapCellPositionList: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.cellPositionsUtil = Inheritance.upcast(?*CellPositionsUtil, CellPositionsUtil.getInstance());
        this.layerCoveringCellPositionsUtil = Inheritance.upcast(?*LayerCoveringCellPositionsUtil, LayerCoveringCellPositionsUtil.getInstance());
        this.reusableOccupyingGeographicMapCellPositionList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(BasicArrayListS, "create1", .{ 4 }));
        this.reusableSurroundingGeographicMapCellPositionList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(BasicArrayListS, "create1", .{ 12 }));
        this.surroundingCircularIndexUtil = Inheritance.upcast(?*CircularIndexUtil, Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ 0 }));
        
        this.LIST = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
        this.occupyingGeographicMapCellPositionList = this.LIST;
        this.surroundingGeographicMapCellPositionList = this.LIST;
    }
    

    pub fn create1(layerInterface: ?*AllBinaryLayer) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = GeographicMapCellPositionAreaBase.create().*;
        this.initFields();
        this.layerInterface = layerInterface;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn update(self: *Self, geographicMapInterface: ?*BasicGeographicMap) void {
        self.occupyingGeographicMapCellPositionList = Inheritance.upcast(@TypeOf(self.occupyingGeographicMapCellPositionList), Inheritance.call(self.layerCoveringCellPositionsUtil.?, "getAllXY", .{ geographicMapInterface, self.layerInterface, Inheritance.receiver(self.layerInterface.?, "getXP").getXP(), Inheritance.receiver(self.layerInterface.?, "getYP").getYP(), self.reusableOccupyingGeographicMapCellPositionList }));
        self.surroundingGeographicMapCellPositionList = Inheritance.upcast(@TypeOf(self.surroundingGeographicMapCellPositionList), Inheritance.call(self.cellPositionsUtil.?, "getAllSurrounding", .{ geographicMapInterface, self.occupyingGeographicMapCellPositionList, self.reusableSurroundingGeographicMapCellPositionList }));
        _ = Inheritance.call(self.surroundingCircularIndexUtil.?, "setSize", .{ self.surroundingGeographicMapCellPositionList.?.size() });
    }
    

    pub fn getOccupyingGeographicMapCellPositionList(self: *Self) ?*BasicArrayList {
        return self.occupyingGeographicMapCellPositionList;
    }
    

    pub fn getSurroundingGeographicMapCellPositionList(self: *Self) ?*BasicArrayList {
        return self.surroundingGeographicMapCellPositionList;
    }
    

    pub fn getNextSurroundingGeographicMapCellPosition(self: *Self) ?*GeographicMapCellPosition {
        const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.cast(?*GeographicMapCellPosition, Inheritance.call(self.surroundingGeographicMapCellPositionList.?, "get", .{ self.surroundingCircularIndexUtil.?.getIndex() }));
        _ = self.surroundingCircularIndexUtil.?.next();
        return geographicMapCellPosition;
    }
};


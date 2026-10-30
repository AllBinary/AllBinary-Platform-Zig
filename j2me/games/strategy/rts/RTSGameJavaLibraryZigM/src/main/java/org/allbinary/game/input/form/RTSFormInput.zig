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
// package org.allbinary.game.input.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GroupCommonFactory = @import("org/allbinary/game/identification/GroupCommonFactory.zig").GroupCommonFactory;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const RTSPlayerLayerInterface = @import("org/allbinary/game/layer/RTSPlayerLayerInterface.zig").RTSPlayerLayerInterface;
const LayerInterfaceFactoryImageItem = @import("org/allbinary/game/layer/item/LayerInterfaceFactoryImageItem.zig").LayerInterfaceFactoryImageItem;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const DirectionFactory = @import("org/allbinary/direction/DirectionFactory.zig").DirectionFactory;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const ScrollSelectionForm = @import("org/allbinary/graphics/form/ScrollSelectionForm.zig").ScrollSelectionForm;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const LayerInterfaceFactoryInterface = @import("org/allbinary/layer/LayerInterfaceFactoryInterface.zig").LayerInterfaceFactoryInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const SimpleGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory.zig").SimpleGeographicMapCellPositionFactory;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;

pub const RTSFormInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.form.RTSFormInput";
    logUtil: ?*LogUtil = null,
    groupCommonFactory: ?*GroupCommonFactory = null,
    hashtable: ?*ABHashtable = null,
    newUnconstructedRTSLayerInterfaceArray: []?*CollidableDestroyableDamageableLayer = &.{},
    groupInterfaceArray: []?*Group = &.{},
    selectedGeographicCellPosition: ?*GeographicMapCellPosition = null,
    stickyItemSelected: bool = false,
    selectedStickyItemIndex: i32 = 0,
    selectedStickyItem: ?*ABCustomItem = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.groupCommonFactory = Inheritance.upcast(?*GroupCommonFactory, GroupCommonFactory.getInstance());
        this.hashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        this.newUnconstructedRTSLayerInterfaceArray = array_N66398: { const array_N66398_array = allocator.alloc(?*CollidableDestroyableDamageableLayer, @intCast(7)) catch unreachable; @memset(array_N66398_array, null); break :array_N66398 array_N66398_array; };
        
        this.selectedGeographicCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        this.stickyItemSelected = false;
        this.selectedStickyItemIndex = 0;
        this.selectedStickyItem = Inheritance.upcast(?*ABCustomItem, ABCustomItem.getNullInstance());
    }
    

    pub fn create1(groupInterfaceArray: []?*Group) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const size: i32 = @as(i32, @intCast(this.newUnconstructedRTSLayerInterfaceArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            this.newUnconstructedRTSLayerInterfaceArray[@intCast(index)] = Inheritance.upcast(@TypeOf(this.newUnconstructedRTSLayerInterfaceArray[@intCast(index)]), CollidableDestroyableDamageableLayer.getNullInstance());
            }
        }
        this.groupInterfaceArray = groupInterfaceArray;
        _ = Inheritance.call(this.hashtable.?, "put", .{ DirectionFactory.getInstance().?.NAME, DirectionFactory.getInstance().?.DOWN });
        if (groupInterfaceArray != null) {
            _ = Inheritance.call(this.hashtable.?, "put", .{ this.groupCommonFactory.?.ID, groupInterfaceArray });
        }
        return this;
    }
    

    // throws Exception
    pub fn setAllBinaryGameLayerManager(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager) void {
        _ = allBinaryGameLayerManager;
        _ = self;
    }
    

    // throws Exception
    pub fn processAtPoint(self: *Self, associatedRtsLayer: ?*CollidableDestroyableDamageableLayer, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, point: ?*GPoint) void {
        const index: i32 = Inheritance.call(self, "getIndexAt", .{ rtsPlayerLayerInterface, point });
        if (index < 0) {
            return;
        }
        const scrollSelectionForm: ?*ScrollSelectionForm = Inheritance.upcast(?*ScrollSelectionForm, Inheritance.receiver(rtsPlayerLayerInterface.?, "getCurrentScrollSelectionForm").getCurrentScrollSelectionForm());
        const item: ?*ABCustomItem = Inheritance.upcast(?*ABCustomItem, Inheritance.call(scrollSelectionForm.?, "get", .{ index }));
        if (item == null) {
            return;
        }
        _ = Inheritance.call(self, "processGameSpecific", .{ associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index });
    }
    

    // throws Exception
    pub fn process(self: *Self, layerManager: ?*AllBinaryLayerManager) void {
        _ = Inheritance.call(self, "setAllBinaryGameLayerManager", .{ Inheritance.cast(?*AllBinaryGameLayerManager, layerManager) });
    }
    

    // throws Exception
    pub fn processGameSpecific(self: *Self, associatedRtsLayer: ?*CollidableDestroyableDamageableLayer, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, item: ?*ABCustomItem, index: i32) void {
        _ = associatedRtsLayer;
        _ = rtsPlayerLayerInterface;
        _ = layerManager;
        _ = item;
        _ = index;
        _ = self;
    }
    

    // throws Exception
    pub fn processSticky(self: *Self, associatedRtsLayer: ?*CollidableDestroyableDamageableLayer, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, point: ?*GPoint) bool {
        const index: i32 = Inheritance.call(self, "getIndexAt", .{ rtsPlayerLayerInterface, point });
        if (index < 0) {
            return false;
        }
        const scrollSelectionForm: ?*ScrollSelectionForm = Inheritance.upcast(?*ScrollSelectionForm, Inheritance.receiver(rtsPlayerLayerInterface.?, "getCurrentScrollSelectionForm").getCurrentScrollSelectionForm());
        const item: ?*ABCustomItem = Inheritance.upcast(?*ABCustomItem, Inheritance.call(scrollSelectionForm.?, "get", .{ index }));
        if (item == null) {
            return false;
        }
        _ = Inheritance.call(self, "processStickyGameSpecific", .{ associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index });
        return true;
    }
    

    // throws Exception
    pub fn processStickyGameSpecific(self: *Self, associatedRtsLayer: ?*CollidableDestroyableDamageableLayer, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, item: ?*ABCustomItem, index: i32) void {
        _ = associatedRtsLayer;
        _ = rtsPlayerLayerInterface;
        _ = layerManager;
        _ = item;
        _ = index;
        _ = self;
    }
    

    // throws Exception
    pub fn getItemAt(self: *Self, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, point: ?*GPoint) ?*ABCustomItem {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Point: ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ point }) }))), self, String.literal("getItemAt") });
        const scrollSelectionForm: ?*ScrollSelectionForm = Inheritance.upcast(?*ScrollSelectionForm, Inheritance.receiver(rtsPlayerLayerInterface.?, "getCurrentScrollSelectionForm").getCurrentScrollSelectionForm());
        return Inheritance.upcast(?*ABCustomItem, Inheritance.call(scrollSelectionForm.?, "getSelectedItem", .{ point }));
    }
    

    // throws Exception
    pub fn getIndexAt(self: *Self, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, point: ?*GPoint) i32 {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Point: ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ point }) }))), self, String.literal("getItemAt") });
        const scrollSelectionForm: ?*ScrollSelectionForm = Inheritance.upcast(?*ScrollSelectionForm, Inheritance.receiver(rtsPlayerLayerInterface.?, "getCurrentScrollSelectionForm").getCurrentScrollSelectionForm());
        return Inheritance.call(scrollSelectionForm.?, "getSelectedIndexForPoint", .{ point });
    }
    

    // throws Exception
    pub fn getInstance(self: *Self, layerManager: ?*AllBinaryLayerManager, aItem: ?*ABCustomItem, geographicMapCellPosition: ?*GeographicMapCellPosition) ?*CollidableDestroyableDamageableLayer {
        const item: ?*LayerInterfaceFactoryImageItem = Inheritance.cast(?*LayerInterfaceFactoryImageItem, aItem);
        const layerInterfaceFactoryInterface: ?*LayerInterfaceFactoryInterface = Inheritance.upcast(?*LayerInterfaceFactoryInterface, item.?.getLayerInterfaceFactoryInterface());
        const cellPoint: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(geographicMapCellPosition.?, "getPoint").getPoint());
        if (layerInterfaceFactoryInterface != null) {
            _ = Inheritance.call(self.hashtable.?, "put", .{ AllBinaryGameLayerManager.ID, layerManager });
            return Inheritance.cast(?*RTSLayer, Inheritance.call(layerInterfaceFactoryInterface.?, "getNextInstance", .{ self.getHashtable(), cellPoint.?.getX(), cellPoint.?.getY(), cellPoint.?.getZ() }));
        }
        return Inheritance.upcast(?*CollidableDestroyableDamageableLayer, CollidableDestroyableDamageableLayer.getNullInstance());
    }
    

    pub fn getSelectedGeographicCellPosition(self: *Self) ?*GeographicMapCellPosition {
        return self.selectedGeographicCellPosition;
    }
    

    pub fn setSelectedGeographicCellPosition(self: *Self, selectedGeographicCellPosition: ?*GeographicMapCellPosition) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Selected GeographicMapCellPosition: ") }).?, "append", .{ Object.toString(Object.of(selectedGeographicCellPosition)) }))), self, String.literal("setSelectedGeographicCellPosition") });
        self.selectedGeographicCellPosition = selectedGeographicCellPosition;
    }
    

    pub fn isStickyItemSelected(self: *Self) bool {
        return self.stickyItemSelected;
    }
    

    pub fn setStickyItemSelected(self: *Self, stickyItemSelected: bool) void {
        self.stickyItemSelected = stickyItemSelected;
    }
    

    pub fn getSelectedStickyItem(self: *Self) ?*ABCustomItem {
        return self.selectedStickyItem;
    }
    

    pub fn setSelectedStickyItem(self: *Self, selectedStickyItem: ?*ABCustomItem) void {
        self.selectedStickyItem = selectedStickyItem;
    }
    

    pub fn getSelectedStickyItemIndex(self: *Self) i32 {
        return self.selectedStickyItemIndex;
    }
    

    pub fn setSelectedStickyItemIndex(self: *Self, selectedStickyItemIndex: i32) void {
        self.selectedStickyItemIndex = selectedStickyItemIndex;
    }
    

    pub fn getHashtable(self: *Self) ?*ABHashtable {
        return self.hashtable;
    }
};


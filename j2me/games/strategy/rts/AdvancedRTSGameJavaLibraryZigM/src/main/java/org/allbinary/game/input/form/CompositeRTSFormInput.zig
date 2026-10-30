// 
// AllBinary Open License Version 1 
// Copyright (c) 2006 AllBinary 
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
const RTSPlayerLayerInterface = @import("org/allbinary/game/layer/RTSPlayerLayerInterface.zig").RTSPlayerLayerInterface;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const ScrollSelectionForm = @import("org/allbinary/graphics/form/ScrollSelectionForm.zig").ScrollSelectionForm;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCompositeInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface.zig").GeographicMapCompositeInterface;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const RTSFormInput = @import("org/allbinary/game/input/form/RTSFormInput.zig").RTSFormInput;
const UnitRTSFormInput = @import("org/allbinary/game/input/form/UnitRTSFormInput.zig").UnitRTSFormInput;
const WaypointRTSFormInput = @import("org/allbinary/game/input/form/WaypointRTSFormInput.zig").WaypointRTSFormInput;

pub const CompositeRTSFormInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.form.CompositeRTSFormInput";
    base: RTSFormInput = undefined,
    rtsFormInputArray: []?*RTSFormInput = &.{},
    itemIndex: []i32 = &.{},
    isPrimaryWaypointCreator: bool = false,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create3(groupInterface: []?*Group, isPrimaryWaypointCreator: bool, itemIndex: []i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RTSFormInput, "create1", .{ groupInterface }).*;
        this.initFields();
        this.itemIndex = itemIndex;
        this.isPrimaryWaypointCreator = isPrimaryWaypointCreator;
        this.rtsFormInputArray = Inheritance.upcast(@TypeOf(this.rtsFormInputArray), array_N66175: { const array_N66175_array = allocator.alloc(?*RTSFormInput, @intCast(2)) catch unreachable; @memset(array_N66175_array, null); break :array_N66175 array_N66175_array; });
        this.rtsFormInputArray[@intCast(0)] = Inheritance.upcast(@TypeOf(this.rtsFormInputArray[@intCast(0)]), Inheritance.callStatic(WaypointRTSFormInput, "create2", .{ Inheritance.fieldPointer(this, "groupInterfaceArray").*, isPrimaryWaypointCreator }));
        this.rtsFormInputArray[@intCast(1)] = Inheritance.upcast(@TypeOf(this.rtsFormInputArray[@intCast(1)]), Inheritance.callStatic(UnitRTSFormInput, "create1", .{ Inheritance.fieldPointer(this, "groupInterfaceArray").* }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn setAllBinaryGameLayerManager(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager) void {
        _ = Inheritance.call(&self.base, "setAllBinaryGameLayerManager", .{ allBinaryGameLayerManager });
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, allBinaryGameLayerManager);
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]); _ = geographicMapInterface;
        const size: i32 = @as(i32, @intCast(self.rtsFormInputArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(self.rtsFormInputArray[@intCast(index)].?, "setAllBinaryGameLayerManager", .{ allBinaryGameLayerManager });
            }
        }
    }
    

    // throws Exception
    pub fn processAtPoint(self: *Self, associatedRtsLayer: ?*CollidableDestroyableDamageableLayer, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, point: ?*GPoint) void {
        const scrollSelectionForm: ?*ScrollSelectionForm = Inheritance.upcast(?*ScrollSelectionForm, Inheritance.receiver(rtsPlayerLayerInterface.?, "getCurrentScrollSelectionForm").getCurrentScrollSelectionForm());
        const index: i32 = Inheritance.call(scrollSelectionForm.?, "getSelectedIndexForPoint", .{ point });
        if (self.isStickyItemSelected() and Object.same(associatedRtsLayer, CollidableDestroyableDamageableLayer.getNullInstance())) {
            if (self.getSelectedStickyItemIndex() <= self.itemIndex[@intCast(0)]) {
                _ = Inheritance.call(self.rtsFormInputArray[@intCast(0)].?, "processAtPoint", .{ associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point });
            }
        } else if (index > self.itemIndex[@intCast(0)]) {
            _ = Inheritance.call(self.rtsFormInputArray[@intCast(1)].?, "processAtPoint", .{ associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point });
        }
    }
    

    // throws Exception
    pub fn processGameSpecific(self: *Self, associatedRtsLayer: ?*CollidableDestroyableDamageableLayer, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, item: ?*ABCustomItem, index: i32) void {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.plus(String.plus(CommonLabels.getInstance().?.INDEX_LABEL + index, String.literal(" > ")), self.itemIndex[@intCast(0)]), self, commonStrings.?.PROCESS });
        if (self.isStickyItemSelected() and Object.same(associatedRtsLayer, CollidableDestroyableDamageableLayer.getNullInstance())) {
            if (self.getSelectedStickyItemIndex() <= self.itemIndex[@intCast(0)]) {
                _ = Inheritance.call(self.rtsFormInputArray[@intCast(0)].?, "processGameSpecific", .{ associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index });
            }
        } else if (index > self.itemIndex[@intCast(0)]) {
            _ = Inheritance.call(self.rtsFormInputArray[@intCast(1)].?, "processGameSpecific", .{ associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index });
        }
    }
    

    // throws Exception
    pub fn processSticky(self: *Self, associatedRtsLayer: ?*CollidableDestroyableDamageableLayer, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, point: ?*GPoint) bool {
        return Inheritance.call(self.rtsFormInputArray[@intCast(0)].?, "processSticky", .{ associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point });
    }
    

    // throws Exception
    pub fn processStickyGameSpecific(self: *Self, associatedRtsLayer: ?*CollidableDestroyableDamageableLayer, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, item: ?*ABCustomItem, index: i32) void {
        _ = Inheritance.call(self.rtsFormInputArray[@intCast(0)].?, "processStickyGameSpecific", .{ associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index });
    }
    

    pub fn getSelectedStickyItemIndex(self: *Self) i32 {
        return self.rtsFormInputArray[@intCast(0)].?.getSelectedStickyItemIndex();
    }
    

    pub fn isStickyItemSelected(self: *Self) bool {
        return self.rtsFormInputArray[@intCast(0)].?.isStickyItemSelected();
    }
    

    pub fn setStickyItemSelected(self: *Self, stickyItemSelected: bool) void {
        _ = Inheritance.call(self.rtsFormInputArray[@intCast(0)].?, "setStickyItemSelected", .{ stickyItemSelected });
    }
    

    pub fn getSelectedStickyItem(self: *Self) ?*ABCustomItem {
        return Inheritance.upcast(?*ABCustomItem, self.rtsFormInputArray[@intCast(0)].?.getSelectedStickyItem());
    }
    

    pub fn setSelectedStickyItem(self: *Self, selectedStickyItem: ?*ABCustomItem) void {
        _ = Inheritance.call(self.rtsFormInputArray[@intCast(0)].?, "setSelectedStickyItem", .{ selectedStickyItem });
    }
};


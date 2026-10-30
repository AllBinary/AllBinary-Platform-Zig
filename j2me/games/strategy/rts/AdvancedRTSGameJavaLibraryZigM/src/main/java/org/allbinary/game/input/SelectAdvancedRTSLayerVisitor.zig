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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AssignWaypointsUtil = @import("org/allbinary/game/input/form/AssignWaypointsUtil.zig").AssignWaypointsUtil;
const AdvancedRTSGameLayer = @import("org/allbinary/game/layer/AdvancedRTSGameLayer.zig").AdvancedRTSGameLayer;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const BuildingLayer = @import("org/allbinary/game/layer/building/BuildingLayer.zig").BuildingLayer;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const UnitLayer = @import("org/allbinary/game/layer/unit/UnitLayer.zig").UnitLayer;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Visitor = @import("org/allbinary/logic/util/visitor/Visitor.zig").Visitor;
const SelectedRTSLayersPlayerGameInput = @import("org/allbinary/game/input/SelectedRTSLayersPlayerGameInput.zig").SelectedRTSLayersPlayerGameInput;

pub const SelectAdvancedRTSLayerVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.SelectAdvancedRTSLayerVisitor";
    base: Visitor = undefined,
    selectedRTSLayersPlayerGameInput: ?*SelectedRTSLayersPlayerGameInput = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(selectedRTSLayersPlayerGameInput: ?*SelectedRTSLayersPlayerGameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Visitor.create().*;
        this.initFields();
        this.selectedRTSLayersPlayerGameInput = selectedRTSLayersPlayerGameInput;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn visit(self: *Self, anyType: ?Object) ?Object {
        const selectedLayer: ?*CollidableDestroyableDamageableLayer = Inheritance.cast(?*CollidableDestroyableDamageableLayer, anyType);
        if (!Object.same(selectedLayer, CollidableDestroyableDamageableLayer.getNullInstance()) and Object.same(Inheritance.receiver(selectedLayer.?, "getType").getType(), BuildingLayer.getStaticType())) {
            const rtsGameLayer: ?*AdvancedRTSGameLayer = Inheritance.cast(?*AdvancedRTSGameLayer, selectedLayer);
            const assignWaypointsUtil: ?*AssignWaypointsUtil = Inheritance.upcast(?*AssignWaypointsUtil, AssignWaypointsUtil.getInstance());
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self.selectedRTSLayersPlayerGameInput.?, "getSelectedBasicArrayList").getSelectedBasicArrayList());
            var currentRTSLayer: ?*RTSLayer = null;
            var unitLayer: ?*UnitLayer = null;
            {
                var index: i32 = list.?.size() - 1;
                while (index >= 0) : (index -= 1) {
                currentRTSLayer = Inheritance.cast(?*RTSLayer, Inheritance.call(list.?, "get", .{ index }));
                if (Object.same(Inheritance.receiver(currentRTSLayer.?, "getType").getType(), UnitLayer.getStaticType())) {
                    unitLayer = Inheritance.cast(?*UnitLayer, currentRTSLayer);
                    _ = Inheritance.call(unitLayer.?, "setParentLayer", .{ rtsGameLayer });
                    _ = Inheritance.call(assignWaypointsUtil.?, "set", .{ unitLayer, rtsGameLayer });
                }
                }
            }
        }
        return Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }
};


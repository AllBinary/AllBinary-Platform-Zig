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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Enumeration = @import("java/util/Enumeration.zig").Enumeration;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const LayerInterfaceFactory = @import("org/allbinary/layer/LayerInterfaceFactory.zig").LayerInterfaceFactory;
const LayerInterfaceVisitor = @import("org/allbinary/layer/LayerInterfaceVisitor.zig").LayerInterfaceVisitor;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const EnumerationUtil = @import("org/allbinary/util/EnumerationUtil.zig").EnumerationUtil;
const LayerPlacementInterface = @import("org/allbinary/game/layer/LayerPlacementInterface.zig").LayerPlacementInterface;
const LayerPlacementType = @import("org/allbinary/game/layer/LayerPlacementType.zig").LayerPlacementType;
const LayerPlacementTypeFactory = @import("org/allbinary/game/layer/LayerPlacementTypeFactory.zig").LayerPlacementTypeFactory;

pub const LayerPlacer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.LayerPlacer";
    enumerationUtil: ?*EnumerationUtil = null,
    layerInterfaceVisitor: ?*LayerInterfaceVisitor = null,
    dimension: ?*GPoint = null,

    fn initFields(this: *Self) void {
        this.enumerationUtil = Inheritance.upcast(?*EnumerationUtil, EnumerationUtil.getInstance());
        
        
    }
    

    pub fn create2(layerInterfaceVisitor: ?*LayerInterfaceVisitor, dimension: ?*GPoint) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.layerInterfaceVisitor = layerInterfaceVisitor;
        this.dimension = dimension;
        return this;
    }
    

    // throws Exception
    pub fn processList(self: *Self, list: ?*BasicArrayList) void {
        const size: i32 = list.?.size();
        var layerPlacementInterface: ?*LayerPlacementInterface = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            layerPlacementInterface = Inheritance.cast(?*LayerPlacementInterface, list.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(self, "process", .{ layerPlacementInterface });
            }
        }
    }
    

    // throws Exception
    pub fn process(self: *Self, layerPlacementInterface: ?*LayerPlacementInterface) void {
        const relativePoint: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.call(self, "getPoint", .{ layerPlacementInterface }));
        const layerInterfaceFactory: ?*LayerInterfaceFactory = Inheritance.upcast(?*LayerInterfaceFactory, LayerInterfaceFactory.getInstance());
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, layerPlacementInterface.?.getInstance());
        const enumeration: ?*Enumeration = Inheritance.upcast(?*Enumeration, Inheritance.receiver(hashtable.?, "keys").keys());
        var point: ?*GPoint = null;
        var layerHashtable: ?*ABHashtable = null;
        var x: i32 = 0;
        var y: i32 = 0;
        var z: i32 = 0;
        var layerInterface: ?*AllBinaryLayer = null;
        while (Inheritance.call(self.enumerationUtil.?, "hasMoreElements", .{ enumeration })) {
            point = Inheritance.cast(?*GPoint, Inheritance.call(self.enumerationUtil.?, "nextElement", .{ enumeration }));
            layerHashtable = Inheritance.cast(?*ABHashtable, Inheritance.call(hashtable.?, "get", .{ point }));
            x = point.?.getX() + relativePoint.?.getX();
            y = point.?.getY() + relativePoint.?.getY();
            z = point.?.getZ() + relativePoint.?.getZ();
            layerInterface = Inheritance.upcast(@TypeOf(layerInterface), Inheritance.call(layerInterfaceFactory.?, "getNexInstance", .{ layerHashtable, x, y, z }));
            _ = Inheritance.call(self.layerInterfaceVisitor.?, "visit", .{ layerInterface });
        }
    }
    

    // throws Exception
    pub fn getPoint(self: *Self, layerPlacementInterface: ?*LayerPlacementInterface) ?*GPoint {
        const pointFactory: ?*PointFactory = Inheritance.upcast(?*PointFactory, PointFactory.getInstance());
        const layerPlacementType: ?*LayerPlacementType = Inheritance.upcast(?*LayerPlacementType, layerPlacementInterface.?.getLayerType());
        if (Object.same(layerPlacementType, LayerPlacementTypeFactory.getInstance().?.MAP)) {
            const width: i32 = layerPlacementInterface.?.getWidth();
            const height: i32 = layerPlacementInterface.?.getHeight();
            const x: i32 = ((divide_N67840: { const left_N67840 = (self.dimension.?.getX() - width); const right_N67840 = 2; break :divide_N67840 if (comptime @typeInfo(@TypeOf(left_N67840)) == .int or @TypeOf(left_N67840) == comptime_int) @divTrunc(left_N67840, right_N67840) else left_N67840 / right_N67840; }));
            const y: i32 = ((divide_N67919: { const left_N67919 = (self.dimension.?.getY() - height); const right_N67919 = 2; break :divide_N67919 if (comptime @typeInfo(@TypeOf(left_N67919)) == .int or @TypeOf(left_N67919) == comptime_int) @divTrunc(left_N67919, right_N67919) else left_N67919 / right_N67919; }));
            return Inheritance.upcast(?*GPoint, Inheritance.call(pointFactory.?, "createXY", .{ x, y }));
        } else if (Object.same(layerPlacementType, LayerPlacementTypeFactory.getInstance().?.UP)) {
            const width: i32 = layerPlacementInterface.?.getWidth();
            const height: i32 = layerPlacementInterface.?.getHeight();
            const x: i32 = ((divide_N67579: { const left_N67579 = (self.dimension.?.getX() - width); const right_N67579 = 2; break :divide_N67579 if (comptime @typeInfo(@TypeOf(left_N67579)) == .int or @TypeOf(left_N67579) == comptime_int) @divTrunc(left_N67579, right_N67579) else left_N67579 / right_N67579; }));
            const y: i32 = -height;
            return Inheritance.upcast(?*GPoint, Inheritance.call(pointFactory.?, "createXY", .{ x, y }));
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("PlacementType Not Recognized"); break :exception error.Exception; }});
        }
    }
};


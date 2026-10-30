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
const GroupCommonFactory = @import("org/allbinary/game/identification/GroupCommonFactory.zig").GroupCommonFactory;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const DirectionFactory = @import("org/allbinary/direction/DirectionFactory.zig").DirectionFactory;
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const WeaponProperties = @import("org/allbinary/game/combat/weapon/WeaponProperties.zig").WeaponProperties;
const BasicGroupFactory = @import("org/allbinary/game/identification/BasicGroupFactory.zig").BasicGroupFactory;
const PartInterface = @import("org/allbinary/game/part/PartInterface.zig").PartInterface;
const BasicWeaponPart = @import("org/allbinary/game/part/weapon/BasicWeaponPart.zig").BasicWeaponPart;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const BaseRaceTrackGeographicMap = @import("org/allbinary/media/graphics/geography/map/racetrack/BaseRaceTrackGeographicMap.zig").BaseRaceTrackGeographicMap;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const FakeLayerManager = @import("org/allbinary/game/layer/FakeLayerManager.zig").FakeLayerManager;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const RTSLayerUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.RTSLayerUtil";
    logUtil: ?*LogUtil = null,
    groupCommonFactory: ?*GroupCommonFactory = null,
    MAX_RELOAD_TIME: i64 = 0,
    var instance: ?*RTSLayerUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = RTSLayerUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.groupCommonFactory = Inheritance.upcast(?*GroupCommonFactory, GroupCommonFactory.getInstance());
        this.MAX_RELOAD_TIME = @divTrunc(@as(i64, @intCast(@as(i32, std.math.maxInt(i32)))), 100000);
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*RTSLayerUtil {
        return Inheritance.upcast(?*RTSLayerUtil, RTSLayerUtil.instance);
    }
    

    pub fn createWeaponProperties(self: *Self, weaponProperties: ?*WeaponProperties, currentLevel: i32, lastLevel: i32) ?*WeaponProperties {
        _ = self;
        var reloadTime: i64 = Inheritance.receiver(weaponProperties.?, "getReloadTime").getReloadTime();
        if (lastLevel > currentLevel) {
            reloadTime = reloadTime + 50;
        } else if (lastLevel < currentLevel) {
            reloadTime = reloadTime - 50;
        }
        const newWeaponProperties: ?*WeaponProperties = Inheritance.callStatic(WeaponProperties, "create5", .{ reloadTime, Inheritance.receiver(weaponProperties.?, "getTargetingTime").getTargetingTime(), Inheritance.receiverOf(Inheritance.receiver(weaponProperties.?, "getSpeed").getSpeed().?, "getUnscaled").getUnscaled(), (divide_N66488: { const left_N66488 = Inheritance.receiver(weaponProperties.?, "getDamage").getDamage(); const right_N66488 = lastLevel; break :divide_N66488 if (comptime @typeInfo(@TypeOf(left_N66488)) == .int or @TypeOf(left_N66488) == comptime_int) @divTrunc(left_N66488, right_N66488) else left_N66488 / right_N66488; }) * currentLevel, Inheritance.receiver(weaponProperties.?, "getDissipation").getDissipation() });
        return newWeaponProperties;
    }
    

    pub fn downgrade(self: *Self, rtsLayer: ?*RTSLayer) void {
        _ = Inheritance.call(rtsLayer.?, "setLevel", .{ Inheritance.receiver(rtsLayer.?, "getLevel").getLevel() - 1 });
        const partInterfaceArray: []?*PartInterface = Inheritance.receiver(rtsLayer.?, "getPartInterfaceArray").getPartInterfaceArray();
        const size: i32 = @as(i32, @intCast(partInterfaceArray.len));
        var partInterface: ?*BasicWeaponPart = null;
        {
            var index: i32 = size;
            while (value_N67006: { index -= 1; break :value_N67006 index; } >= 0) {
            partInterface = Inheritance.cast(?*BasicWeaponPart, partInterfaceArray[@intCast(index)]);
            _ = Inheritance.call(partInterface.?, "setWeaponProperties", .{ Inheritance.call(self, "createWeaponProperties", .{ partInterface.?.getWeaponProperties(), Inheritance.receiver(rtsLayer.?, "getLevel").getLevel(), Inheritance.receiver(rtsLayer.?, "getLevel").getLevel() + 1 }) });
            }
        }
        _ = Inheritance.receiver(rtsLayer.?, "select").select();
    }
    

    pub fn upgrade(self: *Self, rtsLayer: ?*RTSLayer) void {
        _ = Inheritance.call(rtsLayer.?, "setLevel", .{ Inheritance.receiver(rtsLayer.?, "getLevel").getLevel() + 1 });
        const partInterfaceArray: []?*PartInterface = Inheritance.receiver(rtsLayer.?, "getPartInterfaceArray").getPartInterfaceArray();
        const size: i32 = @as(i32, @intCast(partInterfaceArray.len));
        var partInterface: ?*BasicWeaponPart = null;
        {
            var index: i32 = size;
            while (value_N67460: { index -= 1; break :value_N67460 index; } >= 0) {
            partInterface = Inheritance.cast(?*BasicWeaponPart, partInterfaceArray[@intCast(index)]);
            _ = Inheritance.call(partInterface.?, "setWeaponProperties", .{ Inheritance.call(self, "createWeaponProperties", .{ partInterface.?.getWeaponProperties(), Inheritance.receiver(rtsLayer.?, "getLevel").getLevel(), Inheritance.receiver(rtsLayer.?, "getLevel").getLevel() - 1 }) });
            }
        }
        _ = Inheritance.receiver(rtsLayer.?, "select").select();
    }
    

    pub fn getCostExponential(self: *Self, cost: i64) i64 {
        _ = self;
        return (@divTrunc((cost * cost * cost), (cost * 1000)));
    }
    

    pub fn getWeaponPropertiesCost(self: *Self, weaponProperties: ?*WeaponProperties) i32 {
        var cost: i64 = (Inheritance.receiver(weaponProperties.?, "getDamage").getDamage() + Inheritance.receiver(weaponProperties.?, "getRange").getRange() + ((@divTrunc(self.MAX_RELOAD_TIME, Inheritance.receiver(weaponProperties.?, "getReloadTime").getReloadTime())) >> @intCast(1)));
        cost = Inheritance.call(self, "getCostExponential", .{ cost });
        return @as(i32, @intCast(cost));
    }
    

    pub fn getCost(self: *Self, rtsLayer: ?*RTSLayer) i32 {
        var total: i32 = 0;
        const partInterfaceArray: []?*PartInterface = Inheritance.receiver(rtsLayer.?, "getPartInterfaceArray").getPartInterfaceArray();
        const size: i32 = @as(i32, @intCast(partInterfaceArray.len));
        var partInterface: ?*BasicWeaponPart = null;
        var weaponProperties: ?*WeaponProperties = null;
        {
            var index: i32 = size - 1;
            while (index >= 0) : (index -= 1) {
            partInterface = Inheritance.cast(?*BasicWeaponPart, partInterfaceArray[@intCast(index)]);
            weaponProperties = Inheritance.upcast(@TypeOf(weaponProperties), partInterface.?.getWeaponProperties());
            total += Inheritance.call(self, "getWeaponPropertiesCost", .{ weaponProperties });
            }
        }
        return total;
    }
    

    pub fn getDowngradeCost(self: *Self, rtsLayer: ?*RTSLayer) i32 {
        const partInterfaceArray: []?*PartInterface = Inheritance.receiver(rtsLayer.?, "getPartInterfaceArray").getPartInterfaceArray();
        const size: i32 = @as(i32, @intCast(partInterfaceArray.len));
        var downgradeCost: i32 = 0;
        var partInterface: ?*BasicWeaponPart = null;
        var weaponProperties: ?*WeaponProperties = null;
        var downgradeWeaponCost: i32 = 0;
        var currentWeaponCost: i32 = 0;
        {
            var index: i32 = size - 1;
            while (index >= 0) : (index -= 1) {
            partInterface = Inheritance.cast(?*BasicWeaponPart, partInterfaceArray[@intCast(index)]);
            weaponProperties = Inheritance.upcast(@TypeOf(weaponProperties), partInterface.?.getWeaponProperties());
            downgradeWeaponCost = Inheritance.call(self, "getWeaponPropertiesCost", .{ Inheritance.call(self, "createWeaponProperties", .{ weaponProperties, Inheritance.receiver(rtsLayer.?, "getLevel").getLevel() - 1, Inheritance.receiver(rtsLayer.?, "getLevel").getLevel() }) });
            currentWeaponCost = Inheritance.call(self, "getWeaponPropertiesCost", .{ weaponProperties });
            downgradeCost += (currentWeaponCost - downgradeWeaponCost);
            }
        }
        downgradeCost = @divTrunc(downgradeCost * 9, 10);
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Total Cost: ") }).?, "appendint", .{ downgradeCost }))), self, String.literal("getDowngradeCost") });
        return downgradeCost;
    }
    

    pub fn getUpgradeCost(self: *Self, rtsLayer: ?*RTSLayer) i32 {
        var upgradeCost: i32 = 0;
        const partInterfaceArray: []?*PartInterface = Inheritance.receiver(rtsLayer.?, "getPartInterfaceArray").getPartInterfaceArray();
        const size: i32 = @as(i32, @intCast(partInterfaceArray.len));
        var partInterface: ?*BasicWeaponPart = null;
        var weaponProperties: ?*WeaponProperties = null;
        var upgradedWeaponCost: i32 = 0;
        var currentWeaponCost: i32 = 0;
        {
            var index: i32 = size - 1;
            while (index >= 0) : (index -= 1) {
            partInterface = Inheritance.cast(?*BasicWeaponPart, partInterfaceArray[@intCast(index)]);
            weaponProperties = Inheritance.upcast(@TypeOf(weaponProperties), partInterface.?.getWeaponProperties());
            upgradedWeaponCost = Inheritance.call(self, "getWeaponPropertiesCost", .{ Inheritance.call(self, "createWeaponProperties", .{ weaponProperties, Inheritance.receiver(rtsLayer.?, "getLevel").getLevel() + 1, Inheritance.receiver(rtsLayer.?, "getLevel").getLevel() }) });
            currentWeaponCost = Inheritance.call(self, "getWeaponPropertiesCost", .{ weaponProperties });
            upgradeCost += (upgradedWeaponCost - currentWeaponCost);
            }
        }
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Total Cost: ") }).?, "appendint", .{ upgradeCost }))), self, String.literal("getUpgradeCost") });
        return upgradeCost;
    }
    

    // throws Exception
    pub fn destroyAndClear(self: *Self, list: ?*BasicArrayList) void {
        _ = self;
        var rtsLayer: ?*RTSLayer = null;
        {
            var index: i32 = list.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            rtsLayer = Inheritance.cast(?*RTSLayer, Inheritance.call(list.?, "get", .{ index }));
            _ = Inheritance.call(rtsLayer.?, "setDestroyed", .{ true });
            }
        }
        _ = list.?.clear();
    }
    

    pub fn createFakeRTSLayerHashtable(self: *Self, baseRaceTrackGeographicMap: ?*BaseRaceTrackGeographicMap) ?*ABHashtable {
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        const layerManager: ?*FakeLayerManager = Inheritance.callStatic(FakeLayerManager, "create1", .{ GameInfo.NONE });
        _ = Inheritance.call(layerManager.?, "setGeographicMapInterface", .{ @constCast(&[_]?*BasicGeographicMap{ baseRaceTrackGeographicMap })[0..] });
        _ = Inheritance.call(hashtable.?, "put", .{ AllBinaryGameLayerManager.ID, layerManager });
        _ = Inheritance.call(hashtable.?, "put", .{ DirectionFactory.getInstance().?.NAME, DirectionFactory.getInstance().?.LEFT });
        _ = Inheritance.call(hashtable.?, "put", .{ self.groupCommonFactory.?.ID, BasicGroupFactory.getInstance().?.NONE_ARRAY });
        return hashtable;
    }
};


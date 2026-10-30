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
const HealthInterfaceCompositeInterface = @import("org/allbinary/game/health/HealthInterfaceCompositeInterface.zig").HealthInterfaceCompositeInterface;
const CollidableCompositeLayer = @import("org/allbinary/game/layer/CollidableCompositeLayer.zig").CollidableCompositeLayer;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const CountedLayerInterfaceFactoryPart = @import("org/allbinary/game/part/CountedLayerInterfaceFactoryPart.zig").CountedLayerInterfaceFactoryPart;
const PartInterface = @import("org/allbinary/game/part/PartInterface.zig").PartInterface;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const CountedPickedUpLayerInterfaceFactory = @import("org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.zig").CountedPickedUpLayerInterfaceFactory;
const CountedPickedUpLayerInterfaceFactoryInterface = @import("org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryInterface.zig").CountedPickedUpLayerInterfaceFactoryInterface;
const PickedUpLayerInterface = @import("org/allbinary/game/layer/pickup/PickedUpLayerInterface.zig").PickedUpLayerInterface;
const PickedUpLayerInterfaceFactoryInterface = @import("org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.zig").PickedUpLayerInterfaceFactoryInterface;
const PickedUpLayerType = @import("org/allbinary/game/layer/pickup/PickedUpLayerType.zig").PickedUpLayerType;
const PickedUpLayerTypeFactory = @import("org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.zig").PickedUpLayerTypeFactory;
const PickupBehaviorInterface = @import("org/allbinary/game/layer/pickup/PickupBehaviorInterface.zig").PickupBehaviorInterface;
const PickupProcessorInterface = @import("org/allbinary/game/layer/pickup/PickupProcessorInterface.zig").PickupProcessorInterface;

pub const PickupBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.pickup.PickupBehavior";
    pub const java_interfaces = .{ PickupBehaviorInterface };
    logUtil: ?*LogUtil = null,
    countedIndex: i32 = 0,
    ownerLayerInterface: ?*CollidableCompositeLayer = null,
    // Implements PickupBehaviorInterface
    pub var NULL_PICKUP_BEHAVIOR: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_PICKUP_BEHAVIOR = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
    }
    

    pub fn getNullInstance() ?*PickupBehavior {
        if (Object.same(PickupBehavior.NULL_PICKUP_BEHAVIOR, NullUtil.getInstance().?.NULL_OBJECT)) {
            PickupBehavior.NULL_PICKUP_BEHAVIOR = Inheritance.upcast(@TypeOf(PickupBehavior.NULL_PICKUP_BEHAVIOR), Inheritance.callStatic(PickupBehavior, "create2", .{ CollidableCompositeLayer.getNullInstance(), 0 }));
        }
        return Inheritance.cast(?*PickupBehavior, PickupBehavior.NULL_PICKUP_BEHAVIOR);
    }
    

    pub fn create2(ownerLayerInterface: ?*CollidableCompositeLayer, countedIndex: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.ownerLayerInterface = ownerLayerInterface;
        this.countedIndex = countedIndex;
        return this;
    }
    

    pub fn doPickup(self: *Self, pickupProcessorInterface: ?*PickupProcessorInterface) void {
        { // try
            const healthInterfaceCompositeInterface: ?*HealthInterfaceCompositeInterface = Inheritance.cast(?*HealthInterfaceCompositeInterface, self.ownerLayerInterface);
            if (Inheritance.receiverOf(healthInterfaceCompositeInterface.?.getHealthInterface().?, "isAlive").isAlive()) {
                _ = Inheritance.call(pickupProcessorInterface.?, "process", .{ self.ownerLayerInterface });
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("doPickup"), e });
    }
    

    pub fn doPickupLayer(self: *Self, pickupLayerInterface: ?*PickedUpLayerInterface) void {
        { // try
            const pickedUpLayerInterfaceFactoryInterface: ?*PickedUpLayerInterfaceFactoryInterface = Inheritance.upcast(?*PickedUpLayerInterfaceFactoryInterface, Inheritance.receiver(pickupLayerInterface.?, "getPickedUpLayerInterfaceFactoryInterface").getPickedUpLayerInterfaceFactoryInterface());
            const pickedUpLayerType: ?*PickedUpLayerType = Inheritance.upcast(?*PickedUpLayerType, pickedUpLayerInterfaceFactoryInterface.?.getPickedUpLayerType());
            const pickedUpLayerTypeFactory: ?*PickedUpLayerTypeFactory = Inheritance.upcast(?*PickedUpLayerTypeFactory, PickedUpLayerTypeFactory.getInstance());
            if (Object.same(pickedUpLayerType, pickedUpLayerTypeFactory.?.BEAM) or Object.same(pickedUpLayerType, pickedUpLayerTypeFactory.?.MINE) or Object.same(pickedUpLayerType, pickedUpLayerTypeFactory.?.PROJECTILE) or Object.same(pickedUpLayerType, pickedUpLayerTypeFactory.?.ENHANCEMENT)) {
                _ = Inheritance.call(self, "add", .{ Inheritance.cast(?*CountedPickedUpLayerInterfaceFactoryInterface, pickedUpLayerInterfaceFactoryInterface) });
            } else if (Object.same(pickedUpLayerInterfaceFactoryInterface.?.getPickedUpLayerType(), pickedUpLayerTypeFactory.?.PART)) {
                const collidableDestroyableDamageableLayer: ?*CollidableDestroyableDamageableLayer = Inheritance.cast(?*CollidableDestroyableDamageableLayer, self.ownerLayerInterface);
                _ = Inheritance.call(collidableDestroyableDamageableLayer.?, "addPart", .{ pickedUpLayerInterfaceFactoryInterface });
            } else if (Object.same(pickedUpLayerType, pickedUpLayerTypeFactory.?.NONE)) {
            } else {
                const pickupProcessorInterface: ?*PickupProcessorInterface = Inheritance.cast(?*PickupProcessorInterface, pickedUpLayerInterfaceFactoryInterface);
                _ = Inheritance.call(self, "doPickup", .{ pickupProcessorInterface });
            }
            _ = Inheritance.receiver(pickupLayerInterface.?, "setPickedUp").setPickedUp();
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ commonStrings.?.EXCEPTION, self, String.literal("doPickup"), e });
    }
    

    pub fn add(self: *Self, countedPickedUpLayerInterfaceFactoryInterface: ?*CountedPickedUpLayerInterfaceFactoryInterface) void {
        const partIndex: i32 = Inheritance.receiver(countedPickedUpLayerInterfaceFactoryInterface.?, "getId").getId() + self.countedIndex;
        _ = Inheritance.call(self, "addAt", .{ countedPickedUpLayerInterfaceFactoryInterface, partIndex });
    }
    

    pub fn addAt(self: *Self, countedPickedUpLayerInterfaceFactoryInterface: ?*CountedPickedUpLayerInterfaceFactoryInterface, partIndex: i32) void {
        const collidableDestroyableDamageableLayer: ?*CollidableDestroyableDamageableLayer = Inheritance.cast(?*CollidableDestroyableDamageableLayer, self.ownerLayerInterface);
        const countedLayerInterfaceFactory: ?*CountedLayerInterfaceFactoryPart = Inheritance.cast(?*CountedLayerInterfaceFactoryPart, Inheritance.receiver(collidableDestroyableDamageableLayer.?, "getPartInterfaceArray").getPartInterfaceArray()[@intCast(partIndex)]);
        _ = Inheritance.call(countedLayerInterfaceFactory.?, "setTotal", .{ countedLayerInterfaceFactory.?.getTotal() + Inheritance.receiver(countedPickedUpLayerInterfaceFactoryInterface.?, "getTotal").getTotal() });
    }
    

    pub fn getFirstAvailableCountedLayerInterfaceFactory(self: *Self, pickedUpLayerTypeArray: []?*PickedUpLayerType) ?*CountedLayerInterfaceFactoryPart {
        const collidableDestroyableDamageableLayer: ?*CollidableDestroyableDamageableLayer = Inheritance.cast(?*CollidableDestroyableDamageableLayer, self.ownerLayerInterface);
        const partInterfaceArray: []?*PartInterface = Inheritance.receiver(collidableDestroyableDamageableLayer.?, "getPartInterfaceArray").getPartInterfaceArray();
        const size: i32 = @as(i32, @intCast(partInterfaceArray.len));
        var nextCountedLayerInterfaceFactory: ?*CountedLayerInterfaceFactoryPart = null;
        var countedPickedUpLayerInterfaceFactory: ?*CountedPickedUpLayerInterfaceFactory = null;
        {
            var index: i32 = self.countedIndex;
            while (index < size) : (index += 1) {
            nextCountedLayerInterfaceFactory = Inheritance.cast(?*CountedLayerInterfaceFactoryPart, Inheritance.receiver(collidableDestroyableDamageableLayer.?, "getPartInterfaceArray").getPartInterfaceArray()[@intCast(index)]);
            countedPickedUpLayerInterfaceFactory = Inheritance.upcast(@TypeOf(countedPickedUpLayerInterfaceFactory), nextCountedLayerInterfaceFactory.?.getCountedPickedUpLayerInterfaceFactory());
            {
                var index2: i32 = @as(i32, @intCast(pickedUpLayerTypeArray.len));
                while (value_N68362: { index2 -= 1; break :value_N68362 index2; } >= 0) {
                if (Object.same(Inheritance.receiver(countedPickedUpLayerInterfaceFactory.?, "getPickedUpLayerType").getPickedUpLayerType(), pickedUpLayerTypeArray[@intCast(index2)])) {
                    if (nextCountedLayerInterfaceFactory.?.getTotal() > 0) {
                        return nextCountedLayerInterfaceFactory;
                    }
                }
                }
            }
            }
        }
        return Inheritance.upcast(?*CountedLayerInterfaceFactoryPart, CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY);
    }
    

    // throws Exception
    pub fn getCountedLayerInterfaceFactoryForSlot(self: *Self, slotIndex: i32) ?*CountedLayerInterfaceFactoryPart {
        var currentSlot: i32 = 0;
        const collidableDestroyableDamageableLayer: ?*CollidableDestroyableDamageableLayer = Inheritance.cast(?*CollidableDestroyableDamageableLayer, self.ownerLayerInterface);
        const partInterfaceArray: []?*PartInterface = Inheritance.receiver(collidableDestroyableDamageableLayer.?, "getPartInterfaceArray").getPartInterfaceArray();
        const size: i32 = @as(i32, @intCast(partInterfaceArray.len));
        var nextCountedLayerInterfaceFactory: ?*CountedLayerInterfaceFactoryPart = null;
        {
            var index: i32 = self.countedIndex;
            while (index < size) : (index += 1) {
            nextCountedLayerInterfaceFactory = Inheritance.cast(?*CountedLayerInterfaceFactoryPart, Inheritance.receiver(collidableDestroyableDamageableLayer.?, "getPartInterfaceArray").getPartInterfaceArray()[@intCast(index)]);
            if (nextCountedLayerInterfaceFactory.?.getTotal() > 0) {
                if (currentSlot == slotIndex) {
                    return nextCountedLayerInterfaceFactory;
                } else {
                    currentSlot += 1;
                }
            }
            }
        }
        return Inheritance.upcast(?*CountedLayerInterfaceFactoryPart, CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY);
    }
    

    pub fn getCountedIndex(self: *Self) i32 {
        return self.countedIndex;
    }
};


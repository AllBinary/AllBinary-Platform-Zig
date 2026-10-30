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
const PickedUpLayerInterface = @import("org/allbinary/game/layer/pickup/PickedUpLayerInterface.zig").PickedUpLayerInterface;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const CollidableInterfaceCompositeInterface = @import("org/allbinary/game/collision/CollidableInterfaceCompositeInterface.zig").CollidableInterfaceCompositeInterface;
const CollisionType = @import("org/allbinary/game/collision/CollisionType.zig").CollisionType;
const CollisionTypeFactory = @import("org/allbinary/game/collision/CollisionTypeFactory.zig").CollisionTypeFactory;
const CollidableDestroyableDamageableBehavior = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior.zig").CollidableDestroyableDamageableBehavior;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const CollidableCompositeLayer = @import("org/allbinary/game/layer/CollidableCompositeLayer.zig").CollidableCompositeLayer;
const VehicleFrictionProperties = @import("org/allbinary/game/layer/VehicleFrictionProperties.zig").VehicleFrictionProperties;
const VehicleProperties = @import("org/allbinary/game/layer/VehicleProperties.zig").VehicleProperties;
const VehiclePropertiesCompositeInterface = @import("org/allbinary/game/layer/VehiclePropertiesCompositeInterface.zig").VehiclePropertiesCompositeInterface;

pub const CollidableVehicleBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.CollidableVehicleBehavior";
    base: CollidableDestroyableDamageableBehavior = undefined,
    totalImpactVelocity: i64 = 0,
    halfImpactVelocityX: i64 = 0,
    halfImpactVelocityY: i64 = 0,

    fn initFields(this: *Self) void {
        this.totalImpactVelocity = 0;
        this.halfImpactVelocityX = 0;
        this.halfImpactVelocityY = 0;
    }
    

    pub fn create1(collidable: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CollidableDestroyableDamageableBehavior, "create1", .{ collidable }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn collide(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableCompositeLayer) void {
        const collisionTypeFactory: ?*CollisionTypeFactory = Inheritance.upcast(?*CollisionTypeFactory, CollisionTypeFactory.getInstance());
        const collisionType: ?*CollisionType = Inheritance.upcast(?*CollisionType, Inheritance.call(Inheritance.receiver(collidableInterfaceCompositeInterface.?, "getCollidableInferface").getCollidableInferface().?, "getCollisionTypeWith", .{ ownerLayer }));
        if (Object.same(collisionType, collisionTypeFactory.?.PICKUP)) {
            const collidableDestroyableDamageableLayer: ?*CollidableDestroyableDamageableLayer = Inheritance.upcast(?*CollidableDestroyableDamageableLayer, (Inheritance.cast(?*CollidableDestroyableDamageableLayer, ownerLayer)));
            _ = Inheritance.call(Inheritance.receiver(collidableDestroyableDamageableLayer.?, "getPickupBehavior").getPickupBehavior().?, "doPickupLayer", .{ Inheritance.cast(?*PickedUpLayerInterface, collidableInterfaceCompositeInterface) });
        } else if (Object.same(collisionType, collisionTypeFactory.?.COLLISION)) {
            _ = Inheritance.call(&self.base, "collide", .{ ownerLayer, collidableInterfaceCompositeInterface });
        } else {
            _ = Inheritance.call(self, "collideVehicle", .{ ownerLayer, Inheritance.cast(?*VehiclePropertiesCompositeInterface, collidableInterfaceCompositeInterface) });
        }
    }
    

    pub fn collideInterface(self: *Self, ownerLayer: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableInterfaceCompositeInterface) void {
        _ = ownerLayer;
        _ = collidableInterfaceCompositeInterface;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ String.literal("Don't Use Interface Version It Is Slower"), self });
    }
    

    pub fn collideVehicle(self: *Self, ownerLayer: ?*CollidableCompositeLayer, vehiclePropertiesCompositeInterface: ?*VehiclePropertiesCompositeInterface) void {
        const ownerVehicleLayerInterface: ?*VehiclePropertiesCompositeInterface = Inheritance.upcast(?*VehiclePropertiesCompositeInterface, (Inheritance.cast(?*VehiclePropertiesCompositeInterface, ownerLayer)));
        const ownerVehicleProperties: ?*VehicleProperties = Inheritance.upcast(?*VehicleProperties, ownerVehicleLayerInterface.?.getVehicleProperties());
        const vehicleProperties: ?*VehicleProperties = Inheritance.upcast(?*VehicleProperties, vehiclePropertiesCompositeInterface.?.getVehicleProperties());
        const impactVelocityX: i64 = Inheritance.receiverOf(Inheritance.receiverOf(ownerVehicleProperties.?.getVelocityProperties().?, "getVelocityXBasicDecimalP").getVelocityXBasicDecimalP().?, "getUnscaled").getUnscaled() - Inheritance.receiverOf(Inheritance.receiverOf(vehicleProperties.?.getVelocityProperties().?, "getVelocityXBasicDecimalP").getVelocityXBasicDecimalP().?, "getUnscaled").getUnscaled();
        const impactVelocityY: i64 = Inheritance.receiverOf(Inheritance.receiverOf(ownerVehicleProperties.?.getVelocityProperties().?, "getVelocityYBasicDecimalP").getVelocityYBasicDecimalP().?, "getUnscaled").getUnscaled() - Inheritance.receiverOf(Inheritance.receiverOf(vehicleProperties.?.getVelocityProperties().?, "getVelocityYBasicDecimalP").getVelocityYBasicDecimalP().?, "getUnscaled").getUnscaled();
        if (impactVelocityX != 0) {
            self.halfImpactVelocityX = (impactVelocityX >> @intCast(1));
            _ = Inheritance.call(Inheritance.receiverOf(ownerVehicleProperties.?.getVelocityProperties().?, "getVelocityXBasicDecimalP").getVelocityXBasicDecimalP().?, "addlong", .{ self.halfImpactVelocityX });
            _ = Inheritance.call(Inheritance.receiverOf(vehicleProperties.?.getVelocityProperties().?, "getVelocityXBasicDecimalP").getVelocityXBasicDecimalP().?, "addlong", .{ self.halfImpactVelocityX });
        } else {
        }
        if (impactVelocityY != 0) {
            self.halfImpactVelocityY = (impactVelocityY >> @intCast(1));
            _ = Inheritance.call(Inheritance.receiverOf(ownerVehicleProperties.?.getVelocityProperties().?, "getVelocityYBasicDecimalP").getVelocityYBasicDecimalP().?, "addlong", .{ self.halfImpactVelocityY });
            _ = Inheritance.call(Inheritance.receiverOf(vehicleProperties.?.getVelocityProperties().?, "getVelocityXBasicDecimalP").getVelocityXBasicDecimalP().?, "addlong", .{ self.halfImpactVelocityY });
        } else {
        }
        _ = Inheritance.call(self, "collideFriction", .{ ownerVehicleLayerInterface });
        _ = Inheritance.call(self, "collideFriction", .{ vehiclePropertiesCompositeInterface });
        self.totalImpactVelocity = impactVelocityX + impactVelocityY;
    }
    

    pub fn collideFriction(self: *Self, vehiclePropertiesCompositeInterface: ?*VehiclePropertiesCompositeInterface) void {
        _ = self;
        const vehicleFrictionProperties: ?*VehicleFrictionProperties = Inheritance.upcast(?*VehicleFrictionProperties, Inheritance.receiverOf(vehiclePropertiesCompositeInterface.?.getVehicleProperties().?, "getVehicleFrictionProperties").getVehicleFrictionProperties());
        _ = Inheritance.call(Inheritance.receiverOf(vehiclePropertiesCompositeInterface.?.getVehicleProperties().?, "getVehicleFrictionProperties").getVehicleFrictionProperties().?, "friction", .{ Inheritance.receiverOf(vehiclePropertiesCompositeInterface.?.getVehicleProperties().?, "getVelocityProperties").getVelocityProperties(), Inheritance.receiver(vehicleFrictionProperties.?, "getCrashFrictionNominator").getCrashFrictionNominator() });
    }
};


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
// package org.allbinary.game.combat.damage

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CollidableCompositeLayer = @import("org/allbinary/game/layer/CollidableCompositeLayer.zig").CollidableCompositeLayer;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const DamageableInterface = @import("org/allbinary/game/combat/damage/DamageableInterface.zig").DamageableInterface;

pub const DamageUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.combat.damage.DamageUtil";
    logUtil: ?*LogUtil = null,
    COLLIDE: ?*String = null,
    var instance: ?*DamageUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = DamageUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.COLLIDE = String.literal("collide");
    }
    

    pub fn getInstance() ?*DamageUtil {
        return Inheritance.upcast(?*DamageUtil, DamageUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self, damageableInterface: ?*DamageableInterface, damageableInterface2: ?*DamageableInterface) void {
        _ = self;
        _ = Inheritance.call(damageableInterface.?, "damage", .{ Inheritance.call(damageableInterface2.?, "getDamage", .{ 0 }), 0 });
    }
    

    // throws Exception
    pub fn debugDamage(self: *Self, collidableInterfaceCompositeInterface1: ?*CollidableCompositeLayer, collidableInterfaceCompositeInterface: ?*CollidableCompositeLayer) void {
        const collidableDestroyableDamageableLayer: ?*CollidableDestroyableDamageableLayer = Inheritance.cast(?*CollidableDestroyableDamageableLayer, collidableInterfaceCompositeInterface);
        const damage: i32 = Inheritance.call(collidableDestroyableDamageableLayer.?, "getDamage", .{ 0 });
        if (damage > 20000) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Collision ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(collidableInterfaceCompositeInterface1)) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" with: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(collidableInterfaceCompositeInterface)) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" damage: ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ damage });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), collidableInterfaceCompositeInterface1, self.COLLIDE });
        }
    }
};


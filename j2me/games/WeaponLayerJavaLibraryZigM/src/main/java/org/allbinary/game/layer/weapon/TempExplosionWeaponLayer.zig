// Generated Code Do Not Modify
// package org.allbinary.game.layer.weapon

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const WeaponProperties = @import("org/allbinary/game/combat/weapon/WeaponProperties.zig").WeaponProperties;
const RemoteInfo = @import("org/allbinary/game/multiplayer/layer/RemoteInfo.zig").RemoteInfo;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const Movement = @import("org/allbinary/physics/movement/Movement.zig").Movement;
const GameTickTimeDelayHelperFactory = @import("org/allbinary/time/GameTickTimeDelayHelperFactory.zig").GameTickTimeDelayHelperFactory;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const SimpleWeaponLayer = @import("org/allbinary/game/layer/weapon/SimpleWeaponLayer.zig").SimpleWeaponLayer;

pub const TempExplosionWeaponLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.weapon.TempExplosionWeaponLayer";
    base: SimpleWeaponLayer = undefined,
    weaponProperties: ?*WeaponProperties = null,
    timeDelayHelper: ?*TimeDelayHelper = null,

    fn initFields(this: *Self) void {
        this.weaponProperties = Inheritance.callStatic(WeaponProperties, "create5", .{ -1, -1, 0, 1000, @as(i16, @intCast(0)) });
        this.timeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 0 });
    }
    

    pub fn create6(name: ?*String, movement: ?*Movement, animationInterface: ?*Animation, rectangle: ?*Rectangle, viewPosition: ?*ViewPositionBase, timeDelay: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(SimpleWeaponLayer, "create8", .{ name, RemoteInfo.REMOTE_INFO, -1, movement, animationInterface, SimpleWeaponLayer.createDestroyed(), rectangle, viewPosition }).*;
        this.initFields();
        this.timeDelayHelper.?.delay = Inheritance.upcast(@TypeOf(this.timeDelayHelper.?.delay), timeDelay);
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processTick(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        if (Inheritance.call(self.timeDelayHelper.?, "isTime", .{ GameTickTimeDelayHelperFactory.getInstance().?.startTime })) {
            _ = Inheritance.call(Inheritance.receiver(self, "getCollidableInferface").getCollidableInferface().?, "collide", .{ self, self });
            Inheritance.fieldPointer(self, "totalDamage").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "totalDamage").*), Inheritance.receiver(self, "getInitDamage").getInitDamage() + 1);
        }
        _ = Inheritance.call(&self.base, "processTick", .{ allBinaryLayerManager });
    }
};


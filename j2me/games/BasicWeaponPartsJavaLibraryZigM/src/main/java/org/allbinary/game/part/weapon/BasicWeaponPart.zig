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
// package org.allbinary.game.part.weapon

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const WeaponProperties = @import("org/allbinary/game/combat/weapon/WeaponProperties.zig").WeaponProperties;
const PartInterface = @import("org/allbinary/game/part/PartInterface.zig").PartInterface;
const NoScoreable = @import("org/allbinary/game/score/NoScoreable.zig").NoScoreable;
const ScoreableInterface = @import("org/allbinary/game/score/ScoreableInterface.zig").ScoreableInterface;
const RelativeRelationship = @import("org/allbinary/graphics/RelativeRelationship.zig").RelativeRelationship;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const SalvoInterface = @import("org/allbinary/game/part/weapon/SalvoInterface.zig").SalvoInterface;

pub const BasicWeaponPart = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.part.weapon.BasicWeaponPart";
    pub const java_interfaces = .{ SalvoInterface };
    animationInterface: ?*Animation = null,
    ownerLayerInterface: ?*AllBinaryLayer = null,
    weaponProperties: ?*WeaponProperties = null,
    scoreableInterface: ?*ScoreableInterface = null,
    relativeRelationship: ?*RelativeRelationship = null,
    // Implements PartInterface
    // Implements SalvoInterface
    pub var NULL_BASIC_WEAPON_PART: ?*BasicWeaponPart = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_BASIC_WEAPON_PART = Inheritance.upcast(?*BasicWeaponPart, Inheritance.callStatic(BasicWeaponPart, "createBasicWeaponPart", .{ Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }) }));
    }

    fn initFields(this: *Self) void {
        this.animationInterface = Inheritance.upcast(?*Animation, Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
        this.ownerLayerInterface = Inheritance.upcast(?*AllBinaryLayer, AllBinaryLayer.NULL_ALLBINARY_LAYER);
        this.weaponProperties = Inheritance.upcast(?*WeaponProperties, WeaponProperties.NULL_WEAPON_PROPERTIES);
        this.scoreableInterface = Inheritance.upcast(?*ScoreableInterface, NoScoreable.getInstance());
        this.relativeRelationship = Inheritance.upcast(?*RelativeRelationship, RelativeRelationship.NULL_RELATIVE_RELATIONSHIP);
    }
    

    pub fn createBasicWeaponPart(animationInterface: ?*Animation) ?*BasicWeaponPart {
        return Inheritance.callStatic(BasicWeaponPart, "create5", .{ animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP });
    }
    

    pub fn create5(animationInterface: ?*Animation, sourceLayerInterface: ?*AllBinaryLayer, weaponProperties: ?*WeaponProperties, scoreableInterface: ?*ScoreableInterface, relativeRelationship: ?*RelativeRelationship) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "init", .{ sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship });
        _ = Inheritance.call(this, "setAnimationInterface", .{ animationInterface });
        return this;
    }
    

    pub fn init(self: *Self, sourceLayerInterface: ?*AllBinaryLayer, weaponProperties: ?*WeaponProperties, scoreableInterface: ?*ScoreableInterface, relativeRelationship: ?*RelativeRelationship) void {
        _ = Inheritance.call(self, "setOwnerLayerInterface", .{ sourceLayerInterface });
        _ = Inheritance.call(self, "setWeaponProperties", .{ weaponProperties });
        self.scoreableInterface = scoreableInterface;
        self.relativeRelationship = relativeRelationship;
    }
    

    // throws Exception
    pub fn process(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, angle: i16, otherAngle: i16) void {
        _ = Inheritance.call(self, "processScore", .{ allbinaryLayerManager, angle, otherAngle, self.getWeaponProperties(), self.scoreableInterface });
    }
    

    // throws Exception
    pub fn processScore(self: *Self, allbinaryLayerManager: ?*AllBinaryLayerManager, angle: i16, otherAngle: i16, weaponProperties: ?*WeaponProperties, scoreableInterface: ?*ScoreableInterface) void {
        _ = allbinaryLayerManager;
        _ = angle;
        _ = otherAngle;
        _ = weaponProperties;
        _ = scoreableInterface;
        _ = self;
        std.debug.panic("{any}", .{exception: { _ = CommonStrings.getInstance().?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    pub fn getOwnerLayerInterface(self: *Self) ?*AllBinaryLayer {
        return self.ownerLayerInterface;
    }
    

    pub fn setOwnerLayerInterface(self: *Self, ownerLayerInterface: ?*AllBinaryLayer) void {
        self.ownerLayerInterface = ownerLayerInterface;
    }
    

    pub fn getAnimationInterface(self: *Self) ?*Animation {
        return self.animationInterface;
    }
    

    pub fn setAnimationInterface(self: *Self, animationInterface: ?*Animation) void {
        self.animationInterface = animationInterface;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        const viewPosition: ?*ViewPositionBase = Inheritance.upcast(?*ViewPositionBase, Inheritance.receiverOf(self.getOwnerLayerInterface().?, "getViewPosition").getViewPosition());
        const viewX: i32 = Inheritance.receiver(viewPosition.?, "getX").getX();
        const viewY: i32 = Inheritance.receiver(viewPosition.?, "getY").getY();
        _ = Inheritance.call(self.animationInterface.?, "paintXY", .{ graphics, viewX, viewY });
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    pub fn getWeaponProperties(self: *Self) ?*WeaponProperties {
        return self.weaponProperties;
    }
    

    pub fn setWeaponProperties(self: *Self, weaponProperties: ?*WeaponProperties) void {
        self.weaponProperties = weaponProperties;
    }
};


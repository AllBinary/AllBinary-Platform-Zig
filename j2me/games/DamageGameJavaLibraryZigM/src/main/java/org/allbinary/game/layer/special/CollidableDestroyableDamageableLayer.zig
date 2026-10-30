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
// package org.allbinary.game.layer.special

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const CollidableNeverCollideBehaviorFactory = @import("org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory.zig").CollidableNeverCollideBehaviorFactory;
const DamageableInterface = @import("org/allbinary/game/combat/damage/DamageableInterface.zig").DamageableInterface;
const DestroyableInterface = @import("org/allbinary/game/combat/destroy/DestroyableInterface.zig").DestroyableInterface;
const DestroyedEvent = @import("org/allbinary/game/combat/destroy/event/DestroyedEvent.zig").DestroyedEvent;
const BasicGroupFactory = @import("org/allbinary/game/identification/BasicGroupFactory.zig").BasicGroupFactory;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const CollidableCompositeLayer = @import("org/allbinary/game/layer/CollidableCompositeLayer.zig").CollidableCompositeLayer;
const PickedUpLayerInterfaceFactoryInterface = @import("org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.zig").PickedUpLayerInterfaceFactoryInterface;
const PickupBehavior = @import("org/allbinary/game/layer/pickup/PickupBehavior.zig").PickupBehavior;
const PickupCompositeInterface = @import("org/allbinary/game/layer/pickup/PickupCompositeInterface.zig").PickupCompositeInterface;
const PartInterface = @import("org/allbinary/game/part/PartInterface.zig").PartInterface;
const PartInterfaceUtil = @import("org/allbinary/game/part/PartInterfaceUtil.zig").PartInterfaceUtil;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const RectangleFactory = @import("org/allbinary/graphics/RectangleFactory.zig").RectangleFactory;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const PositionStrings = @import("org/allbinary/math/PositionStrings.zig").PositionStrings;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const SpecialGameInputInterface = @import("org/allbinary/game/layer/special/SpecialGameInputInterface.zig").SpecialGameInputInterface;

pub const CollidableDestroyableDamageableLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer";
    pub const java_interfaces = .{ SpecialGameInputInterface };
    base: CollidableCompositeLayer = undefined,
    groupInterface: []?*Group = &.{},
    readyForExplosion: bool = false,
    initWidth: i32 = 0,
    initHeight: i32 = 0,
    initX: i32 = 0,
    initY: i32 = 0,
    initZ: i32 = 0,
    partInterfaceArrayP: []?*PartInterface = &.{},
    pickupBehavior: ?*PickupBehavior = null,
    allBinaryGameLayerManagerP: ?*AllBinaryGameLayerManager = null,
    isDraggable: bool = false,
    isDragged: bool = false,
    isDropped: bool = false,
    // Implements DestroyableInterface
    // Implements DamageableInterface
    // Implements PickupCompositeInterface
    // Implements SpecialGameInputInterface
    var NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER: ?Object = undefined;
    const READYFOREXPLOSION: ?*String = String.literal("ReadyForExplosion: ");

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        
        this.readyForExplosion = false;
        
        
        this.initX = 0;
        this.initY = 0;
        this.initZ = 0;
        this.partInterfaceArrayP = PartInterfaceUtil.getZeroArray();
        
        this.allBinaryGameLayerManagerP = Inheritance.upcast(?*AllBinaryGameLayerManager, AllBinaryGameLayerManager.getNullInstance());
        this.isDraggable = false;
        this.isDragged = false;
        this.isDropped = false;
    }
    

    pub fn getNullInstance() ?*CollidableDestroyableDamageableLayer {
        if (Object.same(CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER, NullUtil.getInstance().?.NULL_OBJECT)) {
            CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = Inheritance.upcast(@TypeOf(CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER), Inheritance.callStatic(CollidableDestroyableDamageableLayer, "create4", .{ BasicGroupFactory.getInstance().?.NONE_ARRAY, StringUtil.getInstance().?.EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION }));
        }
        return Inheritance.cast(?*CollidableDestroyableDamageableLayer, CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER);
    }
    

    pub fn create4(groupInterface: []?*Group, name: ?*String, layerInfo: ?*Rectangle, viewPosition: ?*ViewPositionBase) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CollidableCompositeLayer, "create4", .{ name, layerInfo, viewPosition, CollidableNeverCollideBehaviorFactory.getInstance() }).*;
        this.initFields();
        this.initWidth = layerInfo.?.getWidth();
        this.initHeight = layerInfo.?.getHeight();
        this.groupInterface = groupInterface;
        this.pickupBehavior = Inheritance.upcast(@TypeOf(this.pickupBehavior), PickupBehavior.getNullInstance());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn initPosition(self: *Self) void {
        _ = Inheritance.call(self, "setPosition", .{ self.initX, self.initY, self.initZ });
    }
    

    // throws Exception
    pub fn initPositionXYZ(self: *Self, x: i32, y: i32, z: i32) void {
        self.initX = x;
        self.initY = y;
        self.initZ = z;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "paint", .{ graphics });
    }
    

    // throws Exception
    pub fn damage(self: *Self, damage_: i32, damageType: i32) void {
        _ = damage_;
        _ = damageType;
        std.debug.panic("{any}", .{exception: { _ = Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn getDamage(self: *Self, damageType: i32) i32 {
        _ = damageType;
        std.debug.panic("{any}", .{exception: { _ = Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn isDestroyed(self: *Self) bool {
        std.debug.panic("{any}", .{exception: { _ = Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    pub fn getGroupInterface(self: *Self) []?*Group {
        return self.groupInterface;
    }
    

    pub fn setGroupInterface(self: *Self, teamInterface: []?*Group) void {
        self.groupInterface = teamInterface;
    }
    

    // throws Exception
    pub fn setAllBinaryGameLayerManager(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager) void {
        self.allBinaryGameLayerManagerP = allBinaryGameLayerManager;
        if (self.allBinaryGameLayerManagerP == null) {
            std.debug.panic("{any}", .{error.RuntimeException});
        }
    }
    

    pub fn isReadyForExplosion(self: *Self) bool {
        return self.readyForExplosion;
    }
    

    pub fn setReadyForExplosion(self: *Self, isReadyForExplosion_: bool) void {
        self.readyForExplosion = isReadyForExplosion_;
    }
    

    pub fn getInitWidth(self: *Self) i32 {
        return self.initWidth;
    }
    

    pub fn getInitHeight(self: *Self) i32 {
        return self.initHeight;
    }
    

    pub fn getInitX(self: *Self) i32 {
        return self.initX;
    }
    

    pub fn getInitY(self: *Self) i32 {
        return self.initY;
    }
    

    // throws Exception
    pub fn up(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn down(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn right(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn left(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn strafeLeft(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn strafeRight(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn fire(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        _ = layerManager;
        _ = gameKeyEvent;
        _ = self;
    }
    

    // throws Exception
    pub fn special1(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        _ = layerManager;
        _ = gameKeyEvent;
        _ = self;
    }
    

    // throws Exception
    pub fn special2(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        _ = layerManager;
        _ = gameKeyEvent;
        _ = self;
    }
    

    // throws Exception
    pub fn special3(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        _ = layerManager;
        _ = gameKeyEvent;
        _ = self;
    }
    

    // throws Exception
    pub fn special4(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        _ = layerManager;
        _ = gameKeyEvent;
        _ = self;
    }
    

    // throws Exception
    pub fn special5(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        _ = layerManager;
        _ = gameKeyEvent;
        _ = self;
    }
    

    // throws Exception
    pub fn upAnalog(self: *Self, yAnalogValue: i32) void {
        _ = yAnalogValue;
        _ = self;
    }
    

    // throws Exception
    pub fn downAnalog(self: *Self, yAnalogValue: i32) void {
        _ = yAnalogValue;
        _ = self;
    }
    

    // throws Exception
    pub fn rightAnalog(self: *Self, xAnalogValue: i32) void {
        _ = xAnalogValue;
        _ = self;
    }
    

    // throws Exception
    pub fn leftAnalog(self: *Self, xAnalogValue: i32) void {
        _ = xAnalogValue;
        _ = self;
    }
    

    // throws Exception
    pub fn rightTrigger(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent, xAnalogValue: i32) void {
        _ = layerManager;
        _ = gameKeyEvent;
        _ = xAnalogValue;
        _ = self;
    }
    

    // throws Exception
    pub fn leftTrigger(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent, xAnalogValue: i32) void {
        _ = layerManager;
        _ = gameKeyEvent;
        _ = xAnalogValue;
        _ = self;
    }
    

    pub fn onDestroyed(self: *Self, destroyedEvent: ?*DestroyedEvent) void {
        _ = destroyedEvent;
        _ = self;
    }
    

    pub fn getPickupBehavior(self: *Self) ?*PickupBehavior {
        return self.pickupBehavior;
    }
    

    pub fn setPickupBehavior(self: *Self, pickupBehavior: ?*PickupBehavior) void {
        self.pickupBehavior = pickupBehavior;
    }
    

    // throws Exception
    pub fn addPart(self: *Self, pickedUpLayerInterfaceFactoryInterface: ?*PickedUpLayerInterfaceFactoryInterface) void {
        _ = pickedUpLayerInterfaceFactoryInterface;
        _ = self;
    }
    

    pub fn setPartInterfaceArray(self: *Self, partInterfaceArray: []?*PartInterface) void {
        self.partInterfaceArrayP = partInterfaceArray;
    }
    

    pub fn getPartInterfaceArray(self: *Self) []?*PartInterface {
        return self.partInterfaceArrayP;
    }
    

    pub fn toStringAppend(self: *Self, stringBuffer: ?*StringMaker) void {
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        const positionStrings: ?*PositionStrings = Inheritance.upcast(?*PositionStrings, PositionStrings.getInstance());
        _ = Inheritance.call(&self.base, "toStringAppend", .{ stringBuffer });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        const groupInterfaceArray: []?*Group = self.getGroupInterface();
        const size: i32 = @as(i32, @intCast(groupInterfaceArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(groupInterfaceArray[@intCast(index)])) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.COMMA });
            }
        }
        const pickupBehavior: ?*PickupBehavior = Inheritance.upcast(?*PickupBehavior, self.getPickupBehavior());
        if (pickupBehavior != null) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(pickupBehavior)) });
        }
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CollidableDestroyableDamageableLayer.READYFOREXPLOSION });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.readyForExplosion });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.INIT });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ positionStrings.?.X_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.initX });
        _ = Inheritance.call(stringBuffer.?, "append", .{ positionStrings.?.Y_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.initX });
        _ = Inheritance.call(stringBuffer.?, "append", .{ positionStrings.?.Z_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.initZ });
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(self, "toStringAppend", .{ stringBuffer });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};


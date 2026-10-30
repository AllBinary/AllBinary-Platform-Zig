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
const RTSGameStrings = @import("org/allbinary/game/layer/RTSGameStrings.zig").RTSGameStrings;
const RTSInterface = @import("org/allbinary/game/layer/RTSInterface.zig").RTSInterface;
const RTSPlayerLayerInterface = @import("org/allbinary/game/layer/RTSPlayerLayerInterface.zig").RTSPlayerLayerInterface;
const TechnologyRTSInterfaceImageItem = @import("org/allbinary/game/layer/TechnologyRTSInterfaceImageItem.zig").TechnologyRTSInterfaceImageItem;
const Capital = @import("org/allbinary/game/layer/capital/Capital.zig").Capital;
const TechEventHandler = @import("org/allbinary/game/rts/technology/event/TechEventHandler.zig").TechEventHandler;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const BuildingSound = @import("org/allbinary/media/audio/BuildingSound.zig").BuildingSound;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const Group = @import("org/allbinary/game/identification/Group.zig").Group;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const GameNotificationEvent = @import("org/allbinary/game/layer/hud/event/GameNotificationEvent.zig").GameNotificationEvent;
const GameNotificationEventHandler = @import("org/allbinary/game/layer/hud/event/GameNotificationEventHandler.zig").GameNotificationEventHandler;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const ErrorSound = @import("org/allbinary/media/audio/ErrorSound.zig").ErrorSound;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCompositeInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface.zig").GeographicMapCompositeInterface;
const RTSFormInput = @import("org/allbinary/game/input/form/RTSFormInput.zig").RTSFormInput;

pub const TechRTSFormInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.form.TechRTSFormInput";
    base: RTSFormInput = undefined,
    EVENT: ?*AllBinaryEventObject = null,
    noMoneyGameNotificationEvent: ?*GameNotificationEvent = null,

    fn initFields(this: *Self) void {
        this.EVENT = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ this });
        
    }
    

    pub fn create1(groupInterface: []?*Group) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RTSFormInput, "create1", .{ groupInterface }).*;
        this.initFields();
        const basicColorFactory: ?*BasicColorFactory = Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.getInstance());
        this.noMoneyGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.NO_MONEY, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 2 }), basicColorFactory.?.WHITE, BooleanFactory.getInstance().?.FALSE });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn setAllBinaryGameLayerManager(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager) void {
        _ = Inheritance.call(&self.base, "setAllBinaryGameLayerManager", .{ allBinaryGameLayerManager });
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, allBinaryGameLayerManager);
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
        _ = Inheritance.call(self.noMoneyGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
    }
    

    // throws Exception
    pub fn processGameSpecific(self: *Self, associatedRtsLayer: ?*CollidableDestroyableDamageableLayer, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerManager: ?*AllBinaryLayerManager, item: ?*ABCustomItem, itemIndex: i32) void {
        _ = associatedRtsLayer;
        _ = itemIndex;
        _ = Inheritance.call(&self.base, "process", .{ layerManager });
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        const stringMaker: ?*StringMaker = StringMaker.create();
        const technologyRTSInterfaceImageItem: ?*TechnologyRTSInterfaceImageItem = Inheritance.cast(?*TechnologyRTSInterfaceImageItem, item);
        const rtsInterface: ?*RTSInterface = Inheritance.upcast(?*RTSInterface, Inheritance.receiver(technologyRTSInterfaceImageItem.?, "getRtsInterface").getRtsInterface());
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ String.literal("isUpgradeable: ") }).?, "appendboolean", .{ rtsInterface.?.isUpgradeable() }))), self, commonStrings.?.PROCESS });
        if (rtsInterface.?.isUpgradeable()) {
            const cost: i32 = rtsInterface.?.getUpgradeCost();
            const capital: ?*Capital = Inheritance.upcast(?*Capital, Inheritance.receiver(rtsPlayerLayerInterface.?, "getCapital").getCapital());
            _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "appendint", .{ cost }).?, "append", .{ String.literal("<=") }).?, "appendint", .{ @as(i32, @intCast(capital.?.getTotalMoney())) }))), self, commonStrings.?.PROCESS });
            if (cost <= capital.?.getTotalMoney()) {
                _ = Inheritance.call(rtsPlayerLayerInterface.?, "add", .{ BuildingSound.getInstance() });
                _ = Inheritance.call(capital.?, "removeMoney", .{ cost });
                _ = rtsInterface.?.upgrade();
                _ = Inheritance.receiver(technologyRTSInterfaceImageItem.?, "update").update();
                _ = Inheritance.call(TechEventHandler.getInstance().?, "fireEvent", .{ self.EVENT });
            } else {
                _ = Inheritance.call(rtsPlayerLayerInterface.?, "add", .{ ErrorSound.getInstance() });
                if (!Inheritance.receiver(rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
                    _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.noMoneyGameNotificationEvent });
                }
            }
        }
    }
};


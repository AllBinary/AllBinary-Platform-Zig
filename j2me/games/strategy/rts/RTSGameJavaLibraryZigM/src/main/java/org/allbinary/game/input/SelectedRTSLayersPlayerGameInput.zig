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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const RTSGameStrings = @import("org/allbinary/game/layer/RTSGameStrings.zig").RTSGameStrings;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const RTSLayerInfoPaintable = @import("org/allbinary/game/layer/RTSLayerInfoPaintable.zig").RTSLayerInfoPaintable;
const RTSPlayerLayerInterface = @import("org/allbinary/game/layer/RTSPlayerLayerInterface.zig").RTSPlayerLayerInterface;
const Capital = @import("org/allbinary/game/layer/capital/Capital.zig").Capital;
const DowngradeSound = @import("org/allbinary/media/audio/DowngradeSound.zig").DowngradeSound;
const UpgradeSound = @import("org/allbinary/media/audio/UpgradeSound.zig").UpgradeSound;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const InputFeatureFactory = @import("org/allbinary/game/configuration/feature/InputFeatureFactory.zig").InputFeatureFactory;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const GameNotificationEvent = @import("org/allbinary/game/layer/hud/event/GameNotificationEvent.zig").GameNotificationEvent;
const GameNotificationEventHandler = @import("org/allbinary/game/layer/hud/event/GameNotificationEventHandler.zig").GameNotificationEventHandler;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const Visitor = @import("org/allbinary/logic/util/visitor/Visitor.zig").Visitor;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const ErrorSound = @import("org/allbinary/media/audio/ErrorSound.zig").ErrorSound;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCompositeInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface.zig").GeographicMapCompositeInterface;
const GameInputProcessor = @import("org/allbinary/game/input/GameInputProcessor.zig").GameInputProcessor;
const GameInputProcessorUtil = @import("org/allbinary/game/input/GameInputProcessorUtil.zig").GameInputProcessorUtil;
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;
const PlayerGameInput = @import("org/allbinary/game/input/PlayerGameInput.zig").PlayerGameInput;
const RTSPlayerGameInput = @import("org/allbinary/game/input/RTSPlayerGameInput.zig").RTSPlayerGameInput;
const SelectRTSLayerVisitorFactoryInterface = @import("org/allbinary/game/input/SelectRTSLayerVisitorFactoryInterface.zig").SelectRTSLayerVisitorFactoryInterface;
const SelectedRTSLayersPlayerDowngradeGameInputProcessor = @import("org/allbinary/game/input/SelectedRTSLayersPlayerDowngradeGameInputProcessor.zig").SelectedRTSLayersPlayerDowngradeGameInputProcessor;
const SelectedRTSLayersPlayerUpgradeGameInputProcessor = @import("org/allbinary/game/input/SelectedRTSLayersPlayerUpgradeGameInputProcessor.zig").SelectedRTSLayersPlayerUpgradeGameInputProcessor;

pub const SelectedRTSLayersPlayerGameInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.SelectedRTSLayersPlayerGameInput";
    base: PlayerGameInput = undefined,
    inputProcessorArray: []?*GameInputProcessor = &.{},
    list: ?*BasicArrayList = null,
    isSingleKeyProcessing: bool = false,
    selectedRTSLayersList: ?*BasicArrayList = null,
    preSelectedRTSLayersList: ?*BasicArrayList = null,
    paintSelectedRTSLayersList: ?*BasicArrayList = null,
    rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface = null,
    selectRTSLayerVisitorInterface: ?*Visitor = null,
    upgradeGameNotificationEvent: ?*GameNotificationEvent = null,
    noMoneyGameNotificationEvent: ?*GameNotificationEvent = null,
    downgradeGameNotificationEvent: ?*GameNotificationEvent = null,

    fn initFields(this: *Self) void {
        this.inputProcessorArray = array_N66477: { const array_N66477_array = allocator.alloc(?*GameInputProcessor, @intCast(InputFactory.getInstance().?.MAX)) catch unreachable; @memset(array_N66477_array, null); break :array_N66477 array_N66477_array; };
        
        this.isSingleKeyProcessing = Inheritance.call(Features.getInstance().?, "isFeature", .{ InputFeatureFactory.getInstance().?.SINGLE_KEY_REPEAT_PRESS }) or Inheritance.call(Features.getInstance().?, "isFeature", .{ InputFeatureFactory.getInstance().?.SINGLE_KEY_PRESS });
        this.selectedRTSLayersList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.preSelectedRTSLayersList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.paintSelectedRTSLayersList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
        
        
        
        
        
    }
    

    pub fn create5(towerInfoPaintable: ?*RTSLayerInfoPaintable, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, list: ?*BasicArrayList, playerInputId: i32, selectRTSLayerVisitorFactoryInterface: ?*SelectRTSLayerVisitorFactoryInterface) *Self {
        _ = towerInfoPaintable;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PlayerGameInput, "create3", .{ list, BasicArrayListD.create(), playerInputId }).*;
        this.initFields();
        _ = this.initInputProcessors();
        this.rtsPlayerLayerInterface = rtsPlayerLayerInterface;
        this.list = list;
        this.selectRTSLayerVisitorInterface = Inheritance.upcast(@TypeOf(this.selectRTSLayerVisitorInterface), Inheritance.call(selectRTSLayerVisitorFactoryInterface.?, "create", .{ this }));
        const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
        const basicColorFactory: ?*BasicColorFactory = Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.getInstance());
        this.upgradeGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.UPGRADE, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.PINK, BooleanFactory.getInstance().?.FALSE });
        this.noMoneyGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.NO_MONEY, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.PINK, BooleanFactory.getInstance().?.FALSE });
        this.downgradeGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.DOWNGRADE, Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 2 }), basicColorFactory.?.PINK, BooleanFactory.getInstance().?.FALSE });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn setAllBinaryGameLayerManager(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager) void {
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, allBinaryGameLayerManager);
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
        _ = Inheritance.call(self.upgradeGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(self.noMoneyGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
        _ = Inheritance.call(self.downgradeGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
    }
    

    pub fn isSelected(self: *Self, rtsLayer: ?*RTSLayer) bool {
        if (Inheritance.call(self.selectedRTSLayersList.?, "contains", .{ rtsLayer })) {
            return true;
        } else {
            return false;
        }
    }
    

    // throws Exception
    pub fn upgrade(self: *Self) void {
        var anyChanged: bool = false;
        {
            var index: i32 = self.selectedRTSLayersList.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const rtsLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, Inheritance.call(self.selectedRTSLayersList.?, "get", .{ index }));
            if (Inheritance.receiver(rtsLayer.?, "isUpgradeable").isUpgradeable()) {
                const capital: ?*Capital = Inheritance.upcast(?*Capital, Inheritance.receiver(self.rtsPlayerLayerInterface.?, "getCapital").getCapital());
                const upgradeCost: i32 = Inheritance.receiver(rtsLayer.?, "getUpgradeCost").getUpgradeCost();
                if (upgradeCost <= capital.?.getTotalMoney()) {
                    anyChanged = true;
                    _ = Inheritance.call(self.rtsPlayerLayerInterface.?, "add", .{ UpgradeSound.getInstance() });
                    _ = Inheritance.receiver(rtsLayer.?, "upgrade").upgrade();
                    _ = Inheritance.call(capital.?, "removeMoney", .{ upgradeCost });
                    if (!Inheritance.receiver(self.rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
                        _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.upgradeGameNotificationEvent });
                    }
                } else {
                    _ = Inheritance.call(self.rtsPlayerLayerInterface.?, "add", .{ ErrorSound.getInstance() });
                    if (!Inheritance.receiver(self.rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
                        _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.noMoneyGameNotificationEvent });
                    }
                }
            }
            }
        }
        if (anyChanged) {
            const rtsPlayerGameInput: ?*RTSPlayerGameInput = Inheritance.upcast(?*RTSPlayerGameInput, (Inheritance.cast(?*RTSPlayerGameInput, Inheritance.receiver(self.rtsPlayerLayerInterface.?, "getPlayerGameInput").getPlayerGameInput())));
            _ = Inheritance.receiver(rtsPlayerGameInput.?, "updatePaintable").updatePaintable();
        }
    }
    

    // throws Exception
    pub fn downgrade(self: *Self) void {
        var anyChanged: bool = false;
        {
            var index: i32 = self.selectedRTSLayersList.?.size();
            while (value_N69396: { index -= 1; break :value_N69396 index; } >= 0) {
            const rtsLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, Inheritance.call(self.selectedRTSLayersList.?, "get", .{ index }));
            if (Inheritance.receiver(rtsLayer.?, "isDowngradeable").isDowngradeable()) {
                anyChanged = true;
                _ = Inheritance.call(self.rtsPlayerLayerInterface.?, "add", .{ DowngradeSound.getInstance() });
                const downgradeCost: i32 = Inheritance.receiver(rtsLayer.?, "getDowngradeCost").getDowngradeCost();
                _ = Inheritance.receiver(rtsLayer.?, "downgrade").downgrade();
                const capital: ?*Capital = Inheritance.upcast(?*Capital, Inheritance.receiver(self.rtsPlayerLayerInterface.?, "getCapital").getCapital());
                _ = Inheritance.call(capital.?, "addMoney", .{ downgradeCost });
                if (!Inheritance.receiver(self.rtsPlayerLayerInterface.?, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface()) {
                    _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.downgradeGameNotificationEvent });
                }
            }
            }
        }
        if (anyChanged) {
            const rtsPlayerGameInput: ?*RTSPlayerGameInput = Inheritance.upcast(?*RTSPlayerGameInput, (Inheritance.cast(?*RTSPlayerGameInput, Inheritance.receiver(self.rtsPlayerLayerInterface.?, "getPlayerGameInput").getPlayerGameInput())));
            _ = Inheritance.receiver(rtsPlayerGameInput.?, "updatePaintable").updatePaintable();
        }
    }
    

    pub fn initInputProcessors(self: *Self) void {
        self.inputProcessorArray[@intCast(Canvas.KEY_NUM1)] = Inheritance.upcast(@TypeOf(self.inputProcessorArray[@intCast(Canvas.KEY_NUM1)]), Inheritance.callStatic(SelectedRTSLayersPlayerUpgradeGameInputProcessor, "create1", .{ self }));
        self.inputProcessorArray[@intCast(Canvas.KEY_NUM3)] = Inheritance.upcast(@TypeOf(self.inputProcessorArray[@intCast(Canvas.KEY_NUM3)]), Inheritance.callStatic(SelectedRTSLayersPlayerDowngradeGameInputProcessor, "create1", .{ self }));
        _ = Inheritance.callStatic(GameInputProcessorUtil, "init", .{ self.inputProcessorArray });
    }
    

    // throws Exception
    pub fn processInputKey(self: *Self, key: i32) void {
        if (self.selectedRTSLayersList != null) {
            _ = Inheritance.call(self.inputProcessorArray[@intCast(key)].?, "processEvent", .{ AllBinaryGameLayerManager.getNullInstance(), GameKeyEvent.NONE });
        }
    }
    

    // throws Exception
    pub fn processInput(self: *Self, layerManager: ?*AllBinaryLayerManager) void {
        _ = layerManager;
        { // try
            const size: i32 = self.list.?.size();
            var key: i32 = 0;
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const gameKeyEvent: ?*GameKeyEvent = Inheritance.cast(?*GameKeyEvent, Inheritance.call(self.list.?, "get", .{ index }));
                key = Inheritance.receiver(gameKeyEvent.?, "getKey").getKey();
                _ = Inheritance.call(self, "processInputKey", .{ key });
                }
            }
            if (self.isSingleKeyProcessing) {
                _ = Inheritance.receiver(self, "clear").clear();
            } else {
                _ = Inheritance.receiver(self, "update").update();
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.PROCESS_INPUT, e });
    }
    

    pub fn getSelectedBasicArrayList(self: *Self) ?*BasicArrayList {
        return self.selectedRTSLayersList;
    }
    

    pub fn addSelectedRTSLayer(self: *Self, selectedLayer: ?*RTSLayer) void {
        self.paintSelectedRTSLayersList = Inheritance.upcast(@TypeOf(self.paintSelectedRTSLayersList), Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
        if (Object.same(selectedLayer, CollidableDestroyableDamageableLayer.getNullInstance())) {
            _ = self.deselectAll();
            _ = self.selectedRTSLayersList.?.clear();
        } else {
            if (!Inheritance.call(self.selectedRTSLayersList.?, "contains", .{ selectedLayer })) {
                _ = Inheritance.call(self.selectedRTSLayersList.?, "add", .{ selectedLayer });
            }
        }
        self.paintSelectedRTSLayersList = self.selectedRTSLayersList;
    }
    

    pub fn setSelectedRTSLayer(self: *Self, selectedLayer: ?*CollidableDestroyableDamageableLayer) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Selected Layer: ") });
        if (selectedLayer != null) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(selectedLayer.?, "getName").getName() });
        }
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("setSelectedRTSLayer") });
        self.paintSelectedRTSLayersList = Inheritance.upcast(@TypeOf(self.paintSelectedRTSLayersList), Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
        _ = Inheritance.call(self.selectRTSLayerVisitorInterface.?, "visit", .{ selectedLayer });
        _ = self.deselectAll();
        if (self.selectedRTSLayersList.?.size() > 0) {
            _ = Inheritance.receiverOf(self.getPreSelectedRTSLayersList().?, "clear").clear();
            const tempList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.getPreSelectedRTSLayersList());
            self.preSelectedRTSLayersList = self.selectedRTSLayersList;
            self.selectedRTSLayersList = tempList;
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Preselected: ") }).?, "append", .{ Object.toString(Object.of(self.preSelectedRTSLayersList)) }))), self, String.literal("setSelectedRTSLayer") });
        }
        if (!Object.same(selectedLayer, CollidableDestroyableDamageableLayer.getNullInstance())) {
            _ = Inheritance.call(self.selectedRTSLayersList.?, "add", .{ selectedLayer });
        }
        self.paintSelectedRTSLayersList = self.selectedRTSLayersList;
    }
    

    pub fn getLastSelectedRtsLayer(self: *Self) ?*CollidableDestroyableDamageableLayer {
        if (self.isAnyRTSLayerSelected()) {
            return Inheritance.cast(?*CollidableDestroyableDamageableLayer, Inheritance.call(self.selectedRTSLayersList.?, "get", .{ self.selectedRTSLayersList.?.size() - 1 }));
        } else {
            return Inheritance.upcast(?*CollidableDestroyableDamageableLayer, CollidableDestroyableDamageableLayer.getNullInstance());
        }
    }
    

    pub fn selectAllPreselected(self: *Self) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Select all Preselected: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.preSelectedRTSLayersList)) });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("selectAllPreselected") });
        {
            var index: i32 = self.preSelectedRTSLayersList.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const rtsLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, Inheritance.call(self.preSelectedRTSLayersList.?, "get", .{ index }));
            _ = Inheritance.receiver(rtsLayer.?, "select").select();
            }
        }
    }
    

    pub fn deselectAllPreselected(self: *Self) void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Deselect all Preselected: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.preSelectedRTSLayersList)) });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("deselectAllPreselected") });
        {
            var index: i32 = self.preSelectedRTSLayersList.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const rtsLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, Inheritance.call(self.preSelectedRTSLayersList.?, "get", .{ index }));
            _ = Inheritance.receiver(rtsLayer.?, "deselect").deselect();
            }
        }
        _ = self.preSelectedRTSLayersList.?.clear();
    }
    

    pub fn deselectAll(self: *Self) void {
        {
            var index: i32 = self.selectedRTSLayersList.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const rtsLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, Inheritance.call(self.selectedRTSLayersList.?, "get", .{ index }));
            _ = Inheritance.receiver(rtsLayer.?, "deselect").deselect();
            }
        }
    }
    

    pub fn isAnyRTSLayerSelected(self: *Self) bool {
        if (self.selectedRTSLayersList.?.size() == 0) {
            return false;
        }
        return true;
    }
    

    pub fn getPaintSelectedRTSLayersList(self: *Self) ?*BasicArrayList {
        return self.paintSelectedRTSLayersList;
    }
    

    pub fn getPreSelectedRTSLayersList(self: *Self) ?*BasicArrayList {
        return self.preSelectedRTSLayersList;
    }
};


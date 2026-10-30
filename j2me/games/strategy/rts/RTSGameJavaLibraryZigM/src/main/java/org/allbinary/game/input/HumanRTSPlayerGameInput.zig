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
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const RTSFormInput = @import("org/allbinary/game/input/form/RTSFormInput.zig").RTSFormInput;
const MultiSelectPaintable = @import("org/allbinary/game/layer/MultiSelectPaintable.zig").MultiSelectPaintable;
const RTSGameStrings = @import("org/allbinary/game/layer/RTSGameStrings.zig").RTSGameStrings;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const RTSLayerInfoPaintable = @import("org/allbinary/game/layer/RTSLayerInfoPaintable.zig").RTSLayerInfoPaintable;
const RTSPlayerLayerInterface = @import("org/allbinary/game/layer/RTSPlayerLayerInterface.zig").RTSPlayerLayerInterface;
const GameStateFactory = @import("org/allbinary/game/state/GameStateFactory.zig").GameStateFactory;
const EndLevelNoBuildingSelectedTouchButtonsBuilder = @import("org/allbinary/input/motion/button/EndLevelNoBuildingSelectedTouchButtonsBuilder.zig").EndLevelNoBuildingSelectedTouchButtonsBuilder;
const EndLevelTouchButtonsBuilder = @import("org/allbinary/input/motion/button/EndLevelTouchButtonsBuilder.zig").EndLevelTouchButtonsBuilder;
const NoBuildingSelectedTouchButtonsBuilder = @import("org/allbinary/input/motion/button/NoBuildingSelectedTouchButtonsBuilder.zig").NoBuildingSelectedTouchButtonsBuilder;
const RTSTouchButtonsBuilder = @import("org/allbinary/input/motion/button/RTSTouchButtonsBuilder.zig").RTSTouchButtonsBuilder;
const SelectBuildingSound = @import("org/allbinary/media/audio/SelectBuildingSound.zig").SelectBuildingSound;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const GameNotificationEvent = @import("org/allbinary/game/layer/hud/event/GameNotificationEvent.zig").GameNotificationEvent;
const GameNotificationEventHandler = @import("org/allbinary/game/layer/hud/event/GameNotificationEventHandler.zig").GameNotificationEventHandler;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const ScrollSelectionForm = @import("org/allbinary/graphics/form/ScrollSelectionForm.zig").ScrollSelectionForm;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const NullInitUpdatePaintable = @import("org/allbinary/graphics/paint/NullInitUpdatePaintable.zig").NullInitUpdatePaintable;
const TouchButtonsBuilderFactory = @import("org/allbinary/input/motion/button/TouchButtonsBuilderFactory.zig").TouchButtonsBuilderFactory;
const MotionGestureInput = @import("org/allbinary/input/motion/gesture/MotionGestureInput.zig").MotionGestureInput;
const TouchMotionGestureFactory = @import("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.zig").TouchMotionGestureFactory;
const BaseMotionGestureEventListener = @import("org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener.zig").BaseMotionGestureEventListener;
const BasicMotionGesturesHandler = @import("org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.zig").BasicMotionGesturesHandler;
const MotionGestureEvent = @import("org/allbinary/input/motion/gesture/observer/MotionGestureEvent.zig").MotionGestureEvent;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const RectangleCollisionUtil = @import("org/allbinary/math/RectangleCollisionUtil.zig").RectangleCollisionUtil;
const ErrorSound = @import("org/allbinary/media/audio/ErrorSound.zig").ErrorSound;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCompositeInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface.zig").GeographicMapCompositeInterface;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const LayerPositionFinderInterface = @import("org/allbinary/game/input/LayerPositionFinderInterface.zig").LayerPositionFinderInterface;
const RTSPlayerGameInput = @import("org/allbinary/game/input/RTSPlayerGameInput.zig").RTSPlayerGameInput;
const SelectRTSLayerVisitorFactoryInterface = @import("org/allbinary/game/input/SelectRTSLayerVisitorFactoryInterface.zig").SelectRTSLayerVisitorFactoryInterface;

pub const HumanRTSPlayerGameInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.HumanRTSPlayerGameInput";
    base: RTSPlayerGameInput = undefined,
    isDragging: bool = false,
    gameStateFactory: ?*GameStateFactory = null,
    rectangleCollisionUtil: ?*RectangleCollisionUtil = null,
    touchMotionGestureFactory: ?*TouchMotionGestureFactory = null,
    PRESSED: ?*MotionGestureInput = null,
    RELEASED: ?*MotionGestureInput = null,
    touchButtonsBuilderFactory: ?*TouchButtonsBuilderFactory = null,
    notYoursGameNotificationEvent: ?*GameNotificationEvent = null,
    selectedRtsLayer: ?*CollidableDestroyableDamageableLayer = null,
    startPoint: ?*GPoint = null,
    endPoint: ?*GPoint = null,
    POSSIBLE: ?*String = null,
    AT: ?*String = null,
    METHOD: ?*String = null,
    ADDING: ?*String = null,
    SPACE: ?*String = null,
    multiSelectPaintable: ?*MultiSelectPaintable = null,
    // Implements BaseMotionGestureEventListener

    fn initFields(this: *Self) void {
        this.isDragging = false;
        this.gameStateFactory = Inheritance.upcast(?*GameStateFactory, GameStateFactory.getInstance());
        this.rectangleCollisionUtil = Inheritance.upcast(?*RectangleCollisionUtil, RectangleCollisionUtil.getInstance());
        this.touchMotionGestureFactory = Inheritance.upcast(?*TouchMotionGestureFactory, TouchMotionGestureFactory.getInstance());
        this.PRESSED = Inheritance.upcast(?*MotionGestureInput, this.touchMotionGestureFactory.?.PRESSED);
        this.RELEASED = Inheritance.upcast(?*MotionGestureInput, this.touchMotionGestureFactory.?.RELEASED);
        
        
        this.selectedRtsLayer = Inheritance.upcast(?*CollidableDestroyableDamageableLayer, CollidableDestroyableDamageableLayer.getNullInstance());
        this.startPoint = Inheritance.upcast(?*GPoint, PointFactory.getInstance().?.ZERO_ZERO);
        this.endPoint = Inheritance.upcast(?*GPoint, PointFactory.getInstance().?.ZERO_ZERO);
        this.POSSIBLE = String.literal("Possible: ");
        this.AT = String.literal("At: ");
        this.METHOD = String.literal("makeSelection");
        this.ADDING = String.literal("Adding: ");
        this.SPACE = Inheritance.upcast(?*String, CommonSeps.getInstance().?.SPACE);
        this.multiSelectPaintable = MultiSelectPaintable.create();
    }
    

    pub fn create8(gameCanvas: ?*AllBinaryGameCanvas, inputList: ?*BasicArrayList, playerInputId: i32, towerInfoPaintable: ?*RTSLayerInfoPaintable, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerPositionFinderInterface: ?*LayerPositionFinderInterface, selectRTSLayerVisitorFactoryInterface: ?*SelectRTSLayerVisitorFactoryInterface, touchButtonsBuilderFactory: ?*TouchButtonsBuilderFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(RTSPlayerGameInput, "create7", .{ gameCanvas, inputList, playerInputId, towerInfoPaintable, rtsPlayerLayerInterface, layerPositionFinderInterface, selectRTSLayerVisitorFactoryInterface }).*;
        this.initFields();
        this.touchButtonsBuilderFactory = touchButtonsBuilderFactory;
        const basicColorFactory: ?*BasicColorFactory = Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.getInstance());
        this.notYoursGameNotificationEvent = Inheritance.callStatic(GameNotificationEvent, "create5", .{ this, RTSGameStrings.getInstance().?.NOT_YOURS, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 2 }), basicColorFactory.?.PINK, BooleanFactory.getInstance().?.FALSE });
        _ = Inheritance.call(BasicMotionGesturesHandler.getInstance().?, "addListenerInterface", .{ this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn setAllBinaryGameLayerManager(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager) void {
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, allBinaryGameLayerManager);
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
        _ = Inheritance.call(self.notYoursGameNotificationEvent.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
    }
    

    // throws Exception
    pub fn processDraggingMotionInput(self: *Self, layerManager: ?*AllBinaryLayerManager) bool {
        const motionGestureEvent: ?*MotionGestureEvent = Inheritance.cast(?*MotionGestureEvent, Inheritance.call(Inheritance.receiver(self, "getMotionGestureInputList").getMotionGestureInputList().?, "get", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getMotionGestureInputList").getMotionGestureInputList().?, "size").size() - 1 }));
        const motionGestureInput: ?*MotionGestureInput = Inheritance.upcast(?*MotionGestureInput, Inheritance.receiver(motionGestureEvent.?, "getMotionGesture").getMotionGesture());
        const rtsFormInput: ?*RTSFormInput = Inheritance.upcast(?*RTSFormInput, Inheritance.receiver(self, "getSelectedRtsFormInput").getSelectedRtsFormInput());
        if (Object.same(motionGestureInput, self.PRESSED)) {
            const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(motionGestureEvent.?, "getCurrentPoint").getCurrentPoint());
            if (Inheritance.call(Inheritance.receiverOf(Inheritance.receiver(self, "getRtsPlayerLayerInterface").getRtsPlayerLayerInterface().?, "getCurrentScrollSelectionForm").getCurrentScrollSelectionForm().?, "isInForm", .{ point })) {
                self.isDragging = Inheritance.call(rtsFormInput.?, "processSticky", .{ self.getSelectedRtsLayer(), Inheritance.receiver(self, "getRtsPlayerLayerInterface").getRtsPlayerLayerInterface(), layerManager, point });
            }
        } else if (Object.same(motionGestureInput, self.RELEASED)) {
            const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(motionGestureEvent.?, "getCurrentPoint").getCurrentPoint());
            if (Inheritance.call(Inheritance.receiverOf(Inheritance.receiver(self, "getRtsPlayerLayerInterface").getRtsPlayerLayerInterface().?, "getCurrentScrollSelectionForm").getCurrentScrollSelectionForm().?, "isInForm", .{ point })) {
                _ = Inheritance.call(rtsFormInput.?, "processAtPoint", .{ self.getSelectedRtsLayer(), Inheritance.receiver(self, "getRtsPlayerLayerInterface").getRtsPlayerLayerInterface(), layerManager, point });
            } else if (rtsFormInput.?.isStickyItemSelected()) {
                const previousRtsFormInput: ?*RTSFormInput = rtsFormInput;
                _ = Inheritance.call(self, "select", .{ motionGestureEvent });
                _ = Inheritance.receiverOf(Inheritance.receiver(self, "getSelectedBuildingPlayerGameInput").getSelectedBuildingPlayerGameInput().?, "selectAllPreselected").selectAllPreselected();
                _ = Inheritance.call(previousRtsFormInput.?, "processAtPoint", .{ self.getSelectedRtsLayer(), Inheritance.receiver(self, "getRtsPlayerLayerInterface").getRtsPlayerLayerInterface(), layerManager, point });
                _ = Inheritance.receiverOf(Inheritance.receiver(self, "getSelectedBuildingPlayerGameInput").getSelectedBuildingPlayerGameInput().?, "deselectAllPreselected").deselectAllPreselected();
            } else {
                _ = Inheritance.call(self, "select", .{ motionGestureEvent });
            }
            _ = Inheritance.call(rtsFormInput.?, "setStickyItemSelected", .{ false });
            _ = Inheritance.call(rtsFormInput.?, "setSelectedStickyItem", .{ ABCustomItem.getNullInstance() });
            _ = Inheritance.call(rtsFormInput.?, "setSelectedStickyItemIndex", .{ -1 });
            return true;
        }
        return false;
    }
    

    pub fn makeSelection(self: *Self) void {
        const rtsLayerList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(Inheritance.receiver(self, "getRtsPlayerLayerInterface").getRtsPlayerLayerInterface().?, "getPlayerOwnedRTSLayers").getPlayerOwnedRTSLayers().?.rtsLayerList);
        var rectX1: i32 = self.startPoint.?.getX();
        var rectY1: i32 = self.startPoint.?.getY();
        var rectX2: i32 = self.endPoint.?.getX();
        var rectY2: i32 = self.endPoint.?.getY();
        if (rectX1 > rectX2) {
            rectX2 = rectX1;
            rectX1 = self.endPoint.?.getX();
        }
        if (rectY1 > rectY2) {
            rectY2 = rectY1;
            rectY1 = self.endPoint.?.getY();
        }
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.AT });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ rectX1 });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.SPACE });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ rectY1 });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.SPACE });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ rectX2 });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.SPACE });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ rectY2 });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.METHOD });
        var rtsLayer: ?*RTSLayer = null;
        {
            var index: i32 = rtsLayerList.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            rtsLayer = Inheritance.cast(?*RTSLayer, Inheritance.call(rtsLayerList.?, "get", .{ index }));
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            const viewPosition: ?*ViewPositionBase = Inheritance.upcast(?*ViewPositionBase, Inheritance.receiver(rtsLayer.?, "getViewPosition").getViewPosition());
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.POSSIBLE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(rtsLayer.?, "getName").getName() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.SPACE });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.AT });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast((Inheritance.receiver(viewPosition.?, "getX").getX() + Inheritance.receiver(rtsLayer.?, "getHalfWidth").getHalfWidth()))) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.SPACE });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ @as(i32, @intCast((Inheritance.receiver(viewPosition.?, "getY").getY() + Inheritance.receiver(rtsLayer.?, "getHalfHeight").getHalfHeight()))) });
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.METHOD });
            if (Inheritance.call(self.rectangleCollisionUtil.?, "isInside", .{ rectX1, rectY1, rectX2, rectY2, Inheritance.receiver(viewPosition.?, "getX").getX() + Inheritance.receiver(rtsLayer.?, "getHalfWidth").getHalfWidth(), Inheritance.receiver(viewPosition.?, "getY").getY() + Inheritance.receiver(rtsLayer.?, "getHalfHeight").getHalfHeight() })) {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.ADDING }).?, "append", .{ Inheritance.receiver(rtsLayer.?, "getName").getName() }))), self, self.METHOD });
                _ = Inheritance.receiver(rtsLayer.?, "select").select();
                _ = Inheritance.call(Inheritance.receiver(self, "getSelectedBuildingPlayerGameInput").getSelectedBuildingPlayerGameInput().?, "addSelectedRTSLayer", .{ rtsLayer });
            }
            }
        }
        const gameLayer: ?*CollidableDestroyableDamageableLayer = Inheritance.upcast(?*CollidableDestroyableDamageableLayer, Inheritance.receiverOf(Inheritance.receiver(self, "getSelectedBuildingPlayerGameInput").getSelectedBuildingPlayerGameInput().?, "getLastSelectedRtsLayer").getLastSelectedRtsLayer());
        if (!Object.same(gameLayer, CollidableDestroyableDamageableLayer.getNullInstance())) {
            const lastRTSLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, gameLayer);
            if (!Object.same(Inheritance.receiver(lastRTSLayer.?, "getScrollSelectionForm").getScrollSelectionForm(), ScrollSelectionForm.getNullScrollSelectionForm())) {
                _ = Inheritance.call(self, "updateForm", .{ Inheritance.receiver(lastRTSLayer.?, "getScrollSelectionForm").getScrollSelectionForm(), Inheritance.receiver(lastRTSLayer.?, "getRTSFormInput").getRTSFormInput() });
                _ = Inheritance.call(self, "setSelectedRtsLayer", .{ lastRTSLayer });
            }
        }
        _ = self.updatePaintable();
    }
    

    // throws Exception
    pub fn processSelectionBoxMotionInput(self: *Self, layerManager: ?*AllBinaryLayerManager) void {
        _ = layerManager;
        {
            var index: i32 = Inheritance.receiverOf(Inheritance.receiver(self, "getMotionGestureInputList").getMotionGestureInputList().?, "size").size() - 1;
            while (index >= 0) : (index -= 1) {
            const motionGestureEvent: ?*MotionGestureEvent = Inheritance.cast(?*MotionGestureEvent, Inheritance.call(Inheritance.receiver(self, "getMotionGestureInputList").getMotionGestureInputList().?, "get", .{ index }));
            const motionGestureInput: ?*MotionGestureInput = Inheritance.upcast(?*MotionGestureInput, Inheritance.receiver(motionGestureEvent.?, "getMotionGesture").getMotionGesture());
            const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(motionGestureEvent.?, "getCurrentPoint").getCurrentPoint());
            if (Object.same(motionGestureInput, self.touchMotionGestureFactory.?.PRESSED)) {
                self.startPoint = point;
                self.endPoint = point;
            } else if (Object.same(motionGestureInput, self.touchMotionGestureFactory.?.RELEASED)) {
                self.endPoint = point;
                _ = self.makeSelection();
                self.startPoint = Inheritance.upcast(@TypeOf(self.startPoint), PointFactory.getInstance().?.ZERO_ZERO);
                self.endPoint = Inheritance.upcast(@TypeOf(self.endPoint), PointFactory.getInstance().?.ZERO_ZERO);
            } else {
                self.endPoint = point;
            }
            }
        }
    }
    

    // throws Exception
    pub fn processMotionInput(self: *Self, layerManager: ?*AllBinaryLayerManager) void {
        if (Inheritance.receiverOf(Inheritance.receiver(self, "getMotionGestureInputList").getMotionGestureInputList().?, "size").size() > 0) {
            const endDrag: bool = Inheritance.call(self, "processDraggingMotionInput", .{ layerManager });
            if (!self.isDragging) {
                _ = Inheritance.call(self, "processSelectionBoxMotionInput", .{ layerManager });
            }
            if (endDrag) {
                self.isDragging = false;
            }
        }
        _ = Inheritance.receiverOf(Inheritance.receiver(self, "getMotionGestureInputList").getMotionGestureInputList().?, "clear").clear();
    }
    

    pub fn setSelectedRtsFormInput(self: *Self, selectedRtsFormInput: ?*RTSFormInput) void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.START }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ selectedRtsFormInput }) }))), self, String.literal("setSelectedRtsFormInput") });
        _ = Inheritance.call(&self.base, "setSelectedRtsFormInput", .{ selectedRtsFormInput });
        _ = Inheritance.call(self, "setSelectedRtsLayer", .{ CollidableDestroyableDamageableLayer.getNullInstance() });
    }
    

    pub fn updateFormForLayer(self: *Self, rtsLayer: ?*RTSLayer) void {
        const scrollSelectionForm: ?*ScrollSelectionForm = Inheritance.upcast(?*ScrollSelectionForm, Inheritance.receiver(rtsLayer.?, "getScrollSelectionForm").getScrollSelectionForm());
        if (!Object.same(scrollSelectionForm, ScrollSelectionForm.getNullScrollSelectionForm()) and Object.same(Inheritance.receiverOf(Inheritance.receiver(self, "getRtsPlayerLayerInterface").getRtsPlayerLayerInterface().?, "getGroupInterface").getGroupInterface()[@intCast(0)], Inheritance.receiver(rtsLayer.?, "getGroupInterface").getGroupInterface()[@intCast(0)])) {
            _ = Inheritance.call(self, "updateForm", .{ scrollSelectionForm, Inheritance.receiver(rtsLayer.?, "getRTSFormInput").getRTSFormInput() });
            _ = Inheritance.call(Inheritance.receiver(self, "getSelectedBuildingPlayerGameInput").getSelectedBuildingPlayerGameInput().?, "setSelectedRTSLayer", .{ CollidableDestroyableDamageableLayer.getNullInstance() });
            _ = Inheritance.call(self, "setSelectedRtsLayer", .{ rtsLayer });
        } else {
            _ = Inheritance.call(Inheritance.receiver(self, "getRtsPlayerLayerInterface").getRtsPlayerLayerInterface().?, "setCurrentScrollSelectionForm", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getRtsPlayerLayerInterface").getRtsPlayerLayerInterface().?, "getBuildingScrollSelectionForm").getBuildingScrollSelectionForm() });
            _ = Inheritance.call(self, "setSelectedRtsFormInput", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getRtsPlayerLayerInterface").getRtsPlayerLayerInterface().?, "getRTSFormInput").getRTSFormInput() });
            _ = Inheritance.call(Inheritance.receiver(self, "getSelectedBuildingPlayerGameInput").getSelectedBuildingPlayerGameInput().?, "setSelectedRTSLayer", .{ CollidableDestroyableDamageableLayer.getNullInstance() });
        }
    }
    

    pub fn updateForm(self: *Self, scrollSelectionForm: ?*ScrollSelectionForm, rtfFormInput: ?*RTSFormInput) void {
        _ = Inheritance.call(Inheritance.receiver(self, "getRtsPlayerLayerInterface").getRtsPlayerLayerInterface().?, "setCurrentScrollSelectionForm", .{ scrollSelectionForm });
        _ = Inheritance.call(self, "setSelectedRtsFormInput", .{ rtfFormInput });
    }
    

    // throws Exception
    pub fn setSelectedRTSLayer(self: *Self, rtSLayer: ?*CollidableDestroyableDamageableLayer, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
        if (!Object.same(rtSLayer, CollidableDestroyableDamageableLayer.getNullInstance()) and !Object.same(Inheritance.receiverOf(Inheritance.receiver(self, "getRtsPlayerLayerInterface").getRtsPlayerLayerInterface().?, "getGroupInterface").getGroupInterface()[@intCast(0)], Inheritance.receiver(rtSLayer.?, "getGroupInterface").getGroupInterface()[@intCast(0)])) {
            _ = Inheritance.call(Inheritance.receiver(self, "getRtsPlayerLayerInterface").getRtsPlayerLayerInterface().?, "add", .{ ErrorSound.getInstance() });
            _ = Inheritance.call(GameNotificationEventHandler.getInstance().?, "fireEvent", .{ self.notYoursGameNotificationEvent });
            return;
        }
        const gameCanvas: ?*AllBinaryGameCanvas = Inheritance.upcast(?*AllBinaryGameCanvas, Inheritance.receiver(self, "getGameCanvas").getGameCanvas());
        if (!Object.same(rtSLayer, CollidableDestroyableDamageableLayer.getNullInstance())) {
            _ = Inheritance.call(Inheritance.receiver(self, "getRtsPlayerLayerInterface").getRtsPlayerLayerInterface().?, "add", .{ SelectBuildingSound.getInstance() });
            const rtsLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, rtSLayer);
            _ = Inheritance.receiver(rtsLayer.?, "select").select();
            _ = Inheritance.call(self, "updateFormForLayer", .{ rtsLayer });
            if (Object.same(Inheritance.receiver(gameCanvas.?, "getGameState").getGameState(), self.gameStateFactory.?.PLAYING_GAME_STATE)) {
                if (Inheritance.receiver(rtsLayer.?, "isSelfUpgradeable").isSelfUpgradeable()) {
                    _ = Inheritance.call(gameCanvas.?, "updateCurrentTouchInputFactory", .{ RTSTouchButtonsBuilder.create() });
                } else {
                    _ = Inheritance.call(gameCanvas.?, "updateCurrentTouchInputFactory", .{ NoBuildingSelectedTouchButtonsBuilder.create() });
                }
            } else {
                const endLevelTouchButtonsBuilder: ?*EndLevelTouchButtonsBuilder = EndLevelTouchButtonsBuilder.create();
                if (self.touchButtonsBuilderFactory != null) {
                    _ = Inheritance.call(endLevelTouchButtonsBuilder.?, "add", .{ self.touchButtonsBuilderFactory.?.getInstance() });
                }
                _ = Inheritance.call(gameCanvas.?, "updateCurrentTouchInputFactory", .{ endLevelTouchButtonsBuilder });
            }
        } else {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Set Player Default Form"), self, String.literal("setSelectedRTSLayer") });
            _ = Inheritance.call(Inheritance.receiver(self, "getRtsPlayerLayerInterface").getRtsPlayerLayerInterface().?, "setCurrentScrollSelectionForm", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getRtsPlayerLayerInterface").getRtsPlayerLayerInterface().?, "getBuildingScrollSelectionForm").getBuildingScrollSelectionForm() });
            _ = Inheritance.call(self, "setSelectedRtsFormInput", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getRtsPlayerLayerInterface").getRtsPlayerLayerInterface().?, "getRTSFormInput").getRTSFormInput() });
            _ = Inheritance.call(Inheritance.receiver(self, "getSelectedBuildingPlayerGameInput").getSelectedBuildingPlayerGameInput().?, "setSelectedRTSLayer", .{ CollidableDestroyableDamageableLayer.getNullInstance() });
            if (Object.same(Inheritance.receiver(gameCanvas.?, "getGameState").getGameState(), self.gameStateFactory.?.PLAYING_GAME_STATE)) {
                _ = Inheritance.call(gameCanvas.?, "updateCurrentTouchInputFactory", .{ NoBuildingSelectedTouchButtonsBuilder.create() });
            } else {
                const endLevelNoBuildingSelectedTouchButtonsBuilder: ?*EndLevelNoBuildingSelectedTouchButtonsBuilder = EndLevelNoBuildingSelectedTouchButtonsBuilder.create();
                if (self.touchButtonsBuilderFactory != null) {
                    _ = Inheritance.call(endLevelNoBuildingSelectedTouchButtonsBuilder.?, "add", .{ self.touchButtonsBuilderFactory.?.getInstance() });
                }
                _ = Inheritance.call(gameCanvas.?, "updateCurrentTouchInputFactory", .{ endLevelNoBuildingSelectedTouchButtonsBuilder });
            }
        }
        _ = Inheritance.call(Inheritance.receiver(self, "getSelectedRtsFormInput").getSelectedRtsFormInput().?, "setSelectedGeographicCellPosition", .{ geographicMapCellPosition });
        _ = Inheritance.call(Inheritance.receiver(self, "getSelectedBuildingPlayerGameInput").getSelectedBuildingPlayerGameInput().?, "setSelectedRTSLayer", .{ rtSLayer });
        _ = self.updatePaintable();
    }
    

    pub fn updatePaintable(self: *Self) void {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(Inheritance.receiver(self, "getSelectedBuildingPlayerGameInput").getSelectedBuildingPlayerGameInput().?, "getSelectedBasicArrayList").getSelectedBasicArrayList());
        if (list.?.size() > 1) {
            const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, Inheritance.receiver(self, "getGameCanvas").getGameCanvas());
            const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
            _ = Inheritance.call(self.multiSelectPaintable.?, "setBasicColorP", .{ Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor() });
            _ = Inheritance.call(self.multiSelectPaintable.?, "update", .{ list });
            _ = Inheritance.call(Inheritance.receiver(self, "getRTSLayerInfoPaintable").getRTSLayerInfoPaintable().?, "updateRTSLayerInfoSelection", .{ self.multiSelectPaintable });
        } else if (list.?.size() == 1) {
            const rtsLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, Inheritance.call(list.?, "get", .{ 0 }));
            _ = Inheritance.call(Inheritance.receiver(self, "getRTSLayerInfoPaintable").getRTSLayerInfoPaintable().?, "updateRTSLayerInfoSelection", .{ Inheritance.receiver(rtsLayer.?, "createHudPaintable").createHudPaintable() });
        } else {
            _ = Inheritance.call(Inheritance.receiver(self, "getRTSLayerInfoPaintable").getRTSLayerInfoPaintable().?, "updateRTSLayerInfoInit", .{ NullInitUpdatePaintable.getInstance() });
        }
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "paint", .{ graphics });
        if (!Object.same(self.startPoint, PointFactory.getInstance().?.ZERO_ZERO) and !Object.same(self.endPoint, PointFactory.getInstance().?.ZERO_ZERO)) {
            _ = Inheritance.call(graphics.?, "setColor", .{ Inheritance.receiverOf(BasicColorFactory.getInstance().?.RED.?, "intValue").intValue() });
            var rectX1: i32 = self.startPoint.?.getX();
            var rectY1: i32 = self.startPoint.?.getY();
            var rectX2: i32 = self.endPoint.?.getX();
            var rectY2: i32 = self.endPoint.?.getY();
            if (rectX1 > rectX2) {
                rectX2 = rectX1;
                rectX1 = self.endPoint.?.getX();
            }
            if (rectY1 > rectY2) {
                rectY2 = rectY1;
                rectY1 = self.endPoint.?.getY();
            }
            _ = Inheritance.call(graphics.?, "drawRect", .{ rectX1, rectY1, rectX2 - rectX1, rectY2 - rectY1 });
        }
    }
    

    pub fn onMotionGestureEvent(self: *Self, motionGestureEvent: ?*MotionGestureEvent) void {
        _ = Inheritance.call(Inheritance.receiver(self, "getMotionGestureInputList").getMotionGestureInputList().?, "add", .{ motionGestureEvent });
    }
    

    pub fn onScrolledMotionGestureEvent(self: *Self, motionGestureEvent: ?*MotionGestureEvent) void {
        _ = motionGestureEvent;
        _ = self;
    }
    

    pub fn getSelectedRtsLayer(self: *Self) ?*CollidableDestroyableDamageableLayer {
        return self.selectedRtsLayer;
    }
    

    pub fn setSelectedRtsLayer(self: *Self, selectedRtsLayer: ?*CollidableDestroyableDamageableLayer) void {
        self.selectedRtsLayer = selectedRtsLayer;
    }
};


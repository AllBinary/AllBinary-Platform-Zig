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
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const RTSFormInput = @import("org/allbinary/game/input/form/RTSFormInput.zig").RTSFormInput;
const RTSLayer = @import("org/allbinary/game/layer/RTSLayer.zig").RTSLayer;
const RTSLayerInfoPaintable = @import("org/allbinary/game/layer/RTSLayerInfoPaintable.zig").RTSLayerInfoPaintable;
const RTSPlayerLayerInterface = @import("org/allbinary/game/layer/RTSPlayerLayerInterface.zig").RTSPlayerLayerInterface;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const InputFeatureFactory = @import("org/allbinary/game/configuration/feature/InputFeatureFactory.zig").InputFeatureFactory;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const NullRTSFormInputFactory = @import("org/allbinary/game/input/form/NullRTSFormInputFactory.zig").NullRTSFormInputFactory;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const NullRTSLayer = @import("org/allbinary/game/layer/NullRTSLayer.zig").NullRTSLayer;
const CollidableDestroyableDamageableLayer = @import("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.zig").CollidableDestroyableDamageableLayer;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const DisplayChangeEvent = @import("org/allbinary/graphics/displayable/event/DisplayChangeEvent.zig").DisplayChangeEvent;
const MotionGestureEvent = @import("org/allbinary/input/motion/gesture/observer/MotionGestureEvent.zig").MotionGestureEvent;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const SecondaryPlayerQueueFactory = @import("org/allbinary/media/audio/SecondaryPlayerQueueFactory.zig").SecondaryPlayerQueueFactory;
const SelectSound = @import("org/allbinary/media/audio/SelectSound.zig").SelectSound;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const GeographicMapCompositeInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface.zig").GeographicMapCompositeInterface;
const SimpleGeographicMapCellPositionFactory = @import("org/allbinary/media/graphics/geography/map/SimpleGeographicMapCellPositionFactory.zig").SimpleGeographicMapCellPositionFactory;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const GameInputProcessor = @import("org/allbinary/game/input/GameInputProcessor.zig").GameInputProcessor;
const GameInputProcessorUtil = @import("org/allbinary/game/input/GameInputProcessorUtil.zig").GameInputProcessorUtil;
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;
const LayerPositionFinderInterface = @import("org/allbinary/game/input/LayerPositionFinderInterface.zig").LayerPositionFinderInterface;
const PlayerGameInput = @import("org/allbinary/game/input/PlayerGameInput.zig").PlayerGameInput;
const RTSPlayerFireGameInputProcessor = @import("org/allbinary/game/input/RTSPlayerFireGameInputProcessor.zig").RTSPlayerFireGameInputProcessor;
const RTSPlayerLeftGameInputProcessor = @import("org/allbinary/game/input/RTSPlayerLeftGameInputProcessor.zig").RTSPlayerLeftGameInputProcessor;
const RTSPlayerRightGameInputProcessor = @import("org/allbinary/game/input/RTSPlayerRightGameInputProcessor.zig").RTSPlayerRightGameInputProcessor;
const ScrollMapPlayerGameInput = @import("org/allbinary/game/input/ScrollMapPlayerGameInput.zig").ScrollMapPlayerGameInput;
const SelectRTSLayerVisitorFactoryInterface = @import("org/allbinary/game/input/SelectRTSLayerVisitorFactoryInterface.zig").SelectRTSLayerVisitorFactoryInterface;
const SelectedRTSLayersPlayerGameInput = @import("org/allbinary/game/input/SelectedRTSLayersPlayerGameInput.zig").SelectedRTSLayersPlayerGameInput;

pub const RTSPlayerGameInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.RTSPlayerGameInput";
    base: PlayerGameInput = undefined,
    inputProcessorArray: []?*GameInputProcessor = &.{},
    removeInputProcessorArray: []?*GameInputProcessor = &.{},
    inputList: ?*BasicArrayList = null,
    isSingleKeyProcessing: bool = false,
    gameCanvas: ?*AllBinaryGameCanvas = null,
    motionGestureInputList: ?*BasicArrayList = null,
    scrollPlayerGameInput: ?*ScrollMapPlayerGameInput = null,
    selectedRTSLayerPlayerGameInput: ?*SelectedRTSLayersPlayerGameInput = null,
    towerInfoPaintable: ?*RTSLayerInfoPaintable = null,
    rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface = null,
    layerPositionFinderInterface: ?*LayerPositionFinderInterface = null,
    selectedRtsFormInput: ?*RTSFormInput = null,

    fn initFields(this: *Self) void {
        this.inputProcessorArray = array_N66627: { const array_N66627_array = allocator.alloc(?*GameInputProcessor, @intCast(InputFactory.getInstance().?.MAX)) catch unreachable; @memset(array_N66627_array, null); break :array_N66627 array_N66627_array; };
        this.removeInputProcessorArray = array_N66709: { const array_N66709_array = allocator.alloc(?*GameInputProcessor, @intCast(InputFactory.getInstance().?.MAX)) catch unreachable; @memset(array_N66709_array, null); break :array_N66709 array_N66709_array; };
        
        this.isSingleKeyProcessing = Inheritance.call(Features.getInstance().?, "isFeature", .{ InputFeatureFactory.getInstance().?.SINGLE_KEY_REPEAT_PRESS }) or Inheritance.call(Features.getInstance().?, "isFeature", .{ InputFeatureFactory.getInstance().?.SINGLE_KEY_PRESS });
        
        this.motionGestureInputList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        
        
        
        
        
        this.selectedRtsFormInput = Inheritance.upcast(?*RTSFormInput, NullRTSFormInputFactory.getInstance());
    }
    

    pub fn create7(gameCanvas: ?*AllBinaryGameCanvas, inputList: ?*BasicArrayList, playerInputId: i32, towerInfoPaintable: ?*RTSLayerInfoPaintable, rtsPlayerLayerInterface: ?*RTSPlayerLayerInterface, layerPositionFinderInterface: ?*LayerPositionFinderInterface, selectRTSLayerVisitorFactoryInterface: ?*SelectRTSLayerVisitorFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PlayerGameInput, "create3", .{ inputList, BasicArrayListD.create(), playerInputId }).*;
        this.initFields();
        _ = this.initInputProcessors();
        this.gameCanvas = gameCanvas;
        this.inputList = inputList;
        this.towerInfoPaintable = towerInfoPaintable;
        this.rtsPlayerLayerInterface = rtsPlayerLayerInterface;
        this.selectedRTSLayerPlayerGameInput = Inheritance.callStatic(SelectedRTSLayersPlayerGameInput, "create5", .{ this.getRTSLayerInfoPaintable(), this.getRtsPlayerLayerInterface(), this.inputList, playerInputId, selectRTSLayerVisitorFactoryInterface });
        if (!Object.same(this.rtsPlayerLayerInterface, NullRTSLayer.NULL_RTS_LAYER)) {
            _ = Inheritance.call(this, "setSelectedRtsFormInput", .{ Inheritance.receiver(this.rtsPlayerLayerInterface.?, "getRTSFormInput").getRTSFormInput() });
        }
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, Inheritance.receiver(this.gameCanvas.?, "getLayerManager").getLayerManager());
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
        this.scrollPlayerGameInput = Inheritance.callStatic(ScrollMapPlayerGameInput, "create3", .{ geographicMapInterface, this.inputList, playerInputId });
        this.layerPositionFinderInterface = layerPositionFinderInterface;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn setAllBinaryGameLayerManager(self: *Self, allBinaryGameLayerManager: ?*AllBinaryGameLayerManager) void {
        _ = Inheritance.call(self.selectedRTSLayerPlayerGameInput.?, "setAllBinaryGameLayerManager", .{ allBinaryGameLayerManager });
        if (!Object.same(self.selectedRtsFormInput, NullRTSFormInputFactory.getInstance())) {
            _ = Inheritance.call(self.selectedRtsFormInput.?, "setAllBinaryGameLayerManager", .{ allBinaryGameLayerManager });
        }
    }
    

    pub fn onDisplayChangeEvent(self: *Self, displayChangeEvent: ?*DisplayChangeEvent) void {
        _ = displayChangeEvent;
        { // try
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, String.literal("onDisplayChangeEvent") });
            _ = Inheritance.receiverOf(self.getRTSLayerInfoPaintable().?, "update").update();
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("onDisplayChangeEvent"), e });
    }
    

    // throws Exception
    pub fn left(self: *Self) void {
        _ = Inheritance.call(Inheritance.receiver(self.rtsPlayerLayerInterface.?, "getCurrentScrollSelectionForm").getCurrentScrollSelectionForm().?, "processInputKey", .{ Canvas.LEFT });
    }
    

    // throws Exception
    pub fn right(self: *Self) void {
        _ = Inheritance.call(Inheritance.receiver(self.rtsPlayerLayerInterface.?, "getCurrentScrollSelectionForm").getCurrentScrollSelectionForm().?, "processInputKey", .{ Canvas.RIGHT });
    }
    

    pub fn initInputProcessors(self: *Self) void {
        self.inputProcessorArray[@intCast(Canvas.LEFT)] = Inheritance.upcast(@TypeOf(self.inputProcessorArray[@intCast(Canvas.LEFT)]), Inheritance.callStatic(RTSPlayerLeftGameInputProcessor, "create1", .{ self }));
        self.inputProcessorArray[@intCast(Canvas.KEY_NUM0)] = Inheritance.upcast(@TypeOf(self.inputProcessorArray[@intCast(Canvas.KEY_NUM0)]), self.inputProcessorArray[@intCast(Canvas.LEFT)]);
        self.inputProcessorArray[@intCast(Canvas.RIGHT)] = Inheritance.upcast(@TypeOf(self.inputProcessorArray[@intCast(Canvas.RIGHT)]), Inheritance.callStatic(RTSPlayerRightGameInputProcessor, "create1", .{ self }));
        self.inputProcessorArray[@intCast(Canvas.KEY_POUND)] = Inheritance.upcast(@TypeOf(self.inputProcessorArray[@intCast(Canvas.KEY_POUND)]), self.inputProcessorArray[@intCast(Canvas.RIGHT)]);
        self.removeInputProcessorArray[@intCast(Canvas.KEY_NUM1)] = Inheritance.upcast(@TypeOf(self.removeInputProcessorArray[@intCast(Canvas.KEY_NUM1)]), Inheritance.callStatic(RTSPlayerFireGameInputProcessor, "create1", .{ self }));
        self.removeInputProcessorArray[@intCast(Canvas.KEY_NUM3)] = Inheritance.upcast(@TypeOf(self.removeInputProcessorArray[@intCast(Canvas.KEY_NUM3)]), self.removeInputProcessorArray[@intCast(Canvas.KEY_NUM1)]);
        self.removeInputProcessorArray[@intCast(Canvas.KEY_NUM3)] = Inheritance.upcast(@TypeOf(self.removeInputProcessorArray[@intCast(Canvas.KEY_NUM3)]), self.removeInputProcessorArray[@intCast(Canvas.KEY_NUM1)]);
        self.removeInputProcessorArray[@intCast(Canvas.LEFT)] = Inheritance.upcast(@TypeOf(self.removeInputProcessorArray[@intCast(Canvas.LEFT)]), self.removeInputProcessorArray[@intCast(Canvas.KEY_NUM1)]);
        self.removeInputProcessorArray[@intCast(Canvas.RIGHT)] = Inheritance.upcast(@TypeOf(self.removeInputProcessorArray[@intCast(Canvas.RIGHT)]), self.removeInputProcessorArray[@intCast(Canvas.KEY_NUM1)]);
        self.removeInputProcessorArray[@intCast(Canvas.KEY_NUM0)] = Inheritance.upcast(@TypeOf(self.removeInputProcessorArray[@intCast(Canvas.KEY_NUM0)]), self.removeInputProcessorArray[@intCast(Canvas.KEY_NUM1)]);
        self.removeInputProcessorArray[@intCast(Canvas.KEY_POUND)] = Inheritance.upcast(@TypeOf(self.removeInputProcessorArray[@intCast(Canvas.KEY_POUND)]), self.removeInputProcessorArray[@intCast(Canvas.KEY_NUM1)]);
        _ = Inheritance.callStatic(GameInputProcessorUtil, "init", .{ self.inputProcessorArray });
        _ = Inheritance.callStatic(GameInputProcessorUtil, "init", .{ self.removeInputProcessorArray });
    }
    

    // throws Exception
    pub fn processInput(self: *Self, layerManager: ?*AllBinaryLayerManager) void {
        { // try
            _ = Inheritance.call(self, "processMotionInput", .{ layerManager });
            const size: i32 = self.inputList.?.size();
            var key: i32 = 0;
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const gameKeyEvent: ?*GameKeyEvent = Inheritance.cast(?*GameKeyEvent, Inheritance.call(self.inputList.?, "get", .{ index }));
                key = Inheritance.receiver(gameKeyEvent.?, "getKey").getKey();
                _ = Inheritance.call(self.getScrollPlayerGameInput().?, "processInputKey", .{ key });
                _ = Inheritance.call(self.getSelectedBuildingPlayerGameInput().?, "processInputKey", .{ key });
                _ = Inheritance.call(self.inputProcessorArray[@intCast(key)].?, "processEvent", .{ layerManager, gameKeyEvent });
                _ = Inheritance.call(self.removeInputProcessorArray[@intCast(key)].?, "processEvent", .{ layerManager, gameKeyEvent });
                }
            }
            if (self.isIsSingleKeyProcessing()) {
                _ = Inheritance.receiver(self, "clear").clear();
            } else {
                _ = Inheritance.receiver(self, "update").update();
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.PROCESS_INPUT, e });
    }
    

    // throws Exception
    pub fn processMotionInput(self: *Self, layerManager: ?*AllBinaryLayerManager) void {
        _ = layerManager;
        _ = self;
    }
    

    // throws Exception
    pub fn select(self: *Self, motionGestureEvent: ?*MotionGestureEvent) void {
        const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(motionGestureEvent.?, "getCurrentPoint").getCurrentPoint());
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, Inheritance.receiver(self.gameCanvas.?, "getLayerManager").getLayerManager());
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
        const allBinaryTiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        const x: i32 = point.?.getX() + Inheritance.receiver(allBinaryTiledLayer.?, "getXP").getXP();
        const y: i32 = point.?.getY() + Inheritance.receiver(allBinaryTiledLayer.?, "getYP").getYP();
        var geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.call(geographicMapInterface.?, "getCellPositionAtXYNoThrow", .{ x, y }));
        if (!Object.same(geographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) {
            _ = Inheritance.call(SecondaryPlayerQueueFactory.getInstance().?, "add", .{ SelectSound.getInstance() });
            var layer: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.call(self.layerPositionFinderInterface.?, "getLayerInterface", .{ geographicMapCellPosition }));
            if (Object.same(layer, AllBinaryLayer.NULL_ALLBINARY_LAYER)) {
                layer = Inheritance.upcast(@TypeOf(layer), CollidableDestroyableDamageableLayer.getNullInstance());
            } else {
                geographicMapCellPosition = Inheritance.upcast(@TypeOf(geographicMapCellPosition), Inheritance.call(geographicMapInterface.?, "getCellPositionAtXY", .{ Inheritance.receiver(layer.?, "getXP").getXP(), Inheritance.receiver(layer.?, "getYP").getYP() }));
            }
            const foundRTSLayer: ?*CollidableDestroyableDamageableLayer = Inheritance.cast(?*CollidableDestroyableDamageableLayer, layer);
            _ = Inheritance.call(self, "setSelectedRTSLayer", .{ foundRTSLayer, geographicMapCellPosition });
        } else {
            const commonLabels: ?*CommonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Off Of Map -") }).?, "append", .{ commonLabels.?.WIDTH_LABEL }).?, "appendint", .{ @as(i32, @intCast(Inheritance.receiver(allBinaryTiledLayer.?, "getWidth").getWidth())) }).?, "append", .{ commonLabels.?.HEIGHT_LABEL }).?, "appendint", .{ @as(i32, @intCast(Inheritance.receiver(allBinaryTiledLayer.?, "getHeight").getHeight())) }))), self, String.literal("select") });
        }
    }
    

    // throws Exception
    pub fn setSelectedRTSLayer(self: *Self, rtsLayer: ?*CollidableDestroyableDamageableLayer, geographicMapCellPosition: ?*GeographicMapCellPosition) void {
        _ = geographicMapCellPosition;
        _ = Inheritance.call(self.getSelectedBuildingPlayerGameInput().?, "setSelectedRTSLayer", .{ rtsLayer });
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.receiverOf(self.getSelectedRtsFormInput().?, "getSelectedGeographicCellPosition").getSelectedGeographicCellPosition());
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, Inheritance.receiver(self.gameCanvas.?, "getLayerManager").getLayerManager());
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
        const allBinaryTiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        _ = Inheritance.call(graphics.?, "setColor", .{ Inheritance.receiverOf(BasicColorFactory.getInstance().?.GREEN.?, "intValue").intValue() });
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(self.getSelectedBuildingPlayerGameInput().?, "getPaintSelectedRTSLayersList").getPaintSelectedRTSLayersList());
        var width: i32 = 0;
        var height: i32 = 0;
        if (list.?.size() > 0) {
            {
                var index: i32 = list.?.size() - 1;
                while (index >= 0) : (index -= 1) {
                const rtsLayer: ?*RTSLayer = Inheritance.cast(?*RTSLayer, Inheritance.call(list.?, "get", .{ index }));
                width = Inheritance.receiver(rtsLayer.?, "getWidth").getWidth();
                height = Inheritance.receiver(rtsLayer.?, "getHeight").getHeight();
                _ = Inheritance.call(graphics.?, "drawRect", .{ Inheritance.receiver(rtsLayer.?, "getXP").getXP() - Inheritance.receiver(allBinaryTiledLayer.?, "getXP").getXP(), Inheritance.receiver(rtsLayer.?, "getYP").getYP() - Inheritance.receiver(allBinaryTiledLayer.?, "getYP").getYP(), width, height });
                }
            }
        } else if (!Object.same(geographicMapCellPosition, SimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) {
            const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(geographicMapCellPosition.?, "getPoint").getPoint());
            width = Inheritance.receiver(allBinaryTiledLayer.?, "getCellWidth").getCellWidth();
            height = Inheritance.receiver(allBinaryTiledLayer.?, "getCellHeight").getCellHeight();
            _ = Inheritance.call(graphics.?, "drawRect", .{ point.?.getX() - Inheritance.receiver(allBinaryTiledLayer.?, "getXP").getXP(), point.?.getY() - Inheritance.receiver(allBinaryTiledLayer.?, "getYP").getYP(), width, height });
        }
    }
    

    pub fn updatePaintable(self: *Self) void {
        _ = self;
    }
    

    pub fn getSelectedBuildingPlayerGameInput(self: *Self) ?*SelectedRTSLayersPlayerGameInput {
        return self.selectedRTSLayerPlayerGameInput;
    }
    

    pub fn getSelectedRtsFormInput(self: *Self) ?*RTSFormInput {
        return self.selectedRtsFormInput;
    }
    

    pub fn setSelectedRtsFormInput(self: *Self, selectedRtsFormInput: ?*RTSFormInput) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("RTSFormInput: ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ selectedRtsFormInput }) }))), self, String.literal("setSelectedRtsFormInput") });
        self.selectedRtsFormInput = selectedRtsFormInput;
    }
    

    pub fn getRtsPlayerLayerInterface(self: *Self) ?*RTSPlayerLayerInterface {
        return self.rtsPlayerLayerInterface;
    }
    

    pub fn getRTSLayerInfoPaintable(self: *Self) ?*RTSLayerInfoPaintable {
        return self.towerInfoPaintable;
    }
    

    pub fn getMotionGestureInputList(self: *Self) ?*BasicArrayList {
        return self.motionGestureInputList;
    }
    

    pub fn getGameCanvas(self: *Self) ?*AllBinaryGameCanvas {
        return self.gameCanvas;
    }
    

    pub fn isIsSingleKeyProcessing(self: *Self) bool {
        return self.isSingleKeyProcessing;
    }
    

    pub fn getScrollPlayerGameInput(self: *Self) ?*ScrollMapPlayerGameInput {
        return self.scrollPlayerGameInput;
    }
};


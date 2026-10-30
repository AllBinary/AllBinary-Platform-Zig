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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const InputFeatureFactory = @import("org/allbinary/game/configuration/feature/InputFeatureFactory.zig").InputFeatureFactory;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const AllBinaryTiledLayer = @import("org/allbinary/game/layer/AllBinaryTiledLayer.zig").AllBinaryTiledLayer;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const ScrollMapEvent = @import("org/allbinary/layer/event/ScrollMapEvent.zig").ScrollMapEvent;
const ScrollMapEventHandler = @import("org/allbinary/layer/event/ScrollMapEventHandler.zig").ScrollMapEventHandler;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const GameInputProcessor = @import("org/allbinary/game/input/GameInputProcessor.zig").GameInputProcessor;
const GameInputProcessorUtil = @import("org/allbinary/game/input/GameInputProcessorUtil.zig").GameInputProcessorUtil;
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;
const PlayerGameInput = @import("org/allbinary/game/input/PlayerGameInput.zig").PlayerGameInput;
const ScrollMapDownGameInputProcessor = @import("org/allbinary/game/input/ScrollMapDownGameInputProcessor.zig").ScrollMapDownGameInputProcessor;
const ScrollMapLeftGameInputProcessor = @import("org/allbinary/game/input/ScrollMapLeftGameInputProcessor.zig").ScrollMapLeftGameInputProcessor;
const ScrollMapRightGameInputProcessor = @import("org/allbinary/game/input/ScrollMapRightGameInputProcessor.zig").ScrollMapRightGameInputProcessor;
const ScrollMapUpGameInputProcessor = @import("org/allbinary/game/input/ScrollMapUpGameInputProcessor.zig").ScrollMapUpGameInputProcessor;

pub const ScrollMapPlayerGameInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.ScrollMapPlayerGameInput";
    base: PlayerGameInput = undefined,
    inputProcessorArray: []?*GameInputProcessor = &.{},
    border: i32 = 0,
    inputList: ?*BasicArrayList = null,
    isSingleKeyProcessing: bool = false,
    geographicMapInterface: ?*BasicGeographicMap = null,
    maxBottom: i32 = 0,
    maxRight: i32 = 0,
    scrollMapEvent: ?*ScrollMapEvent = null,

    fn initFields(this: *Self) void {
        this.inputProcessorArray = array_N66037: { const array_N66037_array = allocator.alloc(?*GameInputProcessor, @intCast(InputFactory.getInstance().?.MAX)) catch unreachable; @memset(array_N66037_array, null); break :array_N66037 array_N66037_array; };
        this.border = 150;
        
        this.isSingleKeyProcessing = Inheritance.call(Features.getInstance().?, "isFeature", .{ InputFeatureFactory.getInstance().?.SINGLE_KEY_REPEAT_PRESS }) or Inheritance.call(Features.getInstance().?, "isFeature", .{ InputFeatureFactory.getInstance().?.SINGLE_KEY_PRESS });
        
        this.maxBottom = 0;
        this.maxRight = 0;
        this.scrollMapEvent = Inheritance.callStatic(ScrollMapEvent, "create1", .{ this });
    }
    

    pub fn create3(geographicMapInterface: ?*BasicGeographicMap, list: ?*BasicArrayList, playerInputId: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PlayerGameInput, "create3", .{ list, BasicArrayListD.create(), playerInputId }).*;
        this.initFields();
        _ = this.initInputProcessors();
        this.geographicMapInterface = geographicMapInterface;
        this.inputList = list;
        _ = this.init();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn move(self: *Self, dx: i32, dy: i32) void {
        const terrainTiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(self.geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        _ = Inheritance.call(terrainTiledLayer.?, "moveDXY", .{ -dx, -dy });
        _ = Inheritance.call(self.scrollMapEvent.?, "setDxDy", .{ -dx, -dy });
        _ = Inheritance.call(ScrollMapEventHandler.getInstance().?, "fireEvent", .{ self.scrollMapEvent });
    }
    

    pub fn init(self: *Self) void {
        self.maxBottom = self.getSpecialHeight();
        self.maxRight = self.getSpecialWidth();
    }
    

    // throws Exception
    pub fn scrollMiddleX(self: *Self) void {
        const terrainTiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(self.geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        _ = Inheritance.call(self, "move", .{ -Inheritance.receiver(terrainTiledLayer.?, "getXP").getXP(), 0 });
        if (Inheritance.receiver(terrainTiledLayer.?, "getWidth").getWidth() < displayInfo.?.getLastWidth()) {
            const diffX: i32 = ((displayInfo.?.getLastWidth() - Inheritance.receiver(terrainTiledLayer.?, "getWidth").getWidth()) >> @intCast(1));
            _ = Inheritance.call(self, "move", .{ -diffX, 0 });
        } else {
            const diffX: i32 = ((Inheritance.receiver(terrainTiledLayer.?, "getWidth").getWidth() - displayInfo.?.getLastWidth()) >> @intCast(1));
            _ = Inheritance.call(self, "move", .{ diffX, 0 });
        }
    }
    

    // throws Exception
    pub fn scrollY(self: *Self, anchor: i32) void {
        const terrainTiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(self.geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        if (anchor == Graphics.TOP) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Top"), self, String.literal("scrollY") });
        } else if (anchor == Graphics.BOTTOM) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Bottom"), self, String.literal("scrollY") });
            const diffY: i32 = (Inheritance.receiver(terrainTiledLayer.?, "getHeight").getHeight() - displayInfo.?.getLastHeight());
            _ = Inheritance.call(self, "move", .{ 0, diffY });
        } else if (anchor == Graphics.VCENTER) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Center"), self, String.literal("scrollY") });
            const diffY: i32 = (divide_N67700: { const left_N67700 = (Inheritance.receiver(terrainTiledLayer.?, "getHeight").getHeight() - displayInfo.?.getLastHeight()); const right_N67700 = 2; break :divide_N67700 if (comptime @typeInfo(@TypeOf(left_N67700)) == .int or @TypeOf(left_N67700) == comptime_int) @divTrunc(left_N67700, right_N67700) else left_N67700 / right_N67700; });
            _ = Inheritance.call(self, "move", .{ 0, diffY });
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("No Such Anchor Supported"); break :exception error.Exception; }});
        }
    }
    

    // throws Exception
    pub fn up(self: *Self) void {
        const y: i32 = Inheritance.receiverOf(Inheritance.receiver(self.geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "getYP").getYP() - 10;
        if (Inheritance.call(self, "keepOnMapMinY", .{ y })) {
            _ = Inheritance.call(self, "move", .{ 0, -10 });
        }
    }
    

    // throws Exception
    pub fn down(self: *Self) void {
        const y: i32 = -Inheritance.receiverOf(Inheritance.receiver(self.geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "getYP").getYP() + 10;
        if (Inheritance.call(self, "keepOnMapMaxY", .{ y })) {
            _ = Inheritance.call(self, "move", .{ 0, 10 });
        }
    }
    

    // throws Exception
    pub fn right(self: *Self) void {
        const x: i32 = Inheritance.receiverOf(Inheritance.receiver(self.geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "getYP").getYP() + 10;
        if (Inheritance.call(self, "keepOnMapMinX", .{ x })) {
            _ = Inheritance.call(self, "move", .{ 10, 0 });
        }
    }
    

    // throws Exception
    pub fn left(self: *Self) void {
        const x: i32 = -Inheritance.receiverOf(Inheritance.receiver(self.geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "getYP").getYP() - 10;
        if (Inheritance.call(self, "keepOnMapMaxX", .{ x })) {
            _ = Inheritance.call(self, "move", .{ -10, 0 });
        }
    }
    

    pub fn initInputProcessors(self: *Self) void {
        self.inputProcessorArray[@intCast(Canvas.UP)] = Inheritance.upcast(@TypeOf(self.inputProcessorArray[@intCast(Canvas.UP)]), Inheritance.callStatic(ScrollMapUpGameInputProcessor, "create1", .{ self }));
        self.inputProcessorArray[@intCast(Canvas.DOWN)] = Inheritance.upcast(@TypeOf(self.inputProcessorArray[@intCast(Canvas.DOWN)]), Inheritance.callStatic(ScrollMapDownGameInputProcessor, "create1", .{ self }));
        self.inputProcessorArray[@intCast(Canvas.KEY_NUM9)] = Inheritance.upcast(@TypeOf(self.inputProcessorArray[@intCast(Canvas.KEY_NUM9)]), Inheritance.callStatic(ScrollMapRightGameInputProcessor, "create1", .{ self }));
        self.inputProcessorArray[@intCast(Canvas.KEY_NUM7)] = Inheritance.upcast(@TypeOf(self.inputProcessorArray[@intCast(Canvas.KEY_NUM7)]), Inheritance.callStatic(ScrollMapLeftGameInputProcessor, "create1", .{ self }));
        _ = Inheritance.callStatic(GameInputProcessorUtil, "init", .{ self.inputProcessorArray });
    }
    

    // throws Exception
    pub fn processInputKey(self: *Self, key: i32) void {
        _ = Inheritance.call(self.inputProcessorArray[@intCast(key)].?, "processEvent", .{ AllBinaryGameLayerManager.getNullInstance(), GameKeyEvent.NONE });
    }
    

    // throws Exception
    pub fn processInput(self: *Self, layerManager: ?*AllBinaryLayerManager) void {
        _ = layerManager;
        { // try
            const size: i32 = self.inputList.?.size();
            var key: i32 = 0;
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const gameKeyEvent: ?*GameKeyEvent = Inheritance.cast(?*GameKeyEvent, Inheritance.call(self.inputList.?, "get", .{ index }));
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
    

    pub fn getSpecialHeight(self: *Self) i32 {
        const terrainTiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(self.geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        if (Inheritance.receiver(terrainTiledLayer.?, "getHeight").getHeight() > displayInfo.?.getLastHeight()) {
            return Inheritance.receiver(terrainTiledLayer.?, "getHeight").getHeight() - displayInfo.?.getLastHeight();
        } else {
            return displayInfo.?.getLastHeight() - Inheritance.receiver(terrainTiledLayer.?, "getHeight").getHeight() + Inheritance.receiver(terrainTiledLayer.?, "getCellHeight").getCellHeight();
        }
    }
    

    pub fn getSpecialWidth(self: *Self) i32 {
        const terrainTiledLayer: ?*AllBinaryTiledLayer = Inheritance.upcast(?*AllBinaryTiledLayer, Inheritance.receiver(self.geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer());
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        if (Inheritance.receiver(terrainTiledLayer.?, "getWidth").getWidth() > displayInfo.?.getLastWidth()) {
            return Inheritance.receiver(terrainTiledLayer.?, "getWidth").getWidth() - displayInfo.?.getLastWidth();
        } else {
            return displayInfo.?.getLastWidth() - Inheritance.receiver(terrainTiledLayer.?, "getWidth").getWidth() + Inheritance.receiver(terrainTiledLayer.?, "getCellWidth").getCellWidth();
        }
    }
    

    pub fn keepOnMapMaxY(self: *Self, newY: i32) bool {
        _ = newY;
        const y: i32 = Inheritance.receiverOf(Inheritance.receiver(self.geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "getYP").getYP();
        if (y > self.maxBottom + self.border) {
            return false;
        } else {
            return true;
        }
    }
    

    pub fn keepOnMapMinY(self: *Self, newY: i32) bool {
        _ = newY;
        const y: i32 = Inheritance.receiverOf(Inheritance.receiver(self.geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "getYP").getYP();
        if (y < -self.border) {
            return false;
        } else {
            return true;
        }
    }
    

    pub fn keepOnMapMaxX(self: *Self, newX: i32) bool {
        _ = newX;
        const x: i32 = Inheritance.receiverOf(Inheritance.receiver(self.geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "getXP").getXP();
        if (x < -self.maxRight - self.border) {
            return false;
        } else {
            return true;
        }
    }
    

    pub fn keepOnMapMinX(self: *Self, newX: i32) bool {
        _ = newX;
        const x: i32 = Inheritance.receiverOf(Inheritance.receiver(self.geographicMapInterface.?, "getAllBinaryTiledLayer").getAllBinaryTiledLayer().?, "getXP").getXP();
        if (x > self.border) {
            return false;
        } else {
            return true;
        }
    }
};


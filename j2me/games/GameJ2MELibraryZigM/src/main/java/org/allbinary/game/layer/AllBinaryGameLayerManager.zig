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
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const NullPlayerGameInputComposite = @import("org/allbinary/game/input/NullPlayerGameInputComposite.zig").NullPlayerGameInputComposite;
const PlayerGameInputCompositeInterface = @import("org/allbinary/game/input/PlayerGameInputCompositeInterface.zig").PlayerGameInputCompositeInterface;
const ItemColorFactory = @import("org/allbinary/graphics/ItemColorFactory.zig").ItemColorFactory;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const LayerProcessor = @import("org/allbinary/layer/LayerProcessor.zig").LayerProcessor;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const AllBinaryGameLayerManager = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.AllBinaryGameLayerManager";
    base: AllBinaryLayerManager = undefined,
    backgroundBasicColor: ?*BasicColor = null,
    foregroundBasicColor: ?*BasicColor = null,
    gameInfo: ?*GameInfo = null,
    playerGameInputCompositeInterface: ?*PlayerGameInputCompositeInterface = null,
    var NULL_ALLBINARY_LAYER_MANAGER: ?Object = undefined;
    pub var ID: ?*Integer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_ALLBINARY_LAYER_MANAGER = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
        ID = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 22 }));
    }

    fn initFields(this: *Self) void {
        
        
        
        this.playerGameInputCompositeInterface = Inheritance.upcast(?*PlayerGameInputCompositeInterface, NullPlayerGameInputComposite.NULL_PLAYER_GAME_INPUT_COMPOSITE);
    }
    

    pub fn getNullInstance() ?*AllBinaryGameLayerManager {
        if (Object.same(AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER, NullUtil.getInstance().?.NULL_OBJECT)) {
            AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER = Inheritance.upcast(@TypeOf(AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER), Inheritance.callStatic(AllBinaryGameLayerManager, "create3", .{ BasicColorFactory.getInstance().?.BLACK, BasicColorFactory.getInstance().?.WHITE, GameInfo.NONE }));
        }
        return Inheritance.cast(?*AllBinaryGameLayerManager, AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER);
    }
    

    pub fn create3(backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor, gameInfo: ?*GameInfo) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = AllBinaryLayerManager.create().*;
        this.initFields();
        this.backgroundBasicColor = backgroundBasicColor;
        this.foregroundBasicColor = foregroundBasicColor;
        const itemColorFactory: ?*ItemColorFactory = Inheritance.upcast(?*ItemColorFactory, ItemColorFactory.getInstance());
        itemColorFactory.?.INVERT_PAINT = Inheritance.upcast(@TypeOf(itemColorFactory.?.INVERT_PAINT), this.backgroundBasicColor.?.intValue());
        itemColorFactory.?.PAINT = Inheritance.upcast(@TypeOf(itemColorFactory.?.PAINT), this.foregroundBasicColor.?.intValue());
        this.gameInfo = gameInfo;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getLayerManager(self: *Self) ?*AllBinaryLayerManager {
        return Inheritance.upcast(?*AllBinaryLayerManager, self);
    }
    

    pub fn init(self: *Self) void {
        _ = self;
    }
    

    pub fn getBackgroundBasicColor(self: *Self) ?*BasicColor {
        return self.backgroundBasicColor;
    }
    

    pub fn setBackgroundBasicColor(self: *Self, backgroundBasicColor: ?*BasicColor) void {
        self.backgroundBasicColor = backgroundBasicColor;
        ItemColorFactory.getInstance().?.INVERT_PAINT = Inheritance.upcast(@TypeOf(ItemColorFactory.getInstance().?.INVERT_PAINT), self.backgroundBasicColor.?.intValue());
    }
    

    pub fn getForegroundBasicColor(self: *Self) ?*BasicColor {
        return self.foregroundBasicColor;
    }
    

    pub fn setForegroundBasicColor(self: *Self, foregroundBasicColor: ?*BasicColor) void {
        self.foregroundBasicColor = foregroundBasicColor;
        ItemColorFactory.getInstance().?.PAINT = Inheritance.upcast(@TypeOf(ItemColorFactory.getInstance().?.PAINT), self.foregroundBasicColor.?.intValue());
    }
    

    pub fn getGameInfo(self: *Self) ?*GameInfo {
        return self.gameInfo;
    }
    

    pub fn setGameInfo(self: *Self, gameInfo: ?*GameInfo) void {
        self.gameInfo = gameInfo;
    }
    

    pub fn setLayerProcessorList(self: *Self, list: ?*BasicArrayList) void {
        const layerProcessorInterfaceArray: []?*LayerProcessor = array_N67262: { const array_N67262_array = allocator.alloc(?*LayerProcessor, @intCast(list.?.size())) catch unreachable; @memset(array_N67262_array, null); break :array_N67262 array_N67262_array; };
        const size: i32 = @as(i32, @intCast(layerProcessorInterfaceArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            layerProcessorInterfaceArray[@intCast(index)] = Inheritance.cast(?*LayerProcessor, list.?.objectArray[@intCast(index)]);
            }
        }
        _ = Inheritance.call(self, "setLayerProcessorArray", .{ layerProcessorInterfaceArray });
    }
    

    pub fn setPlayerGameInputCompositeInterface(self: *Self, playerGameInputCompositeInterface: ?*PlayerGameInputCompositeInterface) void {
        self.playerGameInputCompositeInterface = playerGameInputCompositeInterface;
    }
    

    pub fn getPlayerGameInputCompositeInterface(self: *Self) ?*PlayerGameInputCompositeInterface {
        return self.playerGameInputCompositeInterface;
    }
};


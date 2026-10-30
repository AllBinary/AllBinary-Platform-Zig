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
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const PlayerGameInput = @import("org/allbinary/game/input/PlayerGameInput.zig").PlayerGameInput;
const PlayerGameInputCompositeInterface = @import("org/allbinary/game/input/PlayerGameInputCompositeInterface.zig").PlayerGameInputCompositeInterface;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StaticViewPosition = @import("org/allbinary/view/StaticViewPosition.zig").StaticViewPosition;
const AllBinaryGameLayer = @import("org/allbinary/game/layer/AllBinaryGameLayer.zig").AllBinaryGameLayer;

pub const PlayerGameInputGameLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.PlayerGameInputGameLayer";
    base: AllBinaryGameLayer = undefined,
    playerGameInput: ?*PlayerGameInput = null,
    // Implements PlayerGameInputCompositeInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(playerInputId: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryGameLayer, "create3", .{ StringUtil.getInstance().?.EMPTY_STRING, Inheritance.callStatic(Rectangle, "create3", .{ PointFactory.getInstance().?.ZERO_ZERO, 0, 0 }), Inheritance.callStatic(StaticViewPosition, "create3", .{ 0, 0, 0 }) }).*;
        this.initFields();
        this.playerGameInput = Inheritance.callStatic(PlayerGameInput, "create3", .{ Inheritance.receiver(this, "getGameKeyEventList").getGameKeyEventList(), BasicArrayListD.create(), playerInputId });
        const canvasStrings: ?*CanvasStrings = Inheritance.upcast(?*CanvasStrings, CanvasStrings.getInstance());
        _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "putF", .{ String.literal("Danger Danger Danger: Should Not Be Called Except For Testing Input"), this, canvasStrings.?.PAINT });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getPlayerGameInput(self: *Self) ?*PlayerGameInput {
        return self.playerGameInput;
    }
    

    pub fn initInputProcessors(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn processInput(self: *Self, myManager: ?*AllBinaryLayerManager) void {
        _ = myManager;
        _ = self;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
};


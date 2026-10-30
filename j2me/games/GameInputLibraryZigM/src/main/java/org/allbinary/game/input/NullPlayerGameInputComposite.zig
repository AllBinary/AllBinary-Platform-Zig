// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const NoPlayerGameInput = @import("org/allbinary/game/input/NoPlayerGameInput.zig").NoPlayerGameInput;
const PlayerGameInput = @import("org/allbinary/game/input/PlayerGameInput.zig").PlayerGameInput;
const PlayerGameInputCompositeInterface = @import("org/allbinary/game/input/PlayerGameInputCompositeInterface.zig").PlayerGameInputCompositeInterface;

pub const NullPlayerGameInputComposite = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.NullPlayerGameInputComposite";
    pub const java_interfaces = .{ PlayerGameInputCompositeInterface };
    // Implements PlayerGameInputCompositeInterface
    pub var NULL_PLAYER_GAME_INPUT_COMPOSITE: ?*NullPlayerGameInputComposite = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_PLAYER_GAME_INPUT_COMPOSITE = NullPlayerGameInputComposite.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    // throws Exception
    pub fn processInput(self: *Self, layerManager: ?*AllBinaryLayerManager) void {
        _ = layerManager;
        _ = self;
    }
    

    pub fn initInputProcessors(self: *Self) void {
        _ = self;
    }
    

    pub fn getPlayerGameInput(self: *Self) ?*PlayerGameInput {
        _ = self;
        return Inheritance.upcast(?*PlayerGameInput, NoPlayerGameInput.getInstance());
    }
};


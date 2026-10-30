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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameNotificationHud = @import("org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud.zig").GameNotificationHud;
const DestroyedEvent = @import("org/allbinary/game/combat/destroy/event/DestroyedEvent.zig").DestroyedEvent;
const PlayerGameInput = @import("org/allbinary/game/input/PlayerGameInput.zig").PlayerGameInput;
const NullRTSFormInputFactory = @import("org/allbinary/game/input/form/NullRTSFormInputFactory.zig").NullRTSFormInputFactory;
const RTSFormInput = @import("org/allbinary/game/input/form/RTSFormInput.zig").RTSFormInput;
const Capital = @import("org/allbinary/game/layer/capital/Capital.zig").Capital;
const ScrollSelectionForm = @import("org/allbinary/graphics/form/ScrollSelectionForm.zig").ScrollSelectionForm;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const Sound = @import("org/allbinary/media/audio/Sound.zig").Sound;
const NullPathFindingLayer = @import("org/allbinary/game/layer/NullPathFindingLayer.zig").NullPathFindingLayer;
const PlayerOwnedRTSLayers = @import("org/allbinary/game/layer/PlayerOwnedRTSLayers.zig").PlayerOwnedRTSLayers;
const RTSPlayerLayerInterface = @import("org/allbinary/game/layer/RTSPlayerLayerInterface.zig").RTSPlayerLayerInterface;

pub const NullRTSLayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.NullRTSLayer";
    pub const java_interfaces = .{ RTSPlayerLayerInterface };
    base: NullPathFindingLayer = undefined,
    // Implements RTSPlayerLayerInterface
    pub var NULL_RTS_LAYER: ?*NullRTSLayer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_RTS_LAYER = NullRTSLayer.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = NullPathFindingLayer.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn processInput(self: *Self, layerManager: ?*AllBinaryLayerManager) void {
        _ = layerManager;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn initInputProcessors(self: *Self) void {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getGameNotificationHud(self: *Self) ?*GameNotificationHud {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getCurrentScrollSelectionForm(self: *Self) ?*ScrollSelectionForm {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn setCurrentScrollSelectionForm(self: *Self, currentScrollSelectionForm: ?*ScrollSelectionForm) void {
        _ = currentScrollSelectionForm;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getBuildingScrollSelectionForm(self: *Self) ?*ScrollSelectionForm {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getPlayerGameInput(self: *Self) ?*PlayerGameInput {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn onDestroyed(self: *Self, destroyedEvent: ?*DestroyedEvent) void {
        _ = destroyedEvent;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn processTick(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getCapital(self: *Self) ?*Capital {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getRTSFormInput(self: *Self) ?*RTSFormInput {
        _ = self;
        return Inheritance.upcast(?*RTSFormInput, NullRTSFormInputFactory.getInstance());
    }
    

    pub fn add(self: *Self, sound: ?*Sound) void {
        _ = sound;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getPlayerOwnedRTSLayers(self: *Self) ?*PlayerOwnedRTSLayers {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn implmentsArtificialIntelligenceCompositeInterface(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};


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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameNotificationHudCompositeInterface = @import("org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHudCompositeInterface.zig").GameNotificationHudCompositeInterface;
const BuildMenuCompositeInterface = @import("org/allbinary/game/input/BuildMenuCompositeInterface.zig").BuildMenuCompositeInterface;
const RTSFormInput = @import("org/allbinary/game/input/form/RTSFormInput.zig").RTSFormInput;
const Capital = @import("org/allbinary/game/layer/capital/Capital.zig").Capital;
const DestroyedEventListenerInterface = @import("org/allbinary/game/combat/destroy/event/DestroyedEventListenerInterface.zig").DestroyedEventListenerInterface;
const PlayerGameInputCompositeInterface = @import("org/allbinary/game/input/PlayerGameInputCompositeInterface.zig").PlayerGameInputCompositeInterface;
const TickableInterface = @import("org/allbinary/game/tick/TickableInterface.zig").TickableInterface;
const Sound = @import("org/allbinary/media/audio/Sound.zig").Sound;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const PlayerOwnedRTSLayers = @import("org/allbinary/game/layer/PlayerOwnedRTSLayers.zig").PlayerOwnedRTSLayers;

// Java interface: an implementation is a pointer and a table of functions
pub const RTSPlayerLayerInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.RTSPlayerLayerInterface";
    pointer: *anyopaque,
    object: Object,
    base: GameNotificationHudCompositeInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getCapitalFn: *const fn (pointer: *anyopaque) ?*Capital,
    getRTSFormInputFn: *const fn (pointer: *anyopaque) ?*RTSFormInput,
    addFn: *const fn (pointer: *anyopaque, sound: ?*Sound) void,
    getPlayerOwnedRTSLayersFn: *const fn (pointer: *anyopaque) ?*PlayerOwnedRTSLayers,
    implmentsArtificialIntelligenceCompositeInterfaceFn: *const fn (pointer: *anyopaque) bool,

    pub fn getCapital(self: *Self) ?*Capital {
        return self.getCapitalFn(self.pointer);
    }

    pub fn getRTSFormInput(self: *Self) ?*RTSFormInput {
        return self.getRTSFormInputFn(self.pointer);
    }

    pub fn add(self: *Self, sound: ?*Sound) void {
        return self.addFn(self.pointer, sound);
    }

    pub fn getPlayerOwnedRTSLayers(self: *Self) ?*PlayerOwnedRTSLayers {
        return self.getPlayerOwnedRTSLayersFn(self.pointer);
    }

    pub fn implmentsArtificialIntelligenceCompositeInterface(self: *Self) bool {
        return self.implmentsArtificialIntelligenceCompositeInterfaceFn(self.pointer);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn getCapital(pointer: *anyopaque) ?*Capital {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Capital, Inheritance.receiver(implementation, "getCapital").getCapital());
            }
            fn getRTSFormInput(pointer: *anyopaque) ?*RTSFormInput {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*RTSFormInput, Inheritance.receiver(implementation, "getRTSFormInput").getRTSFormInput());
            }
            fn add(pointer: *anyopaque, sound: ?*Sound) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "add").add(sound);
            }
            fn getPlayerOwnedRTSLayers(pointer: *anyopaque) ?*PlayerOwnedRTSLayers {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*PlayerOwnedRTSLayers, Inheritance.receiver(implementation, "getPlayerOwnedRTSLayers").getPlayerOwnedRTSLayers());
            }
            fn implmentsArtificialIntelligenceCompositeInterface(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "implmentsArtificialIntelligenceCompositeInterface").implmentsArtificialIntelligenceCompositeInterface();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = GameNotificationHudCompositeInterface.of(object).?.*, .toStringFn = Methods.toString, .getCapitalFn = Methods.getCapital, .getRTSFormInputFn = Methods.getRTSFormInput, .addFn = Methods.add, .getPlayerOwnedRTSLayersFn = Methods.getPlayerOwnedRTSLayers, .implmentsArtificialIntelligenceCompositeInterfaceFn = Methods.implmentsArtificialIntelligenceCompositeInterface };
        return this;
    }
};


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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameType = @import("org/allbinary/game/GameType.zig").GameType;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const AdvancedPlayerOwnedRTSLayers = @import("org/allbinary/game/layer/AdvancedPlayerOwnedRTSLayers.zig").AdvancedPlayerOwnedRTSLayers;
const RTSPlayerLayerInterface = @import("org/allbinary/game/layer/RTSPlayerLayerInterface.zig").RTSPlayerLayerInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const AdvancedRTSPlayerLayerInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface";
    pointer: *anyopaque,
    object: Object,
    base: RTSPlayerLayerInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getAdvancedPlayerOwnedRTSLayersFn: *const fn (pointer: *anyopaque) ?*AdvancedPlayerOwnedRTSLayers,
    isLocalPlayerFn: *const fn (pointer: *anyopaque) bool,
    getGameTypeFn: *const fn (pointer: *anyopaque) ?*GameType,
    getDecalBasicColorFn: *const fn (pointer: *anyopaque) ?*BasicColor,

    pub fn getAdvancedPlayerOwnedRTSLayers(self: *Self) ?*AdvancedPlayerOwnedRTSLayers {
        return self.getAdvancedPlayerOwnedRTSLayersFn(self.pointer);
    }

    pub fn isLocalPlayer(self: *Self) bool {
        return self.isLocalPlayerFn(self.pointer);
    }

    pub fn getGameType(self: *Self) ?*GameType {
        return self.getGameTypeFn(self.pointer);
    }

    pub fn getDecalBasicColor(self: *Self) ?*BasicColor {
        return self.getDecalBasicColorFn(self.pointer);
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
            fn getAdvancedPlayerOwnedRTSLayers(pointer: *anyopaque) ?*AdvancedPlayerOwnedRTSLayers {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AdvancedPlayerOwnedRTSLayers, Inheritance.receiver(implementation, "getAdvancedPlayerOwnedRTSLayers").getAdvancedPlayerOwnedRTSLayers());
            }
            fn isLocalPlayer(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isLocalPlayer").isLocalPlayer();
            }
            fn getGameType(pointer: *anyopaque) ?*GameType {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*GameType, Inheritance.receiver(implementation, "getGameType").getGameType());
            }
            fn getDecalBasicColor(pointer: *anyopaque) ?*BasicColor {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicColor, Inheritance.receiver(implementation, "getDecalBasicColor").getDecalBasicColor());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = RTSPlayerLayerInterface.of(object).?.*, .toStringFn = Methods.toString, .getAdvancedPlayerOwnedRTSLayersFn = Methods.getAdvancedPlayerOwnedRTSLayers, .isLocalPlayerFn = Methods.isLocalPlayer, .getGameTypeFn = Methods.getGameType, .getDecalBasicColorFn = Methods.getDecalBasicColor };
        return this;
    }
};


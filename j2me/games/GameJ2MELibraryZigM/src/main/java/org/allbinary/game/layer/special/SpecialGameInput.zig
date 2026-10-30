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
// package org.allbinary.game.layer.special

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const SpecialGameInputInterface = @import("org/allbinary/game/layer/special/SpecialGameInputInterface.zig").SpecialGameInputInterface;

pub const SpecialGameInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.special.SpecialGameInput";
    pub const java_interfaces = .{ SpecialGameInputInterface };
    // Implements SpecialGameInputInterface

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn up(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn down(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn right(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn left(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn strafeLeft(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn strafeRight(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn fire(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        _ = layerManager;
        _ = gameKeyEvent;
        _ = self;
    }
    

    // throws Exception
    pub fn special1(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        _ = layerManager;
        _ = gameKeyEvent;
        _ = self;
    }
    

    // throws Exception
    pub fn special2(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        _ = layerManager;
        _ = gameKeyEvent;
        _ = self;
    }
    

    // throws Exception
    pub fn special3(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        _ = layerManager;
        _ = gameKeyEvent;
        _ = self;
    }
    

    // throws Exception
    pub fn special4(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        _ = layerManager;
        _ = gameKeyEvent;
        _ = self;
    }
    

    // throws Exception
    pub fn special5(self: *Self, layerManager: ?*AllBinaryLayerManager, gameKeyEvent: ?*GameKeyEvent) void {
        _ = layerManager;
        _ = gameKeyEvent;
        _ = self;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    pub fn paintThreed(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
};


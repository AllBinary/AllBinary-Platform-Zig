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
// package org.allbinary.game.layer.unit

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameInputProcessor = @import("org/allbinary/game/input/GameInputProcessor.zig").GameInputProcessor;
const UnitLayer = @import("org/allbinary/game/layer/unit/UnitLayer.zig").UnitLayer;

pub const UnitGameInputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.unit.UnitGameInputProcessor";
    base: GameInputProcessor = undefined,
    unitLayer: ?*UnitLayer = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(unitLayer: ?*UnitLayer) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = GameInputProcessor.create().*;
        this.initFields();
        this.unitLayer = unitLayer;
        Inheritance.bindOverrides(this);
        return this;
    }
};


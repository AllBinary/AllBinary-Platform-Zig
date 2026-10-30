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
// package org.allbinary.game.ag.ai

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const BasicAI = @import("org/allbinary/game/ai/BasicAI.zig").BasicAI;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;

pub const SpinnerAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.SpinnerAI";
    base: BasicAI = undefined,
    isEven: bool = false,
    direction: []i32 = &.{},

    fn initFields(this: *Self) void {
        this.isEven = false;
        
    }
    

    pub fn create3(direction: []i32, ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicAI, "create2", .{ ownerLayerInterface, gameInput }).*;
        this.initFields();
        this.direction = direction;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAI(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        if (self.isEven) {
            _ = Inheritance.call(&self.base, "processKeyAI", .{ self.direction[@intCast(0)] });
            self.isEven = false;
        } else {
            _ = Inheritance.call(&self.base, "processKeyAI", .{ Canvas.KEY_NUM1 });
            self.isEven = true;
        }
    }
};


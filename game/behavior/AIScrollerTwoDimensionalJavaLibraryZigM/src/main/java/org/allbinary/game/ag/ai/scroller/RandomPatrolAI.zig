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
// package org.allbinary.game.ag.ai.scroller

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const MyRandomFactory = @import("org/allbinary/game/rand/MyRandomFactory.zig").MyRandomFactory;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasePatrolAI = @import("org/allbinary/game/ag/ai/scroller/BasePatrolAI.zig").BasePatrolAI;

pub const RandomPatrolAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.scroller.RandomPatrolAI";
    base: BasePatrolAI = undefined,
    changedDirection: bool = false,

    fn initFields(this: *Self) void {
        this.changedDirection = true;
    }
    

    pub fn create3(hashtable: ?*ABHashtable, ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasePatrolAI, "create3", .{ hashtable, ownerLayerInterface, gameInput }).*;
        this.initFields();
        _ = this.updateRandomDistance();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateRandomDistance(self: *Self) void {
        Inheritance.fieldPointer(self, "currentDistance").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "currentDistance").*), Inheritance.call(MyRandomFactory.getInstance().?, "getAbsoluteNextInt", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "maxDistance").*.?, "intValue").intValue() }));
    }
    

    // throws Exception
    pub fn processAI(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        _ = self.base.update();
        _ = Inheritance.call(&self.base, "processKeyAI", .{ Inheritance.fieldPointer(self, "keyDirection").* });
        if (self.changedDirection) {
            _ = Inheritance.call(&self.base, "processKeyAI", .{ Canvas.KEY_NUM1 });
            _ = self.updateRandomDistance();
            self.changedDirection = false;
        }
    }
    

    pub fn nextDirection(self: *Self) void {
        _ = self.base.nextDirection();
        self.changedDirection = true;
    }
};


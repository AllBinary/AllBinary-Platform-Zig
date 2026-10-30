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
// package org.allbinary.game.ag.ai.tactical

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const BasicAI = @import("org/allbinary/game/ai/BasicAI.zig").BasicAI;
const InputProbability = @import("org/allbinary/game/ag/ai/InputProbability.zig").InputProbability;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const MyRandomFactory = @import("org/allbinary/game/rand/MyRandomFactory.zig").MyRandomFactory;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const Visitor = @import("org/allbinary/logic/util/visitor/Visitor.zig").Visitor;
const GameTickTimeDelayHelperFactory = @import("org/allbinary/time/GameTickTimeDelayHelperFactory.zig").GameTickTimeDelayHelperFactory;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const BasicRandomAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.tactical.BasicRandomAI";
    base: BasicAI = undefined,
    i_random: i32 = 0,
    inputProbability: ?*InputProbability = null,
    visitor: ?*Visitor = null,
    keyArray: []i32 = &.{},
    myRandomFactory: ?*MyRandomFactory = null,

    fn initFields(this: *Self) void {
        this.i_random = 0;
        
        
        this.keyArray = @constCast(&[_]i32{ Canvas.UP, Canvas.DOWN, Canvas.LEFT, Canvas.RIGHT, Canvas.KEY_NUM1, Canvas.KEY_NUM7, Canvas.KEY_NUM9 })[0..];
        this.myRandomFactory = Inheritance.upcast(?*MyRandomFactory, MyRandomFactory.getInstance());
    }
    

    pub fn create4(ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput, inputProbability: ?*InputProbability, visitor: ?*Visitor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicAI, "create2", .{ ownerLayerInterface, gameInput }).*;
        this.initFields();
        this.inputProbability = inputProbability;
        this.visitor = visitor;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAI(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        if (Inheritance.call(self.inputProbability.?.getTimeDelayHelper().?, "isTime", .{ GameTickTimeDelayHelperFactory.getInstance().?.startTime })) {
            self.i_random = Inheritance.call(self.myRandomFactory.?, "getAbsoluteNextInt", .{ self.inputProbability.?.getMax() });
            var repeat: bool = false;
            const repeatLikelyhoodIntegerArray: []?*Integer = self.inputProbability.?.getRepeatLikelyhoodIntegerArray();
            if (Inheritance.receiver(self, "getLastKey").getLastKey() != -1 and repeatLikelyhoodIntegerArray[@intCast(Inheritance.receiver(self, "getLastKey").getLastKey())].?.intValue() >= self.i_random) {
                repeat = true;
            }
            if (!repeat) {
                const likelyhoodIntegerArray: [][]?*Integer = self.inputProbability.?.getLikelyhoodIntegerArray();
                self.i_random = Inheritance.call(self.myRandomFactory.?, "getAbsoluteNextInt", .{ self.inputProbability.?.getMax() });
                const size: i32 = @as(i32, @intCast(self.keyArray.len));
                var likelyhoodIntegerKeyArray: []?*Integer = &.{};
                {
                    var index: i32 = 0;
                    while (index < size) : (index += 1) {
                    const key: i32 = self.keyArray[@intCast(index)];
                    likelyhoodIntegerKeyArray = Inheritance.upcast(@TypeOf(likelyhoodIntegerKeyArray), likelyhoodIntegerArray[@intCast(key)]);
                    if (@as(i32, @intCast(likelyhoodIntegerArray.len)) >= key and likelyhoodIntegerKeyArray[@intCast(0)] != null) {
                        if (self.i_random >= likelyhoodIntegerKeyArray[@intCast(0)].?.intValue() and self.i_random < likelyhoodIntegerKeyArray[@intCast(1)].?.intValue()) {
                            _ = Inheritance.call(self, "setLastKey", .{ key });
                            break;
                        }
                    }
                    }
                }
            }
            _ = Inheritance.call(self.visitor.?, "visit", .{ self });
        }
    }
};


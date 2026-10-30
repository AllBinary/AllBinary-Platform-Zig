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
const BasicAI = @import("org/allbinary/game/ai/BasicAI.zig").BasicAI;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const GameTickTimeDelayHelperFactory = @import("org/allbinary/time/GameTickTimeDelayHelperFactory.zig").GameTickTimeDelayHelperFactory;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const TimeFiredInterface = @import("org/allbinary/game/ag/ai/scroller/TimeFiredInterface.zig").TimeFiredInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const TimedFireAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.scroller.TimedFireAI";
    base: BasicAI = undefined,
    maxFireDelayTimeHelper: ?*TimeDelayHelper = null,
    delay: i32 = 0,
    pub var TIME: ?*Integer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        TIME = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 1 }));
    }

    fn initFields(this: *Self) void {
        this.maxFireDelayTimeHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 0 });
        
    }
    

    pub fn create3(delay: i32, ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicAI, "create2", .{ ownerLayerInterface, gameInput }).*;
        this.initFields();
        this.delay = delay;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAI(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        const timeFiredInterface: ?*TimeFiredInterface = Inheritance.cast(?*TimeFiredInterface, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
        if (Inheritance.call(self.maxFireDelayTimeHelper.?, "isTime", .{ GameTickTimeDelayHelperFactory.getInstance().?.startTime }) and timeFiredInterface.?.getLastFireTime() + self.maxFireDelayTimeHelper.?.delay < self.maxFireDelayTimeHelper.?.getStartTime()) {
            _ = Inheritance.call(&self.base, "processKeyAI", .{ Canvas.KEY_NUM1 });
            self.maxFireDelayTimeHelper.?.delay = Inheritance.upcast(@TypeOf(self.maxFireDelayTimeHelper.?.delay), self.delay);
        }
    }
};


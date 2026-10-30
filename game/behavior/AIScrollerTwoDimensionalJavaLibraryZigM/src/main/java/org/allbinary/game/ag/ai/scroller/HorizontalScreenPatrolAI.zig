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
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;
const MyRandomFactory = @import("org/allbinary/game/rand/MyRandomFactory.zig").MyRandomFactory;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const PlayerQueue = @import("org/allbinary/media/audio/PlayerQueue.zig").PlayerQueue;
const SecondaryPlayerQueueFactory = @import("org/allbinary/media/audio/SecondaryPlayerQueueFactory.zig").SecondaryPlayerQueueFactory;
const Sound = @import("org/allbinary/media/audio/Sound.zig").Sound;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const HorizontalScreenPatrolAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI";
    base: BasicAI = undefined,
    keyDirection: i32 = 0,
    displayInfoSingleton: ?*DisplayInfoSingleton = null,
    firingX: i32 = 0,
    firedIndex: i32 = 0,
    MAX_FIRE: i32 = 0,
    timeDelayHelper: ?*TimeDelayHelper = null,
    secondaryPlayerQueue: ?*PlayerQueue = null,
    sound: ?*Sound = null,
    pub var SOUND: ?*Integer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SOUND = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 433 }));
    }

    fn initFields(this: *Self) void {
        this.keyDirection = Canvas.LEFT;
        this.displayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        this.firingX = this.displayInfoSingleton.?.getLastHalfWidth();
        this.firedIndex = 0;
        this.MAX_FIRE = 28;
        this.timeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 240 });
        this.secondaryPlayerQueue = Inheritance.upcast(?*PlayerQueue, SecondaryPlayerQueueFactory.getInstance());
        
    }
    

    pub fn create3(hashtable: ?*ABHashtable, ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicAI, "create2", .{ ownerLayerInterface, gameInput }).*;
        this.initFields();
        this.sound = Inheritance.cast(?*Sound, Inheritance.call(hashtable.?, "get", .{ HorizontalScreenPatrolAI.SOUND }));
        if (this.sound == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("No Sound Provided!!"); break :exception error.Exception; }});
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAI(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = Inheritance.call(&self.base, "processKeyAI", .{ self.keyDirection });
        if (self.timeDelayHelper.?.isTimeTNT()) {
            const layerInterface: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
            const currentOwnerLayerX: i32 = Inheritance.receiver(layerInterface.?, "getXP").getXP();
            if (currentOwnerLayerX < -Inheritance.receiver(layerInterface.?, "getWidth").getWidth()) {
                const y: i32 = Inheritance.call(MyRandomFactory.getInstance().?, "getAbsoluteNextIntAllowZero", .{ 50 });
                _ = Inheritance.call(layerInterface.?, "setPosition", .{ self.displayInfoSingleton.?.getLastWidth() + Inheritance.receiver(layerInterface.?, "getWidth").getWidth() + 50, y, Inheritance.receiver(layerInterface.?, "getZP").getZP() });
                self.firedIndex = 0;
                self.firingX = self.displayInfoSingleton.?.getLastHalfWidth() + Inheritance.call(MyRandomFactory.getInstance().?, "getNextInt", .{ self.displayInfoSingleton.?.getLastHalfWidth() });
                _ = Inheritance.call(self.secondaryPlayerQueue.?, "add", .{ self.sound });
            }
            if (currentOwnerLayerX < self.firingX and currentOwnerLayerX > -Inheritance.receiver(layerInterface.?, "getWidth").getWidth()) {
                _ = Inheritance.call(&self.base, "processKeyAI", .{ Canvas.KEY_NUM1 });
                const gameLayerManager: ?*AllBinaryGameLayerManager = Inheritance.cast(?*AllBinaryGameLayerManager, allBinaryLayerManager);
                var FIRE: i32 = (Inheritance.receiverOf(Inheritance.receiver(gameLayerManager.?, "getGameInfo").getGameInfo().?, "getCurrentLevel").getCurrentLevel() + 12) >> @intCast(2);
                if (FIRE > self.MAX_FIRE) {
                    FIRE = self.MAX_FIRE;
                }
                if (self.firedIndex > FIRE) {
                    self.firedIndex = 0;
                    self.firingX = @as(i32, std.math.minInt(i32));
                }
                self.firedIndex += 1;
            }
        }
    }
    

    pub fn nextDirection(self: *Self) void {
        _ = self;
    }
};


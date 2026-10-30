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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameTickDisplayInfoSingleton = @import("org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton.zig").GameTickDisplayInfoSingleton;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GameTickTimeDelayHelper = @import("org/allbinary/time/GameTickTimeDelayHelper.zig").GameTickTimeDelayHelper;
const GameTickTimeDelayHelperFactory = @import("org/allbinary/time/GameTickTimeDelayHelperFactory.zig").GameTickTimeDelayHelperFactory;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;
const GameRunnable = @import("org/allbinary/game/displayable/canvas/GameRunnable.zig").GameRunnable;

pub const GameFrameRunnable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.GameFrameRunnable";
    base: GameRunnable = undefined,
    logUtil: ?*LogUtil = null,
    gameTickDisplayInfoSingleton: ?*GameTickDisplayInfoSingleton = null,
    allBinaryGameCanvas: ?*AllBinaryGameCanvas = null,
    gameTickTimeDelayHelper: ?*GameTickTimeDelayHelper = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.gameTickDisplayInfoSingleton = Inheritance.upcast(?*GameTickDisplayInfoSingleton, GameTickDisplayInfoSingleton.getInstance());
        
        this.gameTickTimeDelayHelper = Inheritance.upcast(?*GameTickTimeDelayHelper, GameTickTimeDelayHelperFactory.getInstance());
    }
    

    pub fn create1(allBinaryGameCanvas: ?*AllBinaryGameCanvas) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = GameRunnable.create().*;
        this.initFields();
        this.allBinaryGameCanvas = allBinaryGameCanvas;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn run(self: *Self) void {
        { // try
            const allBinaryGameCanvas: ?*AllBinaryGameCanvas = self.allBinaryGameCanvas;
            _ = Inheritance.call(Inheritance.receiver(allBinaryGameCanvas.?, "getLoopTimeHelperP").getLoopTimeHelperP().?, "setStartTime", .{ self.gameTickTimeDelayHelper.?.setStartTime() });
            _ = self.gameTickDisplayInfoSingleton.?.update();
            _ = Inheritance.receiver(allBinaryGameCanvas.?, "processGame").processGame();
            if (!Inheritance.receiver(allBinaryGameCanvas.?, "isRunning").isRunning() or Inheritance.receiver(allBinaryGameCanvas.?, "isPaused").isPaused()) {
                _ = Inheritance.receiver(allBinaryGameCanvas.?, "notifyDonePainting").notifyDonePainting();
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
    }
};


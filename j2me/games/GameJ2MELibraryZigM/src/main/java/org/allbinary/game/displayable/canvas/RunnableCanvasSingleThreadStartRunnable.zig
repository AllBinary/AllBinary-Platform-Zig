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
const RunnableCanvas = @import("org/allbinary/canvas/RunnableCanvas.zig").RunnableCanvas;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GameRunnable = @import("org/allbinary/game/displayable/canvas/GameRunnable.zig").GameRunnable;

pub const RunnableCanvasSingleThreadStartRunnable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable";
    base: GameRunnable = undefined,
    logUtil: ?*LogUtil = null,
    runnableCanvas: ?*RunnableCanvas = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(demoCanvas: ?*RunnableCanvas) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = GameRunnable.create().*;
        this.initFields();
        this.runnableCanvas = demoCanvas;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn run(self: *Self) void {
        { // try
            _ = Inheritance.receiver(self.runnableCanvas.?, "run").run();
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
    }
    

    // throws Exception
    pub fn processLoopSleep(self: *Self) void {
        _ = Inheritance.receiver(self.runnableCanvas.?, "processLoopSleep").processLoopSleep();
    }
};


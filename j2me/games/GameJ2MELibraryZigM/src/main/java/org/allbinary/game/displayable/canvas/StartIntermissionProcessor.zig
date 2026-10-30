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
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;

pub const StartIntermissionProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.StartIntermissionProcessor";
    base: Processor = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    gameCanvas: ?*AllBinaryGameCanvas = null,
    WAIT: i64 = 0,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.WAIT = 5000;
    }
    

    pub fn create1(gameCanvas: ?*AllBinaryGameCanvas) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Processor.create().*;
        this.initFields();
        this.gameCanvas = gameCanvas;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        if (Inheritance.call(Inheritance.receiverOf(Inheritance.receiver(self.gameCanvas.?, "getStartIntermissionInterface").getStartIntermissionInterface().?, "getTimeDelayHelper").getTimeDelayHelper().?, "isElapsedTNT", .{ self.WAIT })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Intermission End"), self, self.commonStrings.?.PROCESS });
            _ = Inheritance.call(Inheritance.receiver(self.gameCanvas.?, "getStartIntermissionInterface").getStartIntermissionInterface().?, "setEnabled", .{ false });
        }
    }
};


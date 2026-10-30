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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABRunnable = @import("org/allbinary/thread/ABRunnable.zig").ABRunnable;
const DemoCanvas = @import("org/allbinary/game/displayable/canvas/DemoCanvas.zig").DemoCanvas;

pub const DemoGameStartupRunnable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.DemoGameStartupRunnable";
    base: ABRunnable = undefined,
    logUtil: ?*LogUtil = null,
    demoCanvas: ?*DemoCanvas = null,
    pub const TYPE: i32 = 4;

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(demoCanvas: ?*DemoCanvas) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ABRunnable.create().*;
        this.initFields();
        this.demoCanvas = demoCanvas;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn run(self: *Self) void {
        { // try
            _ = Inheritance.call(self, "setRunning", .{ true });
            _ = Inheritance.receiver(self.demoCanvas.?, "stopGameDemo").stopGameDemo();
            _ = Inheritance.receiver(self.demoCanvas.?, "create").create();
            _ = Inheritance.receiver(self.demoCanvas.?, "start").start();
            _ = Inheritance.call(self, "setRunning", .{ false });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self, "setRunning", .{ false });
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
    }
    

    pub fn getType(self: *Self) i32 {
        _ = self;
        return DemoGameStartupRunnable.TYPE;
    }
};


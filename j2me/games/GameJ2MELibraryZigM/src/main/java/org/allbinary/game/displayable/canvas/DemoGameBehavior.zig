// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
const GameTypeFactory = @import("org/allbinary/game/GameTypeFactory.zig").GameTypeFactory;
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;

pub const DemoGameBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.DemoGameBehavior";
    logUtil: ?*LogUtil = null,
    var instance: ?*DemoGameBehavior = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = DemoGameBehavior.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*DemoGameBehavior {
        return Inheritance.upcast(?*DemoGameBehavior, DemoGameBehavior.instance);
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        _ = self;
    }
    

    pub fn pause(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = allBinaryGameCanvas;
        _ = self;
    }
    

    pub fn unPause(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = allBinaryGameCanvas;
        _ = self;
    }
    

    // throws Exception
    pub fn updateTouch(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = allBinaryGameCanvas;
        _ = self;
    }
    

    // throws Exception
    pub fn updateScreenButtonPaintable(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = self;
        _ = Inheritance.call(allBinaryGameCanvas.?, "setTouchPaintableP", .{ NullPaintable.getInstance() });
    }
    

    // throws Exception
    pub fn setGameState(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = allBinaryGameCanvas;
        _ = self;
    }
    

    pub fn removeAllGameKeyInputListeners(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = allBinaryGameCanvas;
        _ = self;
    }
    

    // throws Exception
    pub fn updateEndGameProcessor(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = allBinaryGameCanvas;
        _ = self;
    }
    

    // throws Exception
    pub fn buildGame(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = allBinaryGameCanvas;
        _ = self;
    }
    

    // throws Exception
    pub fn run(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = allBinaryGameCanvas;
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(GameTypeFactory.getInstance().?.BOT)), self, commonStrings.?.RUN });
    }
    

    // throws Exception
    pub fn setHighScore(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, allBinaryGameCanvas: ?*AllBinaryGameCanvas, name: ?*String, score: i64, autoSubmit: bool, isLast: bool) void {
        _ = abeClientInformation;
        _ = allBinaryGameCanvas;
        _ = name;
        _ = score;
        _ = autoSubmit;
        _ = isLast;
        _ = self;
    }
};


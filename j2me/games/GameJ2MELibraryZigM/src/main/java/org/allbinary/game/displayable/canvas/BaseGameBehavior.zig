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
const GameAdStateFactory = @import("org/allbinary/business/advertisement/GameAdStateFactory.zig").GameAdStateFactory;
const GameAdState = @import("org/allbinary/game/GameAdState.zig").GameAdState;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const CurrentDisplayableFactory = @import("org/allbinary/graphics/opengles/CurrentDisplayableFactory.zig").CurrentDisplayableFactory;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;
const DemoGameBehavior = @import("org/allbinary/game/displayable/canvas/DemoGameBehavior.zig").DemoGameBehavior;

pub const BaseGameBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.BaseGameBehavior";
    base: DemoGameBehavior = undefined,
    var instanceC: ?*BaseGameBehavior = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = BaseGameBehavior.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = DemoGameBehavior.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*DemoGameBehavior {
        return Inheritance.upcast(?*DemoGameBehavior, BaseGameBehavior.instanceC);
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        _ = self;
        const gameAdState: ?*GameAdState = Inheritance.upcast(?*GameAdState, Inheritance.receiverOf(GameAdStateFactory.getInstance().?, "getCurrentInstance").getCurrentInstance());
        _ = Inheritance.receiver(gameAdState.?, "playingAdState").playingAdState();
    }
    

    pub fn pause(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = self;
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        if (Inheritance.call(features.?, "isDefault", .{ OpenGLFeatureFactory.getInstance().?.OPENGL_AS_GAME_THREAD })) {
            const currentDisplayableFactory: ?*CurrentDisplayableFactory = Inheritance.upcast(?*CurrentDisplayableFactory, CurrentDisplayableFactory.getInstance());
            _ = Inheritance.call(currentDisplayableFactory.?, "setRunnable", .{ allBinaryGameCanvas.?.gamePauseRunnable });
        }
    }
    

    pub fn unPause(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = self;
        if (Inheritance.call(Features.getInstance().?, "isDefault", .{ OpenGLFeatureFactory.getInstance().?.OPENGL_AS_GAME_THREAD })) {
            const currentDisplayableFactory: ?*CurrentDisplayableFactory = Inheritance.upcast(?*CurrentDisplayableFactory, CurrentDisplayableFactory.getInstance());
            _ = Inheritance.call(currentDisplayableFactory.?, "setRunnable", .{ allBinaryGameCanvas.?.gameRunnable });
            _ = Inheritance.call(currentDisplayableFactory.?, "setDisplayable", .{ allBinaryGameCanvas });
        }
    }
    

    // throws Exception
    pub fn updateTouch(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = self;
        _ = Inheritance.receiver(allBinaryGameCanvas.?, "updateTouch2").updateTouch2();
    }
    

    // throws Exception
    pub fn updateScreenButtonPaintable(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = self;
        _ = Inheritance.receiver(allBinaryGameCanvas.?, "updateScreenButtonPaintable2").updateScreenButtonPaintable2();
    }
    

    // throws Exception
    pub fn setGameState(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = self;
        _ = Inheritance.receiver(allBinaryGameCanvas.?, "updateGameState").updateGameState();
    }
    

    pub fn removeAllGameKeyInputListeners(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = self;
        _ = Inheritance.receiver(allBinaryGameCanvas.?, "removeAllGameKeyInputListeners2").removeAllGameKeyInputListeners2();
    }
    

    // throws Exception
    pub fn updateEndGameProcessor(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = self;
        _ = Inheritance.receiver(allBinaryGameCanvas.?, "updateEndGameProcessor2").updateEndGameProcessor2();
    }
    

    // throws Exception
    pub fn buildGame(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = self;
        _ = Inheritance.receiver(allBinaryGameCanvas.?, "buildGame2").buildGame2();
    }
    

    // throws Exception
    pub fn run(self: *Self, allBinaryGameCanvas: ?*AllBinaryGameCanvas) void {
        _ = self;
        _ = Inheritance.receiver(allBinaryGameCanvas.?, "run2").run2();
    }
    

    // throws Exception
    pub fn setHighScore(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, allBinaryGameCanvas: ?*AllBinaryGameCanvas, name: ?*String, score: i64, autoSubmit: bool, isLast: bool) void {
        _ = self;
        _ = Inheritance.call(allBinaryGameCanvas.?, "setHighScore2", .{ abeClientInformation, name, score, autoSubmit, isLast });
    }
};


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
// package org.allbinary.game.score

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HighScoresCanvas = @import("org/allbinary/game/score/displayable/HighScoresCanvas.zig").HighScoresCanvas;
const HighScoresCanvasInputProcessor = @import("org/allbinary/game/score/HighScoresCanvasInputProcessor.zig").HighScoresCanvasInputProcessor;
const HighScoresCanvasInputProcessorFactoryInterface = @import("org/allbinary/game/score/HighScoresCanvasInputProcessorFactoryInterface.zig").HighScoresCanvasInputProcessorFactoryInterface;
const HighScoresCanvasLevelChangeInputProcessor = @import("org/allbinary/game/score/HighScoresCanvasLevelChangeInputProcessor.zig").HighScoresCanvasLevelChangeInputProcessor;

pub const HighScoresCanvasChangeLevelInputProcessorFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.HighScoresCanvasChangeLevelInputProcessorFactory";
    pub const java_interfaces = .{ HighScoresCanvasInputProcessorFactoryInterface };
    // Implements HighScoresCanvasInputProcessorFactoryInterface

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(self: *Self, highScoresCanvas: ?*HighScoresCanvas) ?*HighScoresCanvasInputProcessor {
        _ = self;
        return Inheritance.upcast(?*HighScoresCanvasInputProcessor, Inheritance.callStatic(HighScoresCanvasLevelChangeInputProcessor, "create1", .{ highScoresCanvas }));
    }
};


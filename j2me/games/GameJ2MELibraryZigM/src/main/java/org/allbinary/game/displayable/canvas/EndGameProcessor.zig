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
const HighScores = @import("org/allbinary/game/score/HighScores.zig").HighScores;
const HighScoresHelperBase = @import("org/allbinary/game/score/HighScoresHelperBase.zig").HighScoresHelperBase;
const NullHighScoresSingletonFactory = @import("org/allbinary/game/score/NullHighScoresSingletonFactory.zig").NullHighScoresSingletonFactory;
const GameStateFactory = @import("org/allbinary/game/state/GameStateFactory.zig").GameStateFactory;
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;

pub const EndGameProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.EndGameProcessor";
    base: Processor = undefined,
    gameStateFactory: ?*GameStateFactory = null,
    gameCanvas: ?*AllBinaryGameCanvas = null,
    WAIT: i64 = 0,

    fn initFields(this: *Self) void {
        this.gameStateFactory = Inheritance.upcast(?*GameStateFactory, GameStateFactory.getInstance());
        
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
        if (Inheritance.receiver(self.gameCanvas.?, "isHighScoreSubmitted").isHighScoreSubmitted()) {
            if (Inheritance.call(Inheritance.receiver(self.gameCanvas.?, "getGameStateTimeHelper").getGameStateTimeHelper().?, "isElapsedTNT", .{ self.WAIT })) {
                if (Object.same(Inheritance.receiver(self.gameCanvas.?, "getGameState").getGameState(), self.gameStateFactory.?.SHOW_END_RESULT_GAME_STATE)) {
                    const highScoresBase: ?*HighScoresHelperBase = Inheritance.cast(?*HighScoresHelperBase, self.gameCanvas.?.highScoresHelper);
                    const highScores: ?*HighScores = Inheritance.upcast(?*HighScores, highScoresBase.?.getSelectedHighScores());
                    if (!Object.same(highScores, NullHighScoresSingletonFactory.getInstance())) {
                        _ = highScoresBase.?.selectHighScores();
                        _ = Inheritance.call(Inheritance.receiver(self.gameCanvas.?, "getRealHighScoresPaintable").getRealHighScoresPaintable().?, "setHighScores", .{ highScores });
                        _ = Inheritance.call(self.gameCanvas.?, "setGameState", .{ self.gameStateFactory.?.SHOW_HIGH_SCORE_GAME_STATE });
                        _ = Inheritance.call(self.gameCanvas.?, "setHighScoresPaintable", .{ Inheritance.receiver(self.gameCanvas.?, "getRealHighScoresPaintable").getRealHighScoresPaintable() });
                    }
                } else if (Object.same(Inheritance.receiver(self.gameCanvas.?, "getGameState").getGameState(), self.gameStateFactory.?.SHOW_HIGH_SCORE_GAME_STATE)) {
                    _ = Inheritance.call(self.gameCanvas.?, "setGameState", .{ self.gameStateFactory.?.SHOW_END_RESULT_GAME_STATE });
                    _ = Inheritance.call(self.gameCanvas.?, "setHighScoresPaintable", .{ NullPaintable.getInstance() });
                }
            }
        }
    }
};


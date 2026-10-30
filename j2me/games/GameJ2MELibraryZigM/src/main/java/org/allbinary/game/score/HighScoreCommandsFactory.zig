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
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
const HighScoreCommands = @import("org/allbinary/game/score/HighScoreCommands.zig").HighScoreCommands;
const HighScoreCommandsBaseFactory = @import("org/allbinary/game/score/HighScoreCommandsBaseFactory.zig").HighScoreCommandsBaseFactory;

pub const HighScoreCommandsFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.HighScoreCommandsFactory";
    base: HighScoreCommandsBaseFactory = undefined,
    var instance: ?*HighScoreCommandsFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = HighScoreCommandsFactory.create();
    }
    

    pub fn getInstance() ?*HighScoreCommandsFactory {
        return Inheritance.upcast(?*HighScoreCommandsFactory, HighScoreCommandsFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HighScoreCommandsBaseFactory, "create1", .{ @constCast(&[_]?*Command{ HighScoreCommands.getInstance().?.PERSONAL, HighScoreCommands.getInstance().?.WORLD })[0..] }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};


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
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const HighScoreCommands = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.HighScoreCommands";
    DISPLAY: ?*Command = null,
    PERSONAL: ?*Command = null,
    WORLD: ?*Command = null,
    var instance: ?*HighScoreCommands = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = HighScoreCommands.create();
    }

    fn initFields(this: *Self) void {
        this.DISPLAY = Inheritance.callStatic(Command, "create4", .{ String.literal("Scores"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        this.PERSONAL = Inheritance.callStatic(Command, "create4", .{ String.literal("Personal"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        this.WORLD = Inheritance.callStatic(Command, "create4", .{ String.literal("World"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*HighScoreCommands {
        return Inheritance.upcast(?*HighScoreCommands, HighScoreCommands.instance);
    }
};


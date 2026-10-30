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
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;

pub const HighScoreCommandsBaseFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.HighScoreCommandsBaseFactory";
    logUtil: ?*LogUtil = null,
    HIGH_SCORE_COMMANDS: []?*Command = &.{},

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(HIGH_SCORE_COMMANDS: []?*Command) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.HIGH_SCORE_COMMANDS = HIGH_SCORE_COMMANDS;
        return this;
    }
    

    pub fn isHighScoreCommand(self: *Self, command: ?*Command) bool {
        {
            var index: i32 = @as(i32, @intCast(self.HIGH_SCORE_COMMANDS.len)) - 1;
            while (index >= 0) : (index -= 1) {
            if (Object.same(command, self.HIGH_SCORE_COMMANDS[@intCast(index)])) {
                return true;
            }
            }
        }
        return false;
    }
    

    // throws Exception
    pub fn getIndex(self: *Self, command: ?*Command) i32 {
        {
            var index: i32 = @as(i32, @intCast(self.HIGH_SCORE_COMMANDS.len)) - 1;
            while (index >= 0) : (index -= 1) {
            if (Object.same(command, self.HIGH_SCORE_COMMANDS[@intCast(index)])) {
                return index;
            }
            }
        }
        std.debug.panic("{any}", .{exception: { _ = String.literal("No Such Command"); break :exception error.Exception; }});
    }
};


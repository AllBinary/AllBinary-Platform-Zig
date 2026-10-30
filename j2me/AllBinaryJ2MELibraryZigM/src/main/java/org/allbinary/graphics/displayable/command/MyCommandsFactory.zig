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
// package org.allbinary.graphics.displayable.command

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const MyCommandsFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.displayable.command.MyCommandsFactory";
    NO_COMMAND: ?*Command = null,
    GAUGE_CHANGE: ?*Command = null,
    SET_DISPLAYABLE: ?*Command = null,
    PAUSE_COMMAND: ?*Command = null,
    RESUME_COMMAND: ?*Command = null,
    var instance: ?*MyCommandsFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MyCommandsFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NO_COMMAND = Inheritance.callStatic(Command, "create4", .{ StringUtil.getInstance().?.EMPTY_STRING, StringUtil.getInstance().?.EMPTY_STRING, -1, -1 });
        this.GAUGE_CHANGE = Inheritance.callStatic(Command, "create4", .{ String.literal("GAUGE_CHANGE"), StringUtil.getInstance().?.EMPTY_STRING, Command.ITEM, 1 });
        this.SET_DISPLAYABLE = Inheritance.callStatic(Command, "create4", .{ String.literal("Display"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 2 });
        this.PAUSE_COMMAND = Inheritance.callStatic(Command, "create4", .{ String.literal("Pause"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 0 });
        this.RESUME_COMMAND = Inheritance.callStatic(Command, "create4", .{ String.literal("Resume"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 0 });
    }
    

    pub fn getInstance() ?*MyCommandsFactory {
        return Inheritance.upcast(?*MyCommandsFactory, MyCommandsFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};


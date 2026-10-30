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
// package org.allbinary.game.commands

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const GameCommandsFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.commands.GameCommandsFactory";
    TOGGLE_FULLSCREEN: ?*Command = null,
    TOGGLE_KEYBOARD: ?*Command = null,
    SET_MENU_DISPLAYABLE: ?*Command = null,
    APPLICATION_UPDATE: ?*Command = null,
    DISPLAY_ABOUT: ?*Command = null,
    OPEN_WEB_URL: ?*Command = null,
    CLOSE_OPTIONS: ?*Command = null,
    DISPLAY_OPTIONS: ?*Command = null,
    START_TRACE: ?*Command = null,
    STOP_TRACE: ?*Command = null,
    DEFAULT_OPTIONS: ?*Command = null,
    SHOW_GAME_CANVAS: ?*Command = null,
    CLOSE_AND_SHOW_GAME_CANVAS: ?*Command = null,
    QUIT_COMMAND: ?*Command = null,
    RESTART_COMMAND: ?*Command = null,
    DISPLAY_SAVE_FORM: ?*Command = null,
    SAVE: ?*Command = null,
    DISPLAY_LOAD_FORM: ?*Command = null,
    LOAD_FILE: ?*Command = null,
    DELETE_FILE: ?*Command = null,
    EXIT_COMMAND: ?*Command = null,
    EXIT_WITHOUT_PROGRESS_COMMAND: ?*Command = null,
    START_COMMAND: ?*Command = null,
    CONTINUE_COMMAND: ?*Command = null,
    SELECT_COMMAND: ?*Command = null,
    FEATURE_UPDATE: ?*Command = null,
    BUY_COMMAND: ?*Command = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.TOGGLE_FULLSCREEN = Inheritance.callStatic(Command, "create4", .{ String.literal("Toggle FullScreen"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        this.TOGGLE_KEYBOARD = Inheritance.callStatic(Command, "create4", .{ String.literal("Keyboard"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        this.SET_MENU_DISPLAYABLE = Inheritance.callStatic(Command, "create4", .{ String.literal("Set Menu Displayable"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        this.APPLICATION_UPDATE = Inheritance.callStatic(Command, "create4", .{ CommonStrings.getInstance().?.UPDATE, StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        this.DISPLAY_ABOUT = Inheritance.callStatic(Command, "create4", .{ CanvasStrings.getInstance().?.ABOUT, StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 2 });
        this.OPEN_WEB_URL = Inheritance.callStatic(Command, "create4", .{ String.literal("Open Web URL"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 2 });
        this.CLOSE_OPTIONS = Inheritance.callStatic(Command, "create4", .{ String.literal("Back"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        this.DISPLAY_OPTIONS = Inheritance.callStatic(Command, "create4", .{ CanvasStrings.getInstance().?.OPTIONS, StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 2 });
        this.START_TRACE = Inheritance.callStatic(Command, "create4", .{ String.literal("Start Trace"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        this.STOP_TRACE = Inheritance.callStatic(Command, "create4", .{ String.literal("Stop Trace"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        this.DEFAULT_OPTIONS = Inheritance.callStatic(Command, "create4", .{ String.literal("Default"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        this.SHOW_GAME_CANVAS = Inheritance.callStatic(Command, "create4", .{ String.literal("Back to Game"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        this.CLOSE_AND_SHOW_GAME_CANVAS = Inheritance.callStatic(Command, "create4", .{ String.literal("Back"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        this.QUIT_COMMAND = Inheritance.callStatic(Command, "create4", .{ String.literal("Quit"), StringUtil.getInstance().?.EMPTY_STRING, Command.STOP, 1 });
        this.RESTART_COMMAND = Inheritance.callStatic(Command, "create4", .{ String.literal("Restart"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 0 });
        this.DISPLAY_SAVE_FORM = Inheritance.callStatic(Command, "create4", .{ String.literal("Save To"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 3 });
        this.SAVE = Inheritance.callStatic(Command, "create4", .{ String.literal("Save"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 3 });
        this.DISPLAY_LOAD_FORM = Inheritance.callStatic(Command, "create4", .{ String.literal("Load"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 3 });
        this.LOAD_FILE = Inheritance.callStatic(Command, "create4", .{ String.literal("Load File"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 3 });
        this.DELETE_FILE = Inheritance.callStatic(Command, "create4", .{ String.literal("Delete File"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        this.EXIT_COMMAND = Inheritance.callStatic(Command, "create4", .{ String.literal("Exit"), StringUtil.getInstance().?.EMPTY_STRING, Command.EXIT, 2 });
        this.EXIT_WITHOUT_PROGRESS_COMMAND = Inheritance.callStatic(Command, "create4", .{ String.literal("Exit Without Progress"), StringUtil.getInstance().?.EMPTY_STRING, Command.EXIT, 2 });
        this.START_COMMAND = Inheritance.callStatic(Command, "create4", .{ CommonStrings.getInstance().?.START, StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        this.CONTINUE_COMMAND = Inheritance.callStatic(Command, "create4", .{ String.literal("Continue"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        this.SELECT_COMMAND = Inheritance.callStatic(Command, "create4", .{ String.literal("Select"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        this.FEATURE_UPDATE = Inheritance.callStatic(Command, "create4", .{ String.literal("Feature Update"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        this.BUY_COMMAND = Inheritance.callStatic(Command, "create4", .{ String.literal("BUY"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
    }
    

    pub fn getInstance() ?*GameCommandsFactory {
        if (Object.same(GameCommandsFactory.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            GameCommandsFactory.instance = Inheritance.upcast(@TypeOf(GameCommandsFactory.instance), GameCommandsFactory.create());
        }
        return Inheritance.cast(?*GameCommandsFactory, GameCommandsFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};


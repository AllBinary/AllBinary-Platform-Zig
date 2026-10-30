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
// package org.allbinary.game.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Choice = @import("javax/microedition/lcdui/Choice.zig").Choice;
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
const GameCommandsFactory = @import("org/allbinary/game/commands/GameCommandsFactory.zig").GameCommandsFactory;
const GameFeatureFormUtil = @import("org/allbinary/game/configuration/feature/GameFeatureFormUtil.zig").GameFeatureFormUtil;
const InGameFeatureChoiceGroups = @import("org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups.zig").InGameFeatureChoiceGroups;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const CommandForm = @import("org/allbinary/graphics/displayable/screen/CommandForm.zig").CommandForm;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const InGameOptionsForm = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.InGameOptionsForm";
    base: CommandForm = undefined,
    pub var DISPLAY: ?*Command = undefined;
    pub var SAVE: ?*Command = undefined;
    pub var DEFAULT: ?*Command = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        DISPLAY = Inheritance.callStatic(Command, "create4", .{ String.literal("Options In Game"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        SAVE = Inheritance.callStatic(Command, "create4", .{ String.literal("Save"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
        DEFAULT = Inheritance.callStatic(Command, "create4", .{ String.literal("Default"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 1 });
    }
    

    pub fn create4(commandListener: ?*CommandListener, title: ?*String, backgrounBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CommandForm, "create4", .{ commandListener, title, backgrounBasicColor, foregroundBasicColor }).*;
        _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        const gameFeatureFormUtil: ?*GameFeatureFormUtil = Inheritance.upcast(?*GameFeatureFormUtil, GameFeatureFormUtil.getInstance());
        _ = Inheritance.call(gameFeatureFormUtil.?, "addChoiceGroup", .{ this, Inheritance.receiverOf(InGameFeatureChoiceGroups.getExclusiveInstance().?, "get").get(), Choice.EXCLUSIVE });
        _ = Inheritance.call(gameFeatureFormUtil.?, "addChoiceGroup", .{ this, Inheritance.receiverOf(InGameFeatureChoiceGroups.getMultipleInstance().?, "get").get(), Choice.MULTIPLE });
        _ = Inheritance.call(this, "initCommands", .{ commandListener });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initCommands(self: *Self, cmdListener: ?*CommandListener) void {
        _ = Inheritance.receiver(self, "removeAllCommands").removeAllCommands();
        _ = Inheritance.call(self, "addCommand", .{ GameCommandsFactory.getInstance().?.CLOSE_AND_SHOW_GAME_CANVAS });
        _ = Inheritance.call(self, "addCommand", .{ InGameOptionsForm.DEFAULT });
        _ = Inheritance.call(self, "setCommandListener", .{ cmdListener });
    }
};


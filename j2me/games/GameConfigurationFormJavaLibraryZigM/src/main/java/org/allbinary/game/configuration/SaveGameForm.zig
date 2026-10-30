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
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const TextField = @import("javax/microedition/lcdui/TextField.zig").TextField;
const GameCommandsFactory = @import("org/allbinary/game/commands/GameCommandsFactory.zig").GameCommandsFactory;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const CommandForm = @import("org/allbinary/graphics/displayable/screen/CommandForm.zig").CommandForm;
const ABSystemWrapper = @import("org/allbinary/logic/ABSystemWrapper.zig").ABSystemWrapper;
const MEUtil = @import("org/allbinary/logic/MEUtil.zig").MEUtil;
const Long = @import("java/lang/Long.zig").Long;

pub const SaveGameForm = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.SaveGameForm";
    base: CommandForm = undefined,
    meUtil: ?*MEUtil = null,
    var FORM: ?*CommandForm = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        FORM = Inheritance.upcast(?*CommandForm, CommandForm.getNullCommandForm());
    }

    fn initFields(this: *Self) void {
        this.meUtil = Inheritance.upcast(?*MEUtil, MEUtil.getInstance());
    }
    

    // throws Exception
    pub fn createForm(commandListener: ?*CommandListener, title: ?*String, backgrounBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) ?*CommandForm {
        SaveGameForm.FORM = Inheritance.upcast(@TypeOf(SaveGameForm.FORM), Inheritance.callStatic(SaveGameForm, "create4", .{ commandListener, title, backgrounBasicColor, foregroundBasicColor }));
        return Inheritance.upcast(?*CommandForm, SaveGameForm.FORM);
    }
    

    pub fn getInstance() ?*CommandForm {
        return Inheritance.upcast(?*CommandForm, SaveGameForm.FORM);
    }
    

    pub fn create4(commandListener: ?*CommandListener, title: ?*String, backgrounBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CommandForm, "create4", .{ commandListener, title, backgrounBasicColor, foregroundBasicColor }).*;
        this.initFields();
        _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        const timeString: ?*String = Inheritance.upcast(?*String, String.valueOf(Inheritance.receiverOf(ABSystemWrapper.getInstance().?, "currentTimeMillis").currentTimeMillis()));
        _ = Inheritance.call(this.meUtil.?, "appendItem", .{ this, Inheritance.callStatic(TextField, "create4", .{ String.literal("Name: "), timeString, 30, TextField.ANY }) });
        _ = Inheritance.call(this, "initCommands", .{ commandListener });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initCommands(self: *Self, cmdListener: ?*CommandListener) void {
        const gameCommandsFactory: ?*GameCommandsFactory = Inheritance.upcast(?*GameCommandsFactory, GameCommandsFactory.getInstance());
        _ = Inheritance.receiver(self, "removeAllCommands").removeAllCommands();
        _ = Inheritance.call(self, "addCommand", .{ gameCommandsFactory.?.SAVE });
        _ = Inheritance.call(self, "addCommand", .{ gameCommandsFactory.?.CLOSE_AND_SHOW_GAME_CANVAS });
        _ = Inheritance.call(self, "setCommandListener", .{ cmdListener });
    }
};


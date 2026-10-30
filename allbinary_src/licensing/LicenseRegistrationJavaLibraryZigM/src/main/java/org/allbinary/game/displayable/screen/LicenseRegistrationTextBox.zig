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
// package org.allbinary.game.displayable.screen

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const TextField = @import("javax/microedition/lcdui/TextField.zig").TextField;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const GameCommandsFactory = @import("org/allbinary/game/commands/GameCommandsFactory.zig").GameCommandsFactory;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const CustomTextBox = @import("org/allbinary/graphics/form/item/CustomTextBox.zig").CustomTextBox;
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const SimpleTextPaintable = @import("org/allbinary/graphics/paint/SimpleTextPaintable.zig").SimpleTextPaintable;
const VirtualKeyboardEventHandler = @import("org/allbinary/input/event/VirtualKeyboardEventHandler.zig").VirtualKeyboardEventHandler;

pub const LicenseRegistrationTextBox = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.screen.LicenseRegistrationTextBox";
    base: CustomTextBox = undefined,
    logUtil: ?*LogUtil = null,
    pleaseWaitPaintable: ?*Paintable = null,
    paintable: ?*Paintable = null,
    pub var DISPLAY_COMMAND: ?*Command = undefined;
    pub var SUBMIT_COMMAND: ?*Command = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        DISPLAY_COMMAND = Inheritance.callStatic(Command, "create4", .{ String.literal("Register"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 3 });
        SUBMIT_COMMAND = Inheritance.callStatic(Command, "create4", .{ String.literal("Submit"), StringUtil.getInstance().?.EMPTY_STRING, Command.SCREEN, 3 });
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.pleaseWaitPaintable = Inheritance.upcast(?*Paintable, Inheritance.callStatic(SimpleTextPaintable, "create2", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.PLEASE_WAIT, BasicColorFactory.getInstance().?.WHITE }));
        this.paintable = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
    }
    

    pub fn create3(cmdListener: ?*CommandListener, backgrounBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CustomTextBox, "create8", .{ cmdListener, String.literal("Enter Registration Code:"), StringUtil.getInstance().?.EMPTY_STRING, 60, TextField.ANY, Font.getDefaultFont(), backgrounBasicColor, foregroundBasicColor }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initCommands(self: *Self, cmdListener: ?*CommandListener) void {
        _ = Inheritance.receiver(self, "removeAllCommands").removeAllCommands();
        _ = Inheritance.call(self, "addCommand", .{ GameCommandsFactory.getInstance().?.CLOSE_AND_SHOW_GAME_CANVAS });
        _ = Inheritance.call(self, "addCommand", .{ GameCommandsFactory.getInstance().?.TOGGLE_KEYBOARD });
        _ = Inheritance.call(self, "addCommand", .{ LicenseRegistrationTextBox.SUBMIT_COMMAND });
        _ = Inheritance.call(self, "setCommandListener", .{ cmdListener });
    }
    

    pub fn open(self: *Self) void {
        { // try
            const virtualKeyboardEventHandler: ?*VirtualKeyboardEventHandler = Inheritance.upcast(?*VirtualKeyboardEventHandler, VirtualKeyboardEventHandler.getInstance());
            _ = Inheritance.call(virtualKeyboardEventHandler.?, "fireEvent", .{ virtualKeyboardEventHandler.?.SHOW_EVENT });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("open"), e });
        _ = self.base.open();
        self.paintable = Inheritance.upcast(@TypeOf(self.paintable), NullPaintable.getInstance());
        _ = Inheritance.receiver(self, "repaint").repaint();
    }
    

    // throws Exception
    pub fn close(self: *Self) void {
        { // try
            const virtualKeyboardEventHandler: ?*VirtualKeyboardEventHandler = Inheritance.upcast(?*VirtualKeyboardEventHandler, VirtualKeyboardEventHandler.getInstance());
            _ = Inheritance.call(virtualKeyboardEventHandler.?, "fireEvent", .{ virtualKeyboardEventHandler.?.HIDE_EVENT });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("open"), e });
        self.paintable = self.pleaseWaitPaintable;
        _ = Inheritance.receiver(self, "repaint").repaint();
        _ = self.base.close();
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(&self.base, "paint", .{ graphics });
        _ = Inheritance.call(self.paintable.?, "paint", .{ graphics });
    }
    

    pub fn submit(self: *Self) void {
        const commandListener: ?*CommandListener = Inheritance.upcast(?*CommandListener, Inheritance.receiver(self, "getCustomCommandListener").getCustomCommandListener());
        _ = Inheritance.call(commandListener.?, "commandAction", .{ LicenseRegistrationTextBox.SUBMIT_COMMAND, self });
    }
};


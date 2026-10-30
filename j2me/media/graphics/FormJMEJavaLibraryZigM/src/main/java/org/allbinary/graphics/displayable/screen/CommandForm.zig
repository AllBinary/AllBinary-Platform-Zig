// 
// AllBinary Open License Version 1 
// Copyright (c) 2002 AllBinary 
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
// package org.allbinary.graphics.displayable.screen

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const Form = @import("javax/microedition/lcdui/Form.zig").Form;
// const NullCommandListener = @import("javax/microedition/lcdui/NullCommandListener.zig").NullCommandListener;
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;
const MenuListener = @import("org/allbinary/game/displayable/canvas/MenuListener.zig").MenuListener;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const MyCommandInterface = @import("org/allbinary/graphics/displayable/command/MyCommandInterface.zig").MyCommandInterface;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ABStack = @import("org/allbinary/util/ABStack.zig").ABStack;
const ScreenRepaintProcessorFactory = @import("org/allbinary/graphics/displayable/screen/ScreenRepaintProcessorFactory.zig").ScreenRepaintProcessorFactory;

pub const CommandForm = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.displayable.screen.CommandForm";
    base: Form = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    repaintProcessor: ?*Processor = null,
    commandStack: ?*ABStack = null,
    // Implements MyCommandInterface
    // Implements MenuListener
    var NULL_COMMAND_FORM: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_COMMAND_FORM = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.repaintProcessor = Inheritance.upcast(?*Processor, Inheritance.call(ScreenRepaintProcessorFactory.getInstance().?, "create", .{ this }));
        
    }
    

    pub fn getNullCommandForm() ?*CommandForm {
        if (Object.same(CommandForm.NULL_COMMAND_FORM, NullUtil.getInstance().?.NULL_OBJECT)) {
            CommandForm.NULL_COMMAND_FORM = Inheritance.upcast(@TypeOf(CommandForm.NULL_COMMAND_FORM), Inheritance.callStatic(CommandForm, "create4", .{ NullCommandListener.NULL_COMMAND_LISTENER, StringUtil.getInstance().?.EMPTY_STRING, BasicColorFactory.getInstance().?.BLACK, BasicColorFactory.getInstance().?.WHITE }));
        }
        return Inheritance.cast(?*CommandForm, CommandForm.NULL_COMMAND_FORM);
    }
    

    pub fn create4(commandListener: ?*CommandListener, formTitle: ?*String, backgrounBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        _ = commandListener;
        _ = backgrounBasicColor;
        _ = foregroundBasicColor;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Form, "create1", .{ formTitle }).*;
        this.initFields();
        this.commandStack = Inheritance.upcast(@TypeOf(this.commandStack), Inheritance.receiverOf(StdUtil.getInstance().?, "createStack").createStack());
        { // try
            _ = this.repaintProcessor.?.process();
        }
        // catch (Exception e):
//             _ = Inheritance.call(this.logUtil.?, "put", .{ this.commonStrings.?.EXCEPTION, this, this.commonStrings.?.CONSTRUCTOR, e });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initCommands(self: *Self, cmdListener: ?*CommandListener) void {
        _ = cmdListener;
        _ = self;
    }
    

    pub fn open(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("open") });
    }
    

    // throws Exception
    pub fn close(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStrings.?.CLOSE });
    }
    

    // throws Exception
    pub fn update(self: *Self) void {
        _ = self.repaintProcessor.?.process();
    }
    

    pub fn getSourceId(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn addCommand(self: *Self, command: ?*Command) void {
        _ = Inheritance.call(self.commandStack.?, "push", .{ command });
        _ = Inheritance.call(&self.base, "addCommand", .{ command });
    }
    

    pub fn removeAllCommands(self: *Self) void {
        const size: i32 = Inheritance.receiver(self.commandStack.?, "size").size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(&self.base, "removeCommand", .{ Inheritance.cast(?*Command, Inheritance.receiver(self.commandStack.?, "pop").pop()) });
            }
        }
    }
};


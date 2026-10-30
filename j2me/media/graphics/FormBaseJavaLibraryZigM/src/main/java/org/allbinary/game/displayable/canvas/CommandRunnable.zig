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
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
const MyCanvas = @import("org/allbinary/graphics/displayable/MyCanvas.zig").MyCanvas;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const CommandFormInputProcessor = @import("org/allbinary/game/displayable/canvas/CommandFormInputProcessor.zig").CommandFormInputProcessor;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const CommandRunnable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.CommandRunnable";
    pub const java_interfaces = .{ Runnable };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    commandFormInputProcessor: ?*CommandFormInputProcessor = null,
    command: ?*Command = null,
    // Implements Runnable

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
    }
    

    pub fn create2(commandFormInputProcessor: ?*CommandFormInputProcessor, command: ?*Command) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.commandFormInputProcessor = commandFormInputProcessor;
        this.command = command;
        return this;
    }
    

    pub fn run(self: *Self) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START_RUNNABLE, self, self.commonStrings.?.RUN });
            const canvas: ?*MyCanvas = Inheritance.upcast(?*MyCanvas, Inheritance.receiver(self.commandFormInputProcessor.?, "getCanvas").getCanvas());
            const commandListener: ?*CommandListener = Inheritance.upcast(?*CommandListener, Inheritance.receiver(canvas.?, "getCustomCommandListener").getCustomCommandListener());
            _ = Inheritance.call(commandListener.?, "commandAction", .{ self.command, canvas });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.END_RUNNABLE, self, self.commonStrings.?.RUN });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
    }
};


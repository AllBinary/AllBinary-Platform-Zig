//
// AllBinary Open License Version 1
// Copyright (c) 2022 AllBinary
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
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const PlayN = @import("playn/core/PlayN.zig").PlayN;
const AboutCommandProcessor = @import("org/allbinary/graphics/displayable/screen/AboutCommandProcessor.zig").AboutCommandProcessor;

pub const WebCommandProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.displayable.screen.WebCommandProcessor";
    logUtil: ?*LogUtil = null,
    aboutCommandProcessor: ?*AboutCommandProcessor = null,
    list: ?*BasicArrayList = null,
    var instance: ?*WebCommandProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = WebCommandProcessor.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.aboutCommandProcessor = Inheritance.upcast(?*AboutCommandProcessor, AboutCommandProcessor.getInstance());
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*WebCommandProcessor {
        return Inheritance.upcast(?*WebCommandProcessor, WebCommandProcessor.instance);
    }
    

    pub fn process(self: *Self, midletCommandListener: ?*CommandListener, command: ?*Command, canvas: ?*Canvas) void {
        _ = midletCommandListener;
        _ = command;
        _ = canvas;
        { // try
            _ = Inheritance.callStatic(PlayN, "openURL", .{ Inheritance.cast(?*String, Inheritance.call(self.list.?, "removeAt", .{ 0 })) });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.PROCESS, e });
    }
};


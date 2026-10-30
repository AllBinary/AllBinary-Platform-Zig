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
// package org.allbinary.graphics.displayable

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const NullCommandListener = @import("javax/microedition/lcdui/NullCommandListener.zig").NullCommandListener;
const MyCommandInterface = @import("org/allbinary/graphics/displayable/command/MyCommandInterface.zig").MyCommandInterface;
const MyCommandsFactory = @import("org/allbinary/graphics/displayable/command/MyCommandsFactory.zig").MyCommandsFactory;
const TouchJ2ME = @import("org/allbinary/input/TouchJ2ME.zig").TouchJ2ME;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Sound = @import("org/allbinary/media/audio/Sound.zig").Sound;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ABStack = @import("org/allbinary/util/ABStack.zig").ABStack;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const DisplayableInterface = @import("org/allbinary/graphics/displayable/DisplayableInterface.zig").DisplayableInterface;

pub const MyCanvas = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.displayable.MyCanvas";
    pub const java_interfaces = .{ DisplayableInterface };
    base: Canvas = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    canvasStrings: ?*CanvasStrings = null,
    stringUtil: ?*StringUtil = null,
    displayInfo: ?*DisplayInfoSingleton = null,
    name: ?*String = null,
    childNameList: ?*BasicArrayList = null,
    commandStack: ?*ABStack = null,
    commandListener: ?*CommandListener = null,
    paused: bool = false,
    touchME: ?*TouchJ2ME = null,
    // Implements DisplayableInterface
    // Implements MyCommandInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.canvasStrings = Inheritance.upcast(?*CanvasStrings, CanvasStrings.getInstance());
        this.stringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        this.displayInfo = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        
        
        
        this.commandListener = Inheritance.upcast(?*CommandListener, NullCommandListener.NULL_COMMAND_LISTENER);
        this.paused = false;
        this.touchME = TouchJ2ME.create();
    }
    

    pub fn create2(name: ?*String, childNameList: ?*BasicArrayList) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Canvas.create().*;
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.CONSTRUCTOR, this, this.commonStrings.?.CONSTRUCTOR });
        _ = Inheritance.call(this.displayInfo.?, "update", .{ this, this.canvasStrings.?.CONSTRUCTOR });
        this.name = name;
        this.childNameList = childNameList;
        this.commandStack = Inheritance.upcast(@TypeOf(this.commandStack), Inheritance.receiverOf(StdUtil.getInstance().?, "createStack").createStack());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setFullScreenMode(self: *Self, mode: bool) void {
        _ = Inheritance.call(&self.base, "setFullScreenMode", .{ mode });
        _ = Inheritance.call(self.displayInfo.?, "update", .{ self, self.canvasStrings.?.SET_FULL_SCREEN_MODE });
    }
    

    pub fn sizeChanged(self: *Self, w: i32, h: i32) void {
        _ = w;
        _ = h;
        _ = Inheritance.call(self.displayInfo.?, "update", .{ self, self.canvasStrings.?.SIZE_CHANGED });
    }
    

    pub fn getCommandStack(self: *Self) ?*ABStack {
        return self.commandStack;
    }
    

    pub fn isCommand(self: *Self, command: ?*Command) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        return Inheritance.call(self.commandStack.?, "contains", .{ command });
    }
    

    pub fn addCommand(self: *Self, command: ?*Command) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (!Inheritance.call(self.commandStack.?, "contains", .{ command })) {
            _ = Inheritance.call(self.commandStack.?, "push", .{ command });
            _ = Inheritance.call(&self.base, "addCommand", .{ command });
        }
    }
    

    pub fn removeCommand(self: *Self, command: ?*Command) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self.commandStack.?, "removeElement", .{ command });
        _ = Inheritance.call(&self.base, "removeCommand", .{ command });
    }
    

    pub fn removeAllCommands(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const size: i32 = Inheritance.receiver(self.commandStack.?, "size").size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(&self.base, "removeCommand", .{ Inheritance.cast(?*Command, Inheritance.receiver(self.commandStack.?, "pop").pop()) });
            }
        }
    }
    

    pub fn setCommandListener(self: *Self, l: ?*CommandListener) void {
        _ = Inheritance.call(&self.base, "setCommandListener", .{ l });
        self.commandListener = l;
    }
    

    pub fn getCustomCommandListener(self: *Self) ?*CommandListener {
        return self.commandListener;
    }
    

    pub fn isPaused(self: *Self) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        return self.paused;
    }
    

    pub fn removePauseCommand(self: *Self) void {
        _ = Inheritance.call(self, "removeCommand", .{ MyCommandsFactory.getInstance().?.PAUSE_COMMAND });
    }
    

    pub fn pause(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.canvasStrings.?.PAUSE });
        _ = self.removePauseCommand();
        _ = Inheritance.call(self, "addCommand", .{ MyCommandsFactory.getInstance().?.RESUME_COMMAND });
        _ = Inheritance.call(self, "setPaused", .{ true });
    }
    

    pub fn unPause(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.canvasStrings.?.UN_PAUSE });
        _ = Inheritance.call(self, "removeCommand", .{ MyCommandsFactory.getInstance().?.RESUME_COMMAND });
        _ = Inheritance.call(self, "addCommand", .{ MyCommandsFactory.getInstance().?.PAUSE_COMMAND });
        _ = Inheritance.call(self, "setPaused", .{ false });
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        _ = self.displayInfo.?.process();
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    pub fn draw(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = self;
    }
    

    pub fn hasChild(self: *Self, displayable: ?*MyCanvas) bool {
        return Inheritance.call(self.childNameList.?, "contains", .{ displayable.?.name });
    }
    

    pub fn destroy(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Destroyed MyCanvas"), self, String.literal("destroy") });
    }
    

    pub fn setPaused(self: *Self, isPaused_: bool) void {
        self.paused = isPaused_;
    }
    

    pub fn keyPressedByDevice(self: *Self, keyCode: i32, deviceId: i32) void {
        _ = keyCode;
        _ = deviceId;
        _ = self;
    }
    

    pub fn keyRepeatedByDevice(self: *Self, keyCode: i32, deviceId: i32) void {
        _ = keyCode;
        _ = deviceId;
        _ = self;
    }
    

    pub fn keyReleasedByDevice(self: *Self, keyCode: i32, deviceId: i32) void {
        _ = keyCode;
        _ = deviceId;
        _ = self;
    }
    

    pub fn pointerDragged(self: *Self, x: i32, y: i32) void {
        _ = Inheritance.call(self.touchME.?, "pointerDragged", .{ x, y });
    }
    

    pub fn pointerPressed(self: *Self, x: i32, y: i32) void {
        _ = Inheritance.call(self.touchME.?, "pointerPressed", .{ x, y });
    }
    

    pub fn pointerReleased(self: *Self, x: i32, y: i32) void {
        _ = Inheritance.call(self.touchME.?, "pointerReleased", .{ x, y });
    }
    

    pub fn nextSong(self: *Self, nextSongSound: ?*Sound, leftVolume: i32, rightVolume: i32) void {
        _ = nextSongSound;
        _ = leftVolume;
        _ = rightVolume;
        _ = self;
    }
};


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
// package org.allbinary.midlet

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const Display = @import("javax/microedition/lcdui/Display.zig").Display;
// const Displayable = @import("javax/microedition/lcdui/Displayable.zig").Displayable;
// const NullCanvas = @import("javax/microedition/lcdui/NullCanvas.zig").NullCanvas;
// const MIDlet = @import("javax/microedition/midlet/MIDlet.zig").MIDlet;
// const MIDletStateChangeException = @import("javax/microedition/midlet/MIDletStateChangeException.zig").MIDletStateChangeException;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Memory = @import("org/allbinary/system/Memory.zig").Memory;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;

pub const AllBinaryMidlet = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.midlet.AllBinaryMidlet";
    base: MIDlet = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    SET_DISPLAY: ?*String = null,
    SETTING_: ?*String = null,
    _DISPLAY_: ?*String = null,
    SETTING_NO_TITLE: ?*String = null,
    hashtable: ?*ABHashtable = null,
    midletDestroyed: bool = false,
    // Implements CommandListener
    var NULL_ALLBINARY_MIDLET: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_ALLBINARY_MIDLET = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.SET_DISPLAY = String.literal("setDisplay");
        this.SETTING_ = String.literal("Setting: ");
        this._DISPLAY_ = String.literal(" Display: ");
        this.SETTING_NO_TITLE = String.literal("Setting: No Title, Display: ");
        this.hashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        this.midletDestroyed = false;
    }
    

    pub fn getNullInstance() ?*AllBinaryMidlet {
        if (Object.same(AllBinaryMidlet.NULL_ALLBINARY_MIDLET, NullUtil.getInstance().?.NULL_OBJECT)) {
            AllBinaryMidlet.NULL_ALLBINARY_MIDLET = Inheritance.upcast(@TypeOf(AllBinaryMidlet.NULL_ALLBINARY_MIDLET), AllBinaryMidlet.create());
        }
        return Inheritance.cast(?*AllBinaryMidlet, AllBinaryMidlet.NULL_ALLBINARY_MIDLET);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = MIDlet.create().*;
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.CONSTRUCTOR, this, String.literal("AllBinaryMidlet::AllBinaryMidlet") });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setDisplay(self: *Self, newDisplay: ?*Displayable) void {
        var title: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        if (!Object.same(newDisplay, NullCanvas.NULL_CANVAS)) {
            title = Inheritance.upcast(@TypeOf(title), newDisplay.?.getTitle());
            if (title != null) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.SETTING_ }).?, "append", .{ title }).?, "append", .{ self._DISPLAY_ }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ newDisplay }) }))), self, self.SET_DISPLAY });
            } else {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.SETTING_NO_TITLE }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ newDisplay }) }))), self, self.SET_DISPLAY });
            }
        }
        const display: ?*Display = Inheritance.upcast(?*Display, self.getDisplay());
        _ = Inheritance.call(display.?, "setCurrent", .{ newDisplay });
    }
    

    pub fn getDisplay(self: *Self) ?*Display {
        return Inheritance.upcast(?*Display, Inheritance.callStatic(Display, "getDisplay", .{ self }));
    }
    

    pub fn getCurrentDisplayable(self: *Self) ?*Displayable {
        return Inheritance.upcast(?*Displayable, Inheritance.receiverOf(Inheritance.callStatic(Display, "getDisplay", .{ self }).?, "getCurrent").getCurrent());
    }
    

    pub fn setDestroyed(self: *Self, destroyed: bool) void {
        self.midletDestroyed = destroyed;
    }
    

    pub fn isDestroyed(self: *Self) bool {
        return self.midletDestroyed;
    }
    

    // throws MIDletStateChangeException
    pub fn startApp(self: *Self) void {
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    pub fn pauseApp(self: *Self) void {
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    pub fn destroyAppInRunnable(self: *Self, unconditional: bool, isProgress: bool) void {
        _ = unconditional;
        _ = isProgress;
        _ = self;
    }
    

    pub fn destroyApp(self: *Self, unconditional: bool) void {
        _ = unconditional;
        const METHOD_NAME: ?*String = String.literal("AllBinaryMidlet::destroyApp");
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, METHOD_NAME });
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Memory.getInfo(), self, METHOD_NAME });
            _ = Inheritance.call(self, "setDestroyed", .{ true });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, METHOD_NAME, e });
    }
    

    // throws Exception
    pub fn setStartStateHashtable(self: *Self, hashtable: ?*ABHashtable) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.START_LABEL }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ hashtable }) }))), self, String.literal("setStartStateHashtable") });
        self.hashtable = hashtable;
    }
    

    // throws Exception
    pub fn getStartStateHashtable(self: *Self) ?*ABHashtable {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.START_LABEL }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ self.hashtable }) }))), self, String.literal("getStartStateHashtable") });
        return self.hashtable;
    }
    

    // throws Exception
    pub fn getCurrentStateHashtable(self: *Self) ?*ABHashtable {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("getStateHashtable") });
        return Inheritance.upcast(?*ABHashtable, StdUtil.getInstance().?.NULL_TABLE);
    }
    

    pub fn commandAction(self: *Self, command: ?*Command, displayable: ?*Displayable) void {
        _ = command;
        _ = displayable;
        _ = self;
    }
};


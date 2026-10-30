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
// package org.allbinary.logic.java.help

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const ActionEvent = @import("java/awt/event/ActionEvent.zig").ActionEvent;
const File = @import("java/io/File.zig").File;
// const URI = @import("java/net/URI.zig").URI;
// const URL = @import("java/net/URL.zig").URL;
// const CSH = @import("javax/help/CSH.zig").CSH;
// const HelpBroker = @import("javax/help/HelpBroker.zig").HelpBroker;
// const HelpSet = @import("javax/help/HelpSet.zig").HelpSet;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const JavaHelpUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.help.JavaHelpUtil";
    logUtil: ?*LogUtil = null,
    point: ?*Point = null,
    dimension: ?*Dimension = null,
    contextSensitiveHelpActionEvent: ?*ActionEvent = null,
    commonStrings: ?*CommonStrings = null,
    var instance: ?*JavaHelpUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = JavaHelpUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.point = Inheritance.callStatic(Point, "create2", .{ 0, 0 });
        this.dimension = Inheritance.callStatic(Dimension, "create2", .{ 640, 480 });
        this.contextSensitiveHelpActionEvent = Inheritance.callStatic(ActionEvent, "create3", .{ JLabel.create(), ActionEvent.ACTION_FIRST, null });
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }
    

    pub fn getInstance() ?*JavaHelpUtil {
        return Inheritance.upcast(?*JavaHelpUtil, JavaHelpUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getHelpSet(self: *Self, filePath: ?*String) ?*HelpSet {
        { // try
            const helpSetURI: ?*URI = Inheritance.upcast(?*URI, Inheritance.callStatic(File, "create1", .{ filePath }).toURI());
            const helpSetURL: ?*URL = Inheritance.upcast(?*URL, helpSetURI.?.toURL());
            return Inheritance.upcast(?*HelpSet, Inheritance.call(self, "getHelpSet", .{ helpSetURL }));
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, JavaHelpUtil.getInstance(), String.literal("set"), e });
//             return null;
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getHelpSet(self: *Self, url: ?*URL) ?*HelpSet {
        _ = self;
        { // try
            return Inheritance.callStatic(HelpSet, "create2", .{ null, url });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, JavaHelpUtil.getInstance(), String.literal("set"), e });
//             return null;
    }
    

    pub fn show(self: *Self, helpSet: ?*HelpSet) void {
        { // try
            const helpBroker: ?*HelpBroker = Inheritance.upcast(?*HelpBroker, helpSet.?.createHelpBroker());
            _ = Inheritance.call(helpBroker.?, "setLocation", .{ self.point });
            _ = Inheritance.call(helpBroker.?, "setSize", .{ self.dimension });
            _ = Inheritance.call(Inheritance.callStatic(DisplayHelpFromSource, "create1", .{ helpBroker }), "actionPerformed", .{ self.contextSensitiveHelpActionEvent });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("CSH Action"), JavaHelpUtil.getInstance(), String.literal("show") });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, JavaHelpUtil.getInstance(), String.literal("show"), e });
    }
    

    pub fn main(args: []?*String) void {
        _ = args;
        { // try
            const javaHelpUtil: ?*JavaHelpUtil = Inheritance.upcast(?*JavaHelpUtil, JavaHelpUtil.getInstance());
            _ = Inheritance.call(javaHelpUtil.?, "show", .{ Inheritance.call(javaHelpUtil.?, "getHelpSet", .{ String.literal("G:/mnt/bc/mydev/working/automation/InputAutomationJavaApplication/AllBinaryInputAutomationHelp/AllBinaryInputAutomation.hs") }) });
        }
        // catch (Exception e):
    }
};


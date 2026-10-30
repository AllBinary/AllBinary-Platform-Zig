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
// package org.allbinary.log

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;

pub const LOGGING = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.log.LOGGING";
    name: ?*String = null,
    var logging: ?*BasicArrayList = undefined;
    pub var GRAPHICSPAINT: ?*LOGGING = undefined;
    pub var GRAPHICSCREATION: ?*LOGGING = undefined;
    pub var GRAPHICSDELETION: ?*LOGGING = undefined;
    pub var LOADINGERROR: ?*LOGGING = undefined;
    pub var MENUEVENT: ?*LOGGING = undefined;
    pub var MOUSEEVENT: ?*LOGGING = undefined;
    pub var KEYEVENT: ?*LOGGING = undefined;
    pub var ACTIONEVENT: ?*LOGGING = undefined;
    pub var ADJUSTMENTEVENT: ?*LOGGING = undefined;
    pub var COMPONENTEVENT: ?*LOGGING = undefined;
    pub var CONTAINEREVENT: ?*LOGGING = undefined;
    pub var FOCUSEVENT: ?*LOGGING = undefined;
    pub var HIERARCHYEVENT: ?*LOGGING = undefined;
    pub var INPUTEVENT: ?*LOGGING = undefined;
    pub var INVOCATIONEVENT: ?*LOGGING = undefined;
    pub var ITEMEVENT: ?*LOGGING = undefined;
    pub var PAINTEVENT: ?*LOGGING = undefined;
    pub var TEXTEVENT: ?*LOGGING = undefined;
    pub var WINDOWEVENT: ?*LOGGING = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        logging = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        GRAPHICSPAINT = Inheritance.callStatic(LOGGING, "create1", .{ String.literal("Graphics Paint") });
        GRAPHICSCREATION = Inheritance.callStatic(LOGGING, "create1", .{ String.literal("Graphics Creation") });
        GRAPHICSDELETION = Inheritance.callStatic(LOGGING, "create1", .{ String.literal("Graphics Deletion") });
        LOADINGERROR = Inheritance.callStatic(LOGGING, "create1", .{ String.literal("Loading Error") });
        MENUEVENT = Inheritance.callStatic(LOGGING, "create1", .{ String.literal("Menu Action Event") });
        MOUSEEVENT = Inheritance.callStatic(LOGGING, "create1", .{ String.literal("Mouse Action Event") });
        KEYEVENT = Inheritance.callStatic(LOGGING, "create1", .{ String.literal("Keyboard Action Event") });
        ACTIONEVENT = Inheritance.callStatic(LOGGING, "create1", .{ String.literal("Action Event") });
        ADJUSTMENTEVENT = Inheritance.callStatic(LOGGING, "create1", .{ String.literal("Adjustment Action Event") });
        COMPONENTEVENT = Inheritance.callStatic(LOGGING, "create1", .{ String.literal("Component Action Event") });
        CONTAINEREVENT = Inheritance.callStatic(LOGGING, "create1", .{ String.literal("Container Action Event") });
        FOCUSEVENT = Inheritance.callStatic(LOGGING, "create1", .{ String.literal("Focus Action Event") });
        HIERARCHYEVENT = Inheritance.callStatic(LOGGING, "create1", .{ String.literal("Hierarchy Action Event") });
        INPUTEVENT = Inheritance.callStatic(LOGGING, "create1", .{ String.literal("Input Action Event") });
        INVOCATIONEVENT = Inheritance.callStatic(LOGGING, "create1", .{ String.literal("Invocation Action Event") });
        ITEMEVENT = Inheritance.callStatic(LOGGING, "create1", .{ String.literal("Item Action Event") });
        PAINTEVENT = Inheritance.callStatic(LOGGING, "create1", .{ String.literal("Paint Action Event") });
        TEXTEVENT = Inheritance.callStatic(LOGGING, "create1", .{ String.literal("Text Action Event") });
        WINDOWEVENT = Inheritance.callStatic(LOGGING, "create1", .{ String.literal("Window Action Event") });
    }

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(value: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = value;
        _ = Inheritance.call(LOGGING.logging.?, "add", .{ value });
        return this;
    }
    

    pub fn contains(logType: ?*LOGGING) bool {
        return Inheritance.call(LOGGING.logging.?, "contains", .{ Object.toString(Object.of(logType)) });
    }
    

    pub fn toString(self: *Self) ?*String {
        return self.name;
    }
};


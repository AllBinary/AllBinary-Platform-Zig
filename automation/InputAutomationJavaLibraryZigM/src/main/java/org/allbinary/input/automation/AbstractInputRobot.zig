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
// package org.allbinary.input.automation

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const HelpSet = @import("javax/help/HelpSet.zig").HelpSet;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PointHelper = @import("org/allbinary/input/automation/PointHelper.zig").PointHelper;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const AbstractInputRobot = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.AbstractInputRobot";
    logUtil: ?*LogUtil = null,
    helpSet: ?*HelpSet = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.helpSet = null;
    }
    

    pub fn create1(helpSet: ?*HelpSet) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setHelpSet", .{ helpSet });
        return this;
    }
    

    pub fn getHelpSet(self: *Self) ?*HelpSet {
        return self.helpSet;
    }
    

    pub fn mouseMove(self: *Self, point: ?*Point) void {
        _ = Inheritance.call(self, "mouseMove", .{ point.?.x, point.?.y });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("Moved Mouse To: x: "), point.?.x), String.literal(" y: ")), point.?.y), self, String.literal("moveMouse") });
    }
    

    // throws Exception
    pub fn mouseMoveToTarget3(self: *Self, rectangle: ?*Rectangle, x: ?*Integer, y: ?*Integer) void {
        const point: ?*Point = Inheritance.upcast(?*Point, Inheritance.callStatic(PointHelper, "getCenterPoint", .{ rectangle }));
        _ = Inheritance.call(self, "mouseMove", .{ point.?.x + x, point.?.y + y });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.plus(String.plus(String.literal("Moved Mouse To: x: "), point.?.x), String.literal(" y: ")), point.?.y), String.literal(" in the middle of: ")), rectangle), self, String.literal("moveMouseToTarget") });
    }
    

    // throws Exception
    pub fn mouseMoveToTarget(self: *Self, rectangle: ?*Rectangle) void {
        _ = Inheritance.call(self, "mouseMoveToTarget", .{ rectangle, 0, 0 });
    }
    

    pub fn mouseMove2(self: *Self, x: ?*Integer, y: ?*Integer) void {
        _ = x;
        _ = y;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn setHelpSet(self: *Self, helpSet: ?*HelpSet) void {
        self.helpSet = helpSet;
    }
};


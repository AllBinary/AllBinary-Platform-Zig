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
// package org.allbinary.input.automation.robot

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
// const HelpSet = @import("javax/help/HelpSet.zig").HelpSet;
const AbstractInputRobot = @import("org/allbinary/input/automation/AbstractInputRobot.zig").AbstractInputRobot;
const PointFactory = @import("org/allbinary/input/automation/PointFactory.zig").PointFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const InputRobotInterface = @import("org/allbinary/input/automation/robot/InputRobotInterface.zig").InputRobotInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const NullInputRobot = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.robot.NullInputRobot";
    pub const java_interfaces = .{ InputRobotInterface };
    base: AbstractInputRobot = undefined,
    logUtil: ?*LogUtil = null,
    // Implements InputRobotInterface
    pub const LIBRARY_NAME: ?*String = String.literal("null");
    pub const NAME: ?*String = String.literal("NULL");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbstractInputRobot, "create1", .{ null }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, NullInputRobot.NAME);
    }
    

    pub fn getHelpSet(self: *Self) ?*HelpSet {
        _ = self;
        return null;
    }
    

    pub fn getMousePoint(self: *Self) ?*Point {
        _ = self;
        return Inheritance.upcast(?*Point, Inheritance.callStatic(PointFactory, "getInstance", .{ 0, 0 }));
    }
    

    pub fn keyPress(self: *Self, keycode: ?*Integer) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("KeyCode: "), keycode), self, String.literal("keyPress") });
    }
    

    pub fn keyRelease(self: *Self, keycode: ?*Integer) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("KeyCode: "), keycode), self, String.literal("keyRelease") });
    }
    

    pub fn mouseMove(self: *Self, x: ?*Integer, y: ?*Integer) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("X: "), x), String.literal(" Y: ")), y), self, String.literal("mouseMove") });
    }
    

    pub fn mousePress(self: *Self, buttons: ?*Integer) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Buttons: "), buttons), self, String.literal("mousePress") });
    }
    

    pub fn mouseRelease(self: *Self, buttons: ?*Integer) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Buttons: "), buttons), self, String.literal("mouseRelease") });
    }
    

    pub fn createScreenCapture(self: *Self, screenRect: ?*Rectangle) ?*BufferedImage {
        _ = screenRect;
        _ = self;
        return null;
    }
    

    pub fn delay(self: *Self, ms: ?*Integer) void {
        _ = ms;
        _ = self;
    }
    

    pub fn getAutoDelay(self: *Self) ?*Integer {
        _ = self;
        return Inheritance.upcast(?*Integer, -1);
    }
    

    pub fn getPixelColor(self: *Self, x: ?*Integer, y: ?*Integer) ?*Color {
        _ = x;
        _ = y;
        _ = self;
        return null;
    }
    

    pub fn isAutoWaitForIdle(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn mouseWheel(self: *Self, wheelAmt: ?*Integer) void {
        _ = wheelAmt;
        _ = self;
    }
    

    pub fn setAutoDelay(self: *Self, ms: ?*Integer) void {
        _ = ms;
        _ = self;
    }
    

    pub fn setAutoWaitForIdle(self: *Self, isOn: bool) void {
        _ = isOn;
        _ = self;
    }
    

    pub fn toString(self: *Self) ?*String {
        _ = self;
        return String.literal("DirectXWindowsInputRobot");
    }
    

    pub fn waitForIdle(self: *Self) void {
        _ = self;
    }
};


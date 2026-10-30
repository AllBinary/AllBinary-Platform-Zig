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
const PointHelper = @import("org/allbinary/input/automation/PointHelper.zig").PointHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const InputRobotInterface = @import("org/allbinary/input/automation/robot/InputRobotInterface.zig").InputRobotInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const InputRobot = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.robot.InputRobot";
    pub const java_interfaces = .{ InputRobotInterface };
    logUtil: ?*LogUtil = null,
    robot: ?*Robot = null,
    // Implements InputRobotInterface
    pub const NAME: ?*String = String.literal("Java Robot");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(graphicsDevice: ?*GraphicsDevice) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.robot = Inheritance.callStatic(Robot, "create1", .{ graphicsDevice });
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, InputRobot.NAME);
    }
    

    pub fn getHelpSet(self: *Self) ?*HelpSet {
        _ = self;
        return null;
    }
    

    pub fn getMousePoint(self: *Self) ?*Point {
        _ = self;
        const point: ?*Point = Inheritance.upcast(?*Point, Inheritance.receiverOf(MouseInfo.getPointerInfo().?, "getLocation").getLocation());
        return point;
    }
    

    // throws Exception
    pub fn mouseMoveToTarget3(self: *Self, rectangle: ?*Rectangle, x: ?*Integer, y: ?*Integer) void {
        const point: ?*Point = Inheritance.upcast(?*Point, Inheritance.callStatic(PointHelper, "getCenterPoint", .{ rectangle }));
        _ = Inheritance.call(self.robot.?, "mouseMove", .{ point.?.x + x, point.?.y + y });
        const message: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Moved Mouse To: x: ") }).?, "appendint", .{ @as(i32, @intCast(point.?.x)) }).?, "append", .{ String.literal(" y: ") }).?, "appendint", .{ @as(i32, @intCast(point.?.y)) }).?, "append", .{ String.literal(" in the middle of: ") }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ rectangle }) }))));
        _ = Inheritance.call(self.logUtil.?, "putF", .{ message, self, String.literal("moveMouseToTarget") });
    }
    

    pub fn mouseMove(self: *Self, point: ?*Point) void {
        _ = Inheritance.call(self, "mouseMove", .{ point.?.x, point.?.y });
    }
    

    pub fn mouseMove2(self: *Self, x: i32, y: i32) void {
        _ = Inheritance.call(self.robot.?, "mouseMove", .{ x, y });
        const message: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Moved Mouse To: x: ") }).?, "appendint", .{ x }).?, "append", .{ String.literal(" y: ") }).?, "appendint", .{ y }))));
        _ = Inheritance.call(self.logUtil.?, "putF", .{ message, self, String.literal("moveMouse") });
    }
    

    // throws Exception
    pub fn mouseMoveToTarget(self: *Self, rectangle: ?*Rectangle) void {
        _ = Inheritance.call(self, "mouseMoveToTarget", .{ rectangle, 0, 0 });
    }
    

    pub fn createScreenCapture(self: *Self, screenRect: ?*Rectangle) ?*BufferedImage {
        return Inheritance.upcast(?*BufferedImage, Inheritance.call(self.robot.?, "createScreenCapture", .{ screenRect }));
    }
    

    pub fn delay(self: *Self, ms: ?*Integer) void {
        _ = Inheritance.call(self.robot.?, "delay", .{ ms });
    }
    

    pub fn getAutoDelay(self: *Self) ?*Integer {
        return Inheritance.upcast(?*Integer, self.robot.?.getAutoDelay());
    }
    

    pub fn getPixelColor(self: *Self, x: ?*Integer, y: ?*Integer) ?*Color {
        return Inheritance.upcast(?*Color, Inheritance.call(self.robot.?, "getPixelColor", .{ x, y }));
    }
    

    pub fn isAutoWaitForIdle(self: *Self) bool {
        return self.robot.?.isAutoWaitForIdle();
    }
    

    pub fn keyPress(self: *Self, keycode: ?*Integer) void {
        _ = Inheritance.call(self.robot.?, "keyPress", .{ keycode });
    }
    

    pub fn keyRelease(self: *Self, keycode: ?*Integer) void {
        _ = Inheritance.call(self.robot.?, "keyRelease", .{ keycode });
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn mouseMove2(self: *Self, x: ?*Integer, y: ?*Integer) void {
        _ = Inheritance.call(self.robot.?, "mouseMove", .{ x, y });
    }
    

    pub fn mousePress(self: *Self, buttons: ?*Integer) void {
        _ = Inheritance.call(self.robot.?, "mousePress", .{ buttons });
    }
    

    pub fn mouseRelease(self: *Self, buttons: ?*Integer) void {
        _ = Inheritance.call(self.robot.?, "mouseRelease", .{ buttons });
    }
    

    pub fn mouseWheel(self: *Self, wheelAmt: ?*Integer) void {
        _ = Inheritance.call(self.robot.?, "mouseWheel", .{ wheelAmt });
    }
    

    pub fn setAutoDelay(self: *Self, ms: ?*Integer) void {
        _ = Inheritance.call(self.robot.?, "setAutoDelay", .{ ms });
    }
    

    pub fn setAutoWaitForIdle(self: *Self, isOn: bool) void {
        _ = Inheritance.call(self.robot.?, "setAutoWaitForIdle", .{ isOn });
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.robot)));
    }
    

    pub fn waitForIdle(self: *Self) void {
        _ = self.robot.?.waitForIdle();
    }
    

    pub fn on(self: *Self) void {
        _ = self;
    }
    

    pub fn off(self: *Self) void {
        _ = self;
    }
};


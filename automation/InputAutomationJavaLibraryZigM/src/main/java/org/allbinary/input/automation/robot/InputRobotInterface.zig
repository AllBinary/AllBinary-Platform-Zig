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
const Integer = @import("java/lang/Integer.zig").Integer;

// Java interface: an implementation is a pointer and a table of functions
pub const InputRobotInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.robot.InputRobotInterface";
    pointer: *anyopaque,
    object: Object,
    getNameFn: *const fn (pointer: *anyopaque) ?*String,
    getHelpSetFn: *const fn (pointer: *anyopaque) ?*HelpSet,
    createScreenCaptureFn: *const fn (pointer: *anyopaque, screenRect: ?*Rectangle) ?*BufferedImage,
    delayFn: *const fn (pointer: *anyopaque, ms: ?*Integer) void,
    getAutoDelayFn: *const fn (pointer: *anyopaque) ?*Integer,
    getPixelColorFn: *const fn (pointer: *anyopaque, x: ?*Integer, y: ?*Integer) ?*Color,
    isAutoWaitForIdleFn: *const fn (pointer: *anyopaque) bool,
    keyPressFn: *const fn (pointer: *anyopaque, keycode: ?*Integer) void,
    keyReleaseFn: *const fn (pointer: *anyopaque, keycode: ?*Integer) void,
    getMousePointFn: *const fn (pointer: *anyopaque) ?*Point,
    mouseMoveFn: *const fn (pointer: *anyopaque, x: ?*Integer, y: ?*Integer) void,
    mousePressFn: *const fn (pointer: *anyopaque, buttons: ?*Integer) void,
    mouseReleaseFn: *const fn (pointer: *anyopaque, buttons: ?*Integer) void,
    mouseWheelFn: *const fn (pointer: *anyopaque, wheelAmt: ?*Integer) void,
    setAutoDelayFn: *const fn (pointer: *anyopaque, ms: ?*Integer) void,
    setAutoWaitForIdleFn: *const fn (pointer: *anyopaque, isOn: bool) void,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    waitForIdleFn: *const fn (pointer: *anyopaque) void,
    mouseMoveFn: *const fn (pointer: *anyopaque, point: ?*Point) void,
    mouseMoveToTargetFn: *const fn (pointer: *anyopaque, rectangle: ?*Rectangle) void,
    mouseMoveToTargetFn: *const fn (pointer: *anyopaque, rectangle: ?*Rectangle, x: ?*Integer, y: ?*Integer) void,

    pub fn getName(self: *Self) ?*String {
        return self.getNameFn(self.pointer);
    }

    pub fn getHelpSet(self: *Self) ?*HelpSet {
        return self.getHelpSetFn(self.pointer);
    }

    pub fn createScreenCapture(self: *Self, screenRect: ?*Rectangle) ?*BufferedImage {
        return self.createScreenCaptureFn(self.pointer, screenRect);
    }

    pub fn delay(self: *Self, ms: ?*Integer) void {
        return self.delayFn(self.pointer, ms);
    }

    pub fn getAutoDelay(self: *Self) ?*Integer {
        return self.getAutoDelayFn(self.pointer);
    }

    pub fn getPixelColor(self: *Self, x: ?*Integer, y: ?*Integer) ?*Color {
        return self.getPixelColorFn(self.pointer, x, y);
    }

    pub fn isAutoWaitForIdle(self: *Self) bool {
        return self.isAutoWaitForIdleFn(self.pointer);
    }

    pub fn keyPress(self: *Self, keycode: ?*Integer) void {
        return self.keyPressFn(self.pointer, keycode);
    }

    pub fn keyRelease(self: *Self, keycode: ?*Integer) void {
        return self.keyReleaseFn(self.pointer, keycode);
    }

    pub fn getMousePoint(self: *Self) ?*Point {
        return self.getMousePointFn(self.pointer);
    }

    pub fn mouseMove(self: *Self, x: ?*Integer, y: ?*Integer) void {
        return self.mouseMoveFn(self.pointer, x, y);
    }

    pub fn mousePress(self: *Self, buttons: ?*Integer) void {
        return self.mousePressFn(self.pointer, buttons);
    }

    pub fn mouseRelease(self: *Self, buttons: ?*Integer) void {
        return self.mouseReleaseFn(self.pointer, buttons);
    }

    pub fn mouseWheel(self: *Self, wheelAmt: ?*Integer) void {
        return self.mouseWheelFn(self.pointer, wheelAmt);
    }

    pub fn setAutoDelay(self: *Self, ms: ?*Integer) void {
        return self.setAutoDelayFn(self.pointer, ms);
    }

    pub fn setAutoWaitForIdle(self: *Self, isOn: bool) void {
        return self.setAutoWaitForIdleFn(self.pointer, isOn);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    pub fn waitForIdle(self: *Self) void {
        return self.waitForIdleFn(self.pointer);
    }

    pub fn mouseMove(self: *Self, point: ?*Point) void {
        return self.mouseMoveFn(self.pointer, point);
    }

    pub fn mouseMoveToTarget(self: *Self, rectangle: ?*Rectangle) void {
        return self.mouseMoveToTargetFn(self.pointer, rectangle);
    }

    pub fn mouseMoveToTarget(self: *Self, rectangle: ?*Rectangle, x: ?*Integer, y: ?*Integer) void {
        return self.mouseMoveToTargetFn(self.pointer, rectangle, x, y);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn getName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getName").getName());
            }
            fn getHelpSet(pointer: *anyopaque) ?*HelpSet {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*HelpSet, Inheritance.receiver(implementation, "getHelpSet").getHelpSet());
            }
            fn createScreenCapture(pointer: *anyopaque, screenRect: ?*Rectangle) ?*BufferedImage {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BufferedImage, Inheritance.receiver(implementation, "createScreenCapture").createScreenCapture(screenRect));
            }
            fn delay(pointer: *anyopaque, ms: ?*Integer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "delay").delay(ms);
            }
            fn getAutoDelay(pointer: *anyopaque) ?*Integer {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Integer, Inheritance.receiver(implementation, "getAutoDelay").getAutoDelay());
            }
            fn getPixelColor(pointer: *anyopaque, x: ?*Integer, y: ?*Integer) ?*Color {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Color, Inheritance.receiver(implementation, "getPixelColor").getPixelColor(x, y));
            }
            fn isAutoWaitForIdle(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isAutoWaitForIdle").isAutoWaitForIdle();
            }
            fn keyPress(pointer: *anyopaque, keycode: ?*Integer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "keyPress").keyPress(keycode);
            }
            fn keyRelease(pointer: *anyopaque, keycode: ?*Integer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "keyRelease").keyRelease(keycode);
            }
            fn getMousePoint(pointer: *anyopaque) ?*Point {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Point, Inheritance.receiver(implementation, "getMousePoint").getMousePoint());
            }
            fn mouseMove(pointer: *anyopaque, x: ?*Integer, y: ?*Integer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "mouseMove").mouseMove(x, y);
            }
            fn mousePress(pointer: *anyopaque, buttons: ?*Integer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "mousePress").mousePress(buttons);
            }
            fn mouseRelease(pointer: *anyopaque, buttons: ?*Integer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "mouseRelease").mouseRelease(buttons);
            }
            fn mouseWheel(pointer: *anyopaque, wheelAmt: ?*Integer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "mouseWheel").mouseWheel(wheelAmt);
            }
            fn setAutoDelay(pointer: *anyopaque, ms: ?*Integer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setAutoDelay").setAutoDelay(ms);
            }
            fn setAutoWaitForIdle(pointer: *anyopaque, isOn: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setAutoWaitForIdle").setAutoWaitForIdle(isOn);
            }
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "toString").toString());
            }
            fn waitForIdle(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "waitForIdle").waitForIdle();
            }
            fn mouseMove(pointer: *anyopaque, point: ?*Point) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "mouseMove").mouseMove(point);
            }
            fn mouseMoveToTarget(pointer: *anyopaque, rectangle: ?*Rectangle) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "mouseMoveToTarget").mouseMoveToTarget(rectangle);
            }
            fn mouseMoveToTarget(pointer: *anyopaque, rectangle: ?*Rectangle, x: ?*Integer, y: ?*Integer) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "mouseMoveToTarget").mouseMoveToTarget(rectangle, x, y);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .getNameFn = Methods.getName, .getHelpSetFn = Methods.getHelpSet, .createScreenCaptureFn = Methods.createScreenCapture, .delayFn = Methods.delay, .getAutoDelayFn = Methods.getAutoDelay, .getPixelColorFn = Methods.getPixelColor, .isAutoWaitForIdleFn = Methods.isAutoWaitForIdle, .keyPressFn = Methods.keyPress, .keyReleaseFn = Methods.keyRelease, .getMousePointFn = Methods.getMousePoint, .mouseMoveFn = Methods.mouseMove, .mousePressFn = Methods.mousePress, .mouseReleaseFn = Methods.mouseRelease, .mouseWheelFn = Methods.mouseWheel, .setAutoDelayFn = Methods.setAutoDelay, .setAutoWaitForIdleFn = Methods.setAutoWaitForIdle, .toStringFn = Methods.toString, .waitForIdleFn = Methods.waitForIdle, .mouseMoveFn = Methods.mouseMove, .mouseMoveToTargetFn = Methods.mouseMoveToTarget, .mouseMoveToTargetFn = Methods.mouseMoveToTarget };
        return this;
    }
};


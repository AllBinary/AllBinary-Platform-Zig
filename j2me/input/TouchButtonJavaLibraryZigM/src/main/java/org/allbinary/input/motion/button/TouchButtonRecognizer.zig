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
// package org.allbinary.input.motion.button

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DownGameKeyEventHandler = @import("org/allbinary/game/input/event/DownGameKeyEventHandler.zig").DownGameKeyEventHandler;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const UpGameKeyEventHandler = @import("org/allbinary/game/input/event/UpGameKeyEventHandler.zig").UpGameKeyEventHandler;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const RectangleCollisionUtil = @import("org/allbinary/math/RectangleCollisionUtil.zig").RectangleCollisionUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicTouchInputFactory = @import("org/allbinary/input/motion/button/BasicTouchInputFactory.zig").BasicTouchInputFactory;
const CancelTouchButtonInputFactory = @import("org/allbinary/input/motion/button/CancelTouchButtonInputFactory.zig").CancelTouchButtonInputFactory;
const CurrentlyPressedTouchButtonSingleton = @import("org/allbinary/input/motion/button/CurrentlyPressedTouchButtonSingleton.zig").CurrentlyPressedTouchButtonSingleton;
const TouchButton = @import("org/allbinary/input/motion/button/TouchButton.zig").TouchButton;
const TouchButtonFactory = @import("org/allbinary/input/motion/button/TouchButtonFactory.zig").TouchButtonFactory;
const TouchButtonInput = @import("org/allbinary/input/motion/button/TouchButtonInput.zig").TouchButtonInput;
const TouchScreenFactory = @import("org/allbinary/input/motion/button/TouchScreenFactory.zig").TouchScreenFactory;

pub const TouchButtonRecognizer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.TouchButtonRecognizer";
    logUtil: ?*LogUtil = null,
    rectangleCollisionUtil: ?*RectangleCollisionUtil = null,
    upGameKeyEventHandler: ?*UpGameKeyEventHandler = null,
    downGameKeyEventHandler: ?*DownGameKeyEventHandler = null,
    lastPressedTouchButtonInput: ?*TouchButtonInput = null,
    currentlyPressedTouchButtonSingleton: ?*CurrentlyPressedTouchButtonSingleton = null,
    releaseHelper: ?*ReleaseHelper = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.rectangleCollisionUtil = Inheritance.upcast(?*RectangleCollisionUtil, RectangleCollisionUtil.getInstance());
        this.upGameKeyEventHandler = Inheritance.upcast(?*UpGameKeyEventHandler, UpGameKeyEventHandler.getInstance());
        this.downGameKeyEventHandler = Inheritance.upcast(?*DownGameKeyEventHandler, DownGameKeyEventHandler.getInstance());
        this.lastPressedTouchButtonInput = Inheritance.upcast(?*TouchButtonInput, BasicTouchInputFactory.getInstance().?.NONE);
        this.currentlyPressedTouchButtonSingleton = Inheritance.upcast(?*CurrentlyPressedTouchButtonSingleton, CurrentlyPressedTouchButtonSingleton.getInstance());
        this.releaseHelper = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.receiverOf(TouchScreenFactory.getInstance().?, "isMultiTouch").isMultiTouch()) {
            this.releaseHelper = Inheritance.upcast(@TypeOf(this.releaseHelper), Inheritance.callStatic(MultitouchReleaseHelper, "create1", .{ this }));
        } else {
            this.releaseHelper = Inheritance.callStatic(ReleaseHelper, "create1", .{ this });
        }
        return this;
    }
    

    // throws Exception
    pub fn processRelease(self: *Self, touchButtonInput: ?*TouchButtonInput, deviceId: i32) void {
        _ = Inheritance.call(self.releaseHelper.?, "release", .{ touchButtonInput, deviceId });
        const gameKeyEvent: ?*GameKeyEvent = Inheritance.upcast(?*GameKeyEvent, Inheritance.receiver(touchButtonInput.?, "getGameKeyEvent").getGameKeyEvent());
        _ = Inheritance.call(self.upGameKeyEventHandler.?, "fireEvent", .{ gameKeyEvent });
        _ = Inheritance.call(Inheritance.call(self.upGameKeyEventHandler.?, "getInstanceForDevice", .{ deviceId }).?, "fireEvent", .{ gameKeyEvent });
        _ = Inheritance.call(self.currentlyPressedTouchButtonSingleton.?, "remove", .{ touchButtonInput });
    }
    

    // throws Exception
    pub fn releaseTouchButtonInput(self: *Self, x: i32, y: i32, deviceId: i32) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        var touchButtonInput: ?*TouchButtonInput = self.lastPressedTouchButtonInput;
        if (Inheritance.call(self.currentlyPressedTouchButtonSingleton.?, "contains", .{ touchButtonInput })) {
            self.lastPressedTouchButtonInput = Inheritance.upcast(@TypeOf(self.lastPressedTouchButtonInput), BasicTouchInputFactory.getInstance().?.NONE);
            _ = Inheritance.call(self, "processRelease", .{ touchButtonInput, deviceId });
            return true;
        } else {
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(TouchButtonFactory.getInstance().?, "getList").getList());
            var rectangle: ?*Rectangle = null;
            var point: ?*GPoint = null;
            var touchButton: ?*TouchButton = null;
            {
                var index: i32 = list.?.size() - 1;
                while (index >= 0) : (index -= 1) {
                touchButton = Inheritance.cast(?*TouchButton, list.?.objectArray[@intCast(index)]);
                rectangle = Inheritance.upcast(@TypeOf(rectangle), Inheritance.receiver(touchButton.?, "getRectangle").getRectangle());
                point = Inheritance.upcast(@TypeOf(point), rectangle.?.getPoint());
                if (Inheritance.call(self.rectangleCollisionUtil.?, "isInside", .{ point.?.getX(), point.?.getY(), rectangle.?.getMaxX(), rectangle.?.getMaxY(), x, y })) {
                    touchButtonInput = Inheritance.upcast(@TypeOf(touchButtonInput), Inheritance.receiver(touchButton.?, "getTouchButtonInput").getTouchButtonInput());
                    _ = Inheritance.call(self, "processRelease", .{ touchButtonInput, deviceId });
                    return true;
                }
                }
            }
        }
        return false;
    }
    

    // throws Exception
    pub fn pressTouchButtonInput(self: *Self, x: i32, y: i32, deviceId: i32) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(TouchButtonFactory.getInstance().?, "getList").getList());
        var rectangle: ?*Rectangle = null;
        var point: ?*GPoint = null;
        var touchButton: ?*TouchButton = null;
        var touchButtonInput: ?*TouchButtonInput = null;
        var gameKeyEvent: ?*GameKeyEvent = null;
        {
            var index: i32 = list.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            touchButton = Inheritance.cast(?*TouchButton, list.?.objectArray[@intCast(index)]);
            rectangle = Inheritance.upcast(@TypeOf(rectangle), Inheritance.receiver(touchButton.?, "getRectangle").getRectangle());
            point = Inheritance.upcast(@TypeOf(point), rectangle.?.getPoint());
            if (Inheritance.call(self.rectangleCollisionUtil.?, "isInside", .{ point.?.getX(), point.?.getY(), rectangle.?.getMaxX(), rectangle.?.getMaxY(), x, y })) {
                touchButtonInput = Inheritance.upcast(@TypeOf(touchButtonInput), Inheritance.receiver(touchButton.?, "getTouchButtonInput").getTouchButtonInput());
                if (!Inheritance.call(self.currentlyPressedTouchButtonSingleton.?, "contains", .{ touchButtonInput })) {
                    _ = Inheritance.call(self.releaseHelper.?, "release", .{ touchButtonInput, deviceId });
                    self.lastPressedTouchButtonInput = touchButtonInput;
                    _ = Inheritance.call(self.currentlyPressedTouchButtonSingleton.?, "add", .{ touchButtonInput });
                    gameKeyEvent = Inheritance.upcast(@TypeOf(gameKeyEvent), Inheritance.receiver(touchButtonInput.?, "getGameKeyEvent").getGameKeyEvent());
                    _ = Inheritance.call(self.downGameKeyEventHandler.?, "fireEvent", .{ gameKeyEvent });
                    _ = Inheritance.call(Inheritance.call(self.downGameKeyEventHandler.?, "getInstanceForDevice", .{ deviceId }).?, "fireEvent", .{ gameKeyEvent });
                }
                return true;
            }
            }
        }
        return false;
    }
    //CurrentlyPressedTouchButtonSingletonDebug.getInstance();
    pub const ReleaseHelper = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.input.motion.button.ReleaseHelper";
        touchButtonRecognizer: ?*TouchButtonRecognizer = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(touchButtonRecognizer: ?*TouchButtonRecognizer) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
            this.initFields();
            this.touchButtonRecognizer = touchButtonRecognizer;
            return this;
        }
        

        // throws Exception
        pub fn release(self: *Self, touchButtonInput: ?*TouchButtonInput, deviceId: i32) void {
            _ = touchButtonInput;
            var nextTouchButtonInput: ?*TouchButtonInput = null;
            var gameKeyEvent: ?*GameKeyEvent = null;
            {
                var index: i32 = Inheritance.receiverOf(self.touchButtonRecognizer.?.currentlyPressedTouchButtonSingleton.?, "size").size() - 1;
                while (index >= 0) : (index -= 1) {
                nextTouchButtonInput = Inheritance.upcast(@TypeOf(nextTouchButtonInput), Inheritance.call(self.touchButtonRecognizer.?.currentlyPressedTouchButtonSingleton.?, "get", .{ index }));
                gameKeyEvent = Inheritance.upcast(@TypeOf(gameKeyEvent), Inheritance.receiver(nextTouchButtonInput.?, "getGameKeyEvent").getGameKeyEvent());
                _ = Inheritance.call(self.touchButtonRecognizer.?.upGameKeyEventHandler.?, "fireEvent", .{ gameKeyEvent });
                _ = Inheritance.call(Inheritance.call(self.touchButtonRecognizer.?.upGameKeyEventHandler.?, "getInstanceForDevice", .{ deviceId }).?, "fireEvent", .{ gameKeyEvent });
                _ = Inheritance.call(self.touchButtonRecognizer.?.currentlyPressedTouchButtonSingleton.?, "removeAt", .{ index });
                }
            }
        }
    };
    pub const MultitouchReleaseHelper = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.input.motion.button.MultitouchReleaseHelper";
        base: ReleaseHelper = undefined,
        

        pub fn create1(touchButtonRecognizer: ?*TouchButtonRecognizer) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
            
            Inheritance.bindOverrides(this);
            return this;
        }
        

        // throws Exception
        pub fn release(self: *Self, touchButtonInput: ?*TouchButtonInput, deviceId: i32) void {
            const cancelTouchButtonInput: ?*TouchButtonInput = Inheritance.upcast(?*TouchButtonInput, Inheritance.call(CancelTouchButtonInputFactory.getInstance().?, "getCancel", .{ touchButtonInput }));
            var nextTouchButtonInput: ?*TouchButtonInput = null;
            var gameKeyEvent: ?*GameKeyEvent = null;
            {
                var index: i32 = Inheritance.receiverOf(self.touchButtonRecognizer.?.currentlyPressedTouchButtonSingleton.?, "size").size() - 1;
                while (index >= 0) : (index -= 1) {
                nextTouchButtonInput = Inheritance.upcast(@TypeOf(nextTouchButtonInput), Inheritance.call(self.touchButtonRecognizer.?.currentlyPressedTouchButtonSingleton.?, "get", .{ index }));
                if (Object.same(cancelTouchButtonInput, nextTouchButtonInput)) {
                    gameKeyEvent = Inheritance.upcast(@TypeOf(gameKeyEvent), Inheritance.receiver(nextTouchButtonInput.?, "getGameKeyEvent").getGameKeyEvent());
                    _ = Inheritance.call(self.touchButtonRecognizer.?.upGameKeyEventHandler.?, "fireEvent", .{ gameKeyEvent });
                    _ = Inheritance.call(Inheritance.call(self.touchButtonRecognizer.?.upGameKeyEventHandler.?, "getInstanceForDevice", .{ deviceId }).?, "fireEvent", .{ gameKeyEvent });
                    _ = Inheritance.call(self.touchButtonRecognizer.?.currentlyPressedTouchButtonSingleton.?, "removeAt", .{ index });
                }
                }
            }
        }
    };
};


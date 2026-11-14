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
const CurrentlyPressedTouchButtonSingleton = @import("org/allbinary/input/motion/button/CurrentlyPressedTouchButtonSingleton.zig").CurrentlyPressedTouchButtonSingleton;
const MultitouchReleaseHelper = @import("org/allbinary/input/motion/button/MultitouchReleaseHelper.zig").MultitouchReleaseHelper;
const ReleaseHelper = @import("org/allbinary/input/motion/button/ReleaseHelper.zig").ReleaseHelper;
const TouchButton = @import("org/allbinary/input/motion/button/TouchButton.zig").TouchButton;
const TouchButtonFactory = @import("org/allbinary/input/motion/button/TouchButtonFactory.zig").TouchButtonFactory;
const TouchButtonInput = @import("org/allbinary/input/motion/button/TouchButtonInput.zig").TouchButtonInput;
const TouchScreenFactory = @import("org/allbinary/input/motion/button/TouchScreenFactory.zig").TouchScreenFactory;
const Exception = @import("java/lang/Exception.zig").Exception;

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
        this.lastPressedTouchButtonInput = Inheritance.upcast(?*TouchButtonInput, Inheritance.fieldPointer(BasicTouchInputFactory.getInstance().?, "NONE").*);
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
            self.lastPressedTouchButtonInput = Inheritance.upcast(@TypeOf(self.lastPressedTouchButtonInput), Inheritance.fieldPointer(BasicTouchInputFactory.getInstance().?, "NONE").*);
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
                touchButton = Inheritance.cast(?*TouchButton, Inheritance.fieldPointer(list.?, "objectArray").*[@intCast(index)]);
                rectangle = Inheritance.upcast(@TypeOf(rectangle), Inheritance.receiver(touchButton.?, "getRectangle").getRectangle());
                point = Inheritance.upcast(@TypeOf(point), Inheritance.receiver(rectangle.?, "getPoint").getPoint());
                if (Inheritance.call(self.rectangleCollisionUtil.?, "isInside", .{ point.?.getX(), point.?.getY(), Inheritance.receiver(rectangle.?, "getMaxX").getMaxX(), Inheritance.receiver(rectangle.?, "getMaxY").getMaxY(), x, y })) {
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
            touchButton = Inheritance.cast(?*TouchButton, Inheritance.fieldPointer(list.?, "objectArray").*[@intCast(index)]);
            rectangle = Inheritance.upcast(@TypeOf(rectangle), Inheritance.receiver(touchButton.?, "getRectangle").getRectangle());
            point = Inheritance.upcast(@TypeOf(point), Inheritance.receiver(rectangle.?, "getPoint").getPoint());
            if (Inheritance.call(self.rectangleCollisionUtil.?, "isInside", .{ point.?.getX(), point.?.getY(), Inheritance.receiver(rectangle.?, "getMaxX").getMaxX(), Inheritance.receiver(rectangle.?, "getMaxY").getMaxY(), x, y })) {
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
};


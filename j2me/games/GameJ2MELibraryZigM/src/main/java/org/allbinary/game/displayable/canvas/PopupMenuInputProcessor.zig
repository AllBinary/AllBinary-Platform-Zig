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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const GameInputStrings = @import("org/allbinary/game/input/GameInputStrings.zig").GameInputStrings;
const GameKeyEvent = @import("org/allbinary/game/input/event/GameKeyEvent.zig").GameKeyEvent;
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const MyCanvas = @import("org/allbinary/graphics/displayable/MyCanvas.zig").MyCanvas;
const MotionGestureInput = @import("org/allbinary/input/motion/gesture/MotionGestureInput.zig").MotionGestureInput;
const TouchMotionGestureFactory = @import("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.zig").TouchMotionGestureFactory;
const MotionGestureEvent = @import("org/allbinary/input/motion/gesture/observer/MotionGestureEvent.zig").MotionGestureEvent;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const RectangleCollisionUtil = @import("org/allbinary/math/RectangleCollisionUtil.zig").RectangleCollisionUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;
const BasicMenuInputProcessor = @import("org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.zig").BasicMenuInputProcessor;

pub const PopupMenuInputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.PopupMenuInputProcessor";
    base: BasicMenuInputProcessor = undefined,
    rectangleCollisionUtil: ?*RectangleCollisionUtil = null,
    CLICK_DELAY: i32 = 0,
    clickTimeHelper: ?*TimeDelayHelper = null,
    rectangle: ?*Rectangle = null,

    fn initFields(this: *Self) void {
        this.rectangleCollisionUtil = Inheritance.upcast(?*RectangleCollisionUtil, RectangleCollisionUtil.getInstance());
        this.CLICK_DELAY = 120;
        this.clickTimeHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ this.CLICK_DELAY });
        
    }
    

    pub fn create4(gameKeyEventList: ?*BasicArrayList, playerInputId: i32, gameCanvas: ?*MyCanvas, rectangle: ?*Rectangle) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicMenuInputProcessor, "create3", .{ gameKeyEventList, playerInputId, gameCanvas }).*;
        this.initFields();
        this.rectangle = rectangle;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self, rectangle: ?*Rectangle) void {
        self.rectangle = rectangle;
    }
    

    // throws Exception
    pub fn processInput(self: *Self, key: i32) i32 {
        if (key == Canvas.KEY_STAR) {
            const gameCanvas: ?*AllBinaryGameCanvas = Inheritance.cast(?*AllBinaryGameCanvas, Inheritance.receiver(self, "getCanvas").getCanvas());
            _ = Inheritance.receiver(gameCanvas.?, "toggleMenu").toggleMenu();
            return 1;
        }
        return 0;
    }
    

    // throws Exception
    pub fn processInputList(self: *Self) i32 {
        { // try
            const motionInputsIndex: i32 = self.processMotionInputs();
            const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self, "getGameKeyEventList").getGameKeyEventList());
            const size: i32 = list.?.size();
            var key: i32 = 0;
            var gameKeyEvent: ?*GameKeyEvent = null;
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                gameKeyEvent = Inheritance.cast(?*GameKeyEvent, list.?.objectArray[@intCast(index)]);
                if (gameKeyEvent != null) {
                    key = Inheritance.receiver(gameKeyEvent.?, "getKey").getKey();
                    if (Inheritance.call(self, "processInput", .{ key }) == 1) {
                        break;
                    }
                }
                }
            }
            _ = Inheritance.receiver(self, "clear").clear();
            if (size > 0 or motionInputsIndex >= 0) {
                return 1;
            } else {
                return -1;
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, GameInputStrings.getInstance().?.PROCESS_INPUT, e });
//             return -1;
    }
    

    // throws Exception
    pub fn processMotionInputs(self: *Self) i32 {
        const lastIndex: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "motionGestureEventList").*.?, "size").size() - 1;
        if (lastIndex >= 0) {
            const motionGestureEvent: ?*MotionGestureEvent = Inheritance.cast(?*MotionGestureEvent, Inheritance.fieldPointer(self, "motionGestureEventList").*.?.objectArray[@intCast(lastIndex)]);
            _ = Inheritance.call(self, "processMotionInput", .{ motionGestureEvent });
        }
        _ = Inheritance.receiverOf(Inheritance.fieldPointer(self, "motionGestureEventList").*.?, "clear").clear();
        return lastIndex;
    }
    

    // throws Exception
    pub fn processMotionInput(self: *Self, motionGestureEvent: ?*MotionGestureEvent) void {
        if (motionGestureEvent == null) {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.literal("Exception: Bug"), self, Inheritance.fieldPointer(self, "gameInputStrings").*.?.PROCESS_MOTION_INPUT });
            return;
        }
        const touchMotionGestureFactory: ?*TouchMotionGestureFactory = Inheritance.upcast(?*TouchMotionGestureFactory, TouchMotionGestureFactory.getInstance());
        const motionGestureInput: ?*MotionGestureInput = Inheritance.upcast(?*MotionGestureInput, Inheritance.receiver(motionGestureEvent.?, "getMotionGesture").getMotionGesture());
        if (Object.same(motionGestureInput, touchMotionGestureFactory.?.RELEASED)) {
            const point: ?*GPoint = Inheritance.upcast(?*GPoint, Inheritance.receiver(motionGestureEvent.?, "getCurrentPoint").getCurrentPoint());
            const rectPoint: ?*GPoint = Inheritance.upcast(?*GPoint, self.rectangle.?.getPoint());
            if (Inheritance.call(self.rectangleCollisionUtil.?, "isInside", .{ rectPoint.?.getX(), rectPoint.?.getY(), self.rectangle.?.getMaxX() + 20, self.rectangle.?.getMaxY(), point.?.getX(), point.?.getY() })) {
                if (self.clickTimeHelper.?.isTimeTNT()) {
                    const gameCanvas: ?*AllBinaryGameCanvas = Inheritance.cast(?*AllBinaryGameCanvas, Inheritance.receiver(self, "getCanvas").getCanvas());
                    _ = Inheritance.receiver(gameCanvas.?, "toggleMenu").toggleMenu();
                }
            }
        }
    }
};


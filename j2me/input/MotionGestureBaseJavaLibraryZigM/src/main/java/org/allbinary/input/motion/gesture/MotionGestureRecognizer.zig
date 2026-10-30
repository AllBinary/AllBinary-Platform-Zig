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
// package org.allbinary.input.motion.gesture

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GPoint = @import("org/allbinary/graphics/GPoint.zig").GPoint;
const Line = @import("org/allbinary/graphics/Line.zig").Line;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const MotionGestureConfiguration = @import("org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration.zig").MotionGestureConfiguration;
const MotionGestureConfigurationFactory = @import("org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory.zig").MotionGestureConfigurationFactory;
const BasicMotionGesturesHandler = @import("org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.zig").BasicMotionGesturesHandler;
const MotionEventCircularPool = @import("org/allbinary/input/motion/gesture/observer/MotionEventCircularPool.zig").MotionEventCircularPool;
const MotionGestureEvent = @import("org/allbinary/input/motion/gesture/observer/MotionGestureEvent.zig").MotionGestureEvent;
const MovedMotionGesturesHandler = @import("org/allbinary/input/motion/gesture/observer/MovedMotionGesturesHandler.zig").MovedMotionGesturesHandler;
const ScrolledMotionGesturesHandler = @import("org/allbinary/input/motion/gesture/observer/ScrolledMotionGesturesHandler.zig").ScrolledMotionGesturesHandler;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const J2SEMath = @import("org/allbinary/logic/math/J2SEMath.zig").J2SEMath;
const BasicEventHandler = @import("org/allbinary/logic/util/event/handler/BasicEventHandler.zig").BasicEventHandler;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const MotionGestureInput = @import("org/allbinary/input/motion/gesture/MotionGestureInput.zig").MotionGestureInput;
const TouchMotionGestureFactory = @import("org/allbinary/input/motion/gesture/TouchMotionGestureFactory.zig").TouchMotionGestureFactory;

pub const MotionGestureRecognizer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.gesture.MotionGestureRecognizer";
    logUtil: ?*LogUtil = null,
    j2seMath: ?*J2SEMath = null,
    origin: ?*GPoint = null,
    previous: ?*GPoint = null,
    intermediate: ?*GPoint = null,
    line: ?*Line = null,
    motionGesturesHandler: ?*BasicMotionGesturesHandler = null,
    movedMotionGesturesHandler: ?*BasicEventHandler = null,
    scrolledMotionGesturesHandler: ?*BasicEventHandler = null,
    motionEventCircularPool: ?*MotionEventCircularPool = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.j2seMath = Inheritance.upcast(?*J2SEMath, J2SEMath.getInstance());
        this.origin = Inheritance.upcast(?*GPoint, PointFactory.getInstance().?.ZERO_ZERO);
        this.previous = this.origin;
        this.intermediate = this.origin;
        this.line = Inheritance.callStatic(Line, "create2", .{ this.origin, this.origin });
        
        
        
        
    }
    

    pub fn create1(id: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.motionEventCircularPool = Inheritance.upcast(@TypeOf(this.motionEventCircularPool), Inheritance.callStatic(MotionEventCircularPool, "createPool", .{ id }));
        var motionGesturesHandler: ?*BasicEventHandler = BasicEventHandler.create();
        var movedMotionGesturesHandler: ?*BasicEventHandler = Inheritance.upcast(?*BasicEventHandler, motionGesturesHandler);
        var scrolledMotionGesturesHandler: ?*BasicEventHandler = Inheritance.upcast(?*BasicEventHandler, motionGesturesHandler);
        { // try
            motionGesturesHandler = Inheritance.upcast(@TypeOf(motionGesturesHandler), BasicMotionGesturesHandler.getInstance());
            movedMotionGesturesHandler = Inheritance.upcast(@TypeOf(movedMotionGesturesHandler), MovedMotionGesturesHandler.getInstance());
            scrolledMotionGesturesHandler = Inheritance.upcast(@TypeOf(scrolledMotionGesturesHandler), ScrolledMotionGesturesHandler.getInstance());
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(this.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, this, commonStrings.?.CONSTRUCTOR, e });
        this.motionGesturesHandler = Inheritance.cast(?*BasicMotionGesturesHandler, motionGesturesHandler);
        this.movedMotionGesturesHandler = movedMotionGesturesHandler;
        this.scrolledMotionGesturesHandler = scrolledMotionGesturesHandler;
        return this;
    }
    

    // throws Exception
    pub fn processPressedMotionEvent(self: *Self, current: ?*GPoint, deviceId: i32, button: i32) bool {
        _ = deviceId;
        _ = button;
        self.intermediate = self.origin;
        self.previous = self.origin;
        const event: ?*MotionGestureEvent = Inheritance.upcast(?*MotionGestureEvent, Inheritance.call(self.motionEventCircularPool.?, "getInstance", .{ TouchMotionGestureFactory.getInstance().?.PRESSED }));
        _ = Inheritance.call(event.?, "setPreviousPoint", .{ self.previous });
        _ = Inheritance.call(event.?, "setCurrentPoint", .{ current });
        _ = Inheritance.call(self.motionGesturesHandler.?, "fireEvent", .{ event });
        return true;
    }
    

    // throws Exception
    pub fn processReleasedMotionEvent(self: *Self, current: ?*GPoint, deviceId: i32, button: i32) bool {
        _ = deviceId;
        _ = button;
        const event: ?*MotionGestureEvent = Inheritance.upcast(?*MotionGestureEvent, Inheritance.call(self.motionEventCircularPool.?, "getInstance", .{ TouchMotionGestureFactory.getInstance().?.RELEASED }));
        _ = Inheritance.call(event.?, "setPreviousPoint", .{ self.previous });
        _ = Inheritance.call(event.?, "setCurrentPoint", .{ current });
        _ = Inheritance.call(self.motionGesturesHandler.?, "fireEvent", .{ event });
        return true;
    }
    

    // throws Exception
    pub fn processDraggedMotionEvent(self: *Self, current: ?*GPoint, deviceId: i32, buttonMask: i32) void {
        _ = deviceId;
        _ = buttonMask;
        if (Object.same(self.previous, self.origin) or Object.same(self.intermediate, self.origin)) {
            self.previous = current;
            self.intermediate = current;
            return;
        }
        _ = Inheritance.call(self.line.?, "setP1", .{ self.previous });
        _ = Inheritance.call(self.line.?, "setP2", .{ current });
        const minimumMotionGesture: i32 = Inheritance.receiverOf(MotionGestureConfigurationFactory.getInstance().?, "getMinimumMotionGesture").getMinimumMotionGesture();
        if (Inheritance.call(self.j2seMath.?, "abs", .{ @as(f32, @floatCast(self.line.?.getDeltaX())) }) < minimumMotionGesture and Inheritance.call(self.j2seMath.?, "abs", .{ @as(f32, @floatCast(self.line.?.getDeltaY())) }) < minimumMotionGesture) {
            self.intermediate = current;
            return;
        }
        const gradient: f64 = self.line.?.getGradient();
        const absGradient: f64 = @as(f64, @floatCast(Inheritance.call(self.j2seMath.?, "abs", .{ @as(f32, @floatCast(gradient)) })));
        const conf: ?*MotionGestureConfiguration = Inheritance.upcast(?*MotionGestureConfiguration, MotionGestureConfigurationFactory.getInstance());
        const touchMotionGestureFactory: ?*TouchMotionGestureFactory = Inheritance.upcast(?*TouchMotionGestureFactory, TouchMotionGestureFactory.getInstance());
        var newMotionGesture: ?*MotionGestureInput = Inheritance.upcast(?*MotionGestureInput, touchMotionGestureFactory.?.NO_MOTION);
        var diagonalToleranceHigher: f64 = 12.0;
        var diagonalToleranceLower: f64 = 12.0;
        if (conf.?.isDiagonalMotionGestureAllowed()) {
            diagonalToleranceHigher = @as(f64, @floatCast((90 - conf.?.getDiagonalTolerance())));
            diagonalToleranceLower = @as(f64, @floatCast(conf.?.getDiagonalTolerance()));
        }
        if (absGradient > @tan(std.math.degreesToRadians(diagonalToleranceHigher))) {
            if (self.line.?.getDeltaY() > 0) {
                newMotionGesture = Inheritance.upcast(@TypeOf(newMotionGesture), touchMotionGestureFactory.?.UP);
            } else {
                newMotionGesture = Inheritance.upcast(@TypeOf(newMotionGesture), touchMotionGestureFactory.?.DOWN);
            }
        } else {
            if (absGradient < @tan(std.math.degreesToRadians(diagonalToleranceLower))) {
                if (self.line.?.getDeltaX() > 0) {
                    newMotionGesture = Inheritance.upcast(@TypeOf(newMotionGesture), touchMotionGestureFactory.?.LEFT);
                } else {
                    newMotionGesture = Inheritance.upcast(@TypeOf(newMotionGesture), touchMotionGestureFactory.?.RIGHT);
                }
            } else {
                if (gradient > 0.0) {
                    if (self.line.?.getDeltaX() > 0) {
                        newMotionGesture = Inheritance.upcast(@TypeOf(newMotionGesture), touchMotionGestureFactory.?.DIAGONAL_UP_LEFT);
                    } else {
                        newMotionGesture = Inheritance.upcast(@TypeOf(newMotionGesture), touchMotionGestureFactory.?.DIAGONAL_DOWN_RIGHT);
                    }
                } else {
                    if (self.line.?.getDeltaX() > 0) {
                        newMotionGesture = Inheritance.upcast(@TypeOf(newMotionGesture), touchMotionGestureFactory.?.DIAGONAL_DOWN_LEFT);
                    } else {
                        newMotionGesture = Inheritance.upcast(@TypeOf(newMotionGesture), touchMotionGestureFactory.?.DIAGONAL_UP_RIGHT);
                    }
                }
            }
        }
        self.previous = current;
        self.intermediate = current;
        const event: ?*MotionGestureEvent = Inheritance.upcast(?*MotionGestureEvent, Inheritance.call(self.motionEventCircularPool.?, "getInstance", .{ newMotionGesture }));
        _ = Inheritance.call(event.?, "setPreviousPoint", .{ self.previous });
        _ = Inheritance.call(event.?, "setCurrentPoint", .{ current });
        _ = Inheritance.call(self.motionGesturesHandler.?, "fireEvent", .{ event });
        return;
    }
    

    // throws Exception
    pub fn processMovedMotionEvent(self: *Self, current: ?*GPoint, deviceId: i32, button: i32) bool {
        _ = deviceId;
        _ = button;
        const event: ?*MotionGestureEvent = Inheritance.upcast(?*MotionGestureEvent, Inheritance.call(self.motionEventCircularPool.?, "getInstance", .{ TouchMotionGestureFactory.getInstance().?.NO_MOTION }));
        _ = Inheritance.call(event.?, "setPreviousPoint", .{ self.previous });
        _ = Inheritance.call(event.?, "setCurrentPoint", .{ current });
        _ = Inheritance.call(self.movedMotionGesturesHandler.?, "fireEvent", .{ event });
        return true;
    }
    

    // throws Exception
    pub fn processScrolledMotionEvent(self: *Self, current: ?*GPoint, deviceId: i32, button: i32) bool {
        _ = deviceId;
        const touchMotionGestureFactory: ?*TouchMotionGestureFactory = Inheritance.upcast(?*TouchMotionGestureFactory, TouchMotionGestureFactory.getInstance());
        var newMotionGesture: ?*MotionGestureInput = Inheritance.upcast(?*MotionGestureInput, touchMotionGestureFactory.?.NO_MOTION);
        if (button > 0) {
            newMotionGesture = Inheritance.upcast(@TypeOf(newMotionGesture), touchMotionGestureFactory.?.SCROLL_UP);
        } else if (button < 0) {
            newMotionGesture = Inheritance.upcast(@TypeOf(newMotionGesture), touchMotionGestureFactory.?.SCROLL_DOWN);
        }
        const event: ?*MotionGestureEvent = Inheritance.upcast(?*MotionGestureEvent, Inheritance.call(self.motionEventCircularPool.?, "getInstance", .{ newMotionGesture }));
        _ = Inheritance.call(event.?, "setPreviousPoint", .{ self.previous });
        _ = Inheritance.call(event.?, "setCurrentPoint", .{ current });
        _ = Inheritance.call(self.scrolledMotionGesturesHandler.?, "fireEvent", .{ event });
        return true;
    }
    

    pub fn getMotionGesturesHandler(self: *Self) ?*BasicMotionGesturesHandler {
        return self.motionGesturesHandler;
    }
};


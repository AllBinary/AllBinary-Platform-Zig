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
// package org.allbinary.math

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsConstructor = @import("jsinterop/annotations/JsConstructor.zig").JsConstructor;
const JsProperty = @import("jsinterop/annotations/JsProperty.zig").JsProperty;
const Angle = @import("org/allbinary/math/Angle.zig").Angle;
const FrameUtil = @import("org/allbinary/math/FrameUtil.zig").FrameUtil;
const NamedAngle = @import("org/allbinary/math/NamedAngle.zig").NamedAngle;

pub const AngleFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.math.AngleFactory";
    logUtil: ?*LogUtil = null,
    TOTAL_ANGLE: i16 = 0,
    QUARTER_TOTAL_ANGLE: i16 = 0,
    angleArray: []?*Angle = &.{},
    NEGATIVE_ONE: i16 = 0,
    NOT_ANGLE: ?*NamedAngle = null,
    DOWN: ?*NamedAngle = null,
    UP: ?*NamedAngle = null,
    LEFT: ?*NamedAngle = null,
    RIGHT: ?*NamedAngle = null,
    frameUtil: ?*FrameUtil = null,
    var instance: ?*AngleFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AngleFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.TOTAL_ANGLE = 360;
        this.QUARTER_TOTAL_ANGLE = 90;
        this.angleArray = array_N66083: { const array_N66083_array = allocator.alloc(?*Angle, @intCast(@as(i32, @intCast(this.TOTAL_ANGLE)))) catch unreachable; @memset(array_N66083_array, null); break :array_N66083 array_N66083_array; };
        this.NEGATIVE_ONE = @as(i16, @intCast(-1));
        this.NOT_ANGLE = Inheritance.callStatic(NamedAngle, "create2", .{ this.NEGATIVE_ONE, CommonStrings.getInstance().?.EMPTY });
        
        
        
        
        this.frameUtil = Inheritance.upcast(?*FrameUtil, FrameUtil.getInstance());
    }
    

    pub fn getInstance() ?*AngleFactory {
        return Inheritance.upcast(?*AngleFactory, AngleFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const commonPhoneStrings: ?*CommonPhoneStrings = Inheritance.upcast(?*CommonPhoneStrings, CommonPhoneStrings.getInstance());
        const total: i16 = @as(i16, @intCast(@as(i32, @intCast(this.angleArray.len))));
        this.UP = Inheritance.callStatic(NamedAngle, "create2", .{ @as(i16, @intCast(0)), commonPhoneStrings.?.UP });
        this.angleArray[@intCast(0)] = Inheritance.upcast(@TypeOf(this.angleArray[@intCast(0)]), this.UP);
        {
            var index: i32 = 1;
            while (index < 90) : (index += 1) {
            this.angleArray[@intCast(index)] = Inheritance.upcast(@TypeOf(this.angleArray[@intCast(index)]), Inheritance.callStatic(Angle, "create1", .{ @as(i16, @intCast(index)) }));
            }
        }
        this.RIGHT = Inheritance.callStatic(NamedAngle, "create2", .{ @as(i16, @intCast(90)), commonPhoneStrings.?.RIGHT });
        this.angleArray[@intCast(90)] = Inheritance.upcast(@TypeOf(this.angleArray[@intCast(90)]), this.RIGHT);
        {
            var index: i32 = 91;
            while (index < 180) : (index += 1) {
            this.angleArray[@intCast(index)] = Inheritance.upcast(@TypeOf(this.angleArray[@intCast(index)]), Inheritance.callStatic(Angle, "create1", .{ @as(i16, @intCast(index)) }));
            }
        }
        this.DOWN = Inheritance.callStatic(NamedAngle, "create2", .{ @as(i16, @intCast(180)), commonPhoneStrings.?.DOWN });
        this.angleArray[@intCast(180)] = Inheritance.upcast(@TypeOf(this.angleArray[@intCast(180)]), this.DOWN);
        {
            var index: i32 = 181;
            while (index < 270) : (index += 1) {
            this.angleArray[@intCast(index)] = Inheritance.upcast(@TypeOf(this.angleArray[@intCast(index)]), Inheritance.callStatic(Angle, "create1", .{ @as(i16, @intCast(index)) }));
            }
        }
        this.LEFT = Inheritance.callStatic(NamedAngle, "create2", .{ @as(i16, @intCast(270)), commonPhoneStrings.?.LEFT });
        this.angleArray[@intCast(270)] = Inheritance.upcast(@TypeOf(this.angleArray[@intCast(270)]), this.LEFT);
        {
            var index: i32 = 271;
            while (index < @as(i32, @intCast(total))) : (index += 1) {
            this.angleArray[@intCast(index)] = Inheritance.upcast(@TypeOf(this.angleArray[@intCast(index)]), Inheritance.callStatic(Angle, "create1", .{ @as(i16, @intCast(index)) }));
            }
        }
        return this;
    }
    

    pub fn getAt(self: *Self, index: i32) ?*Angle {
        const adjustedIndex: i32 = @as(i32, @intCast(Inheritance.call(self.frameUtil.?, "adjustAngleToFrameAngle", .{ index })));
        return Inheritance.upcast(?*Angle, self.angleArray[@intCast(adjustedIndex)]);
    }
    

    pub fn getClosestDirection(self: *Self, angle: i32) ?*Angle {
        if ((angle >= 315 and angle < 360) or (angle >= 0 and angle < 45)) {
            return Inheritance.upcast(?*Angle, self.UP);
        } else if (angle >= 45 and angle < 135) {
            return Inheritance.upcast(?*Angle, self.RIGHT);
        } else if (angle >= 135 and angle < 225) {
            return Inheritance.upcast(?*Angle, self.DOWN);
        } else if (angle >= 225 and angle < 315) {
            return Inheritance.upcast(?*Angle, self.LEFT);
        }
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getGeneralDirection(self: *Self) ?*Angle {
        return Inheritance.upcast(?*Angle, self.NOT_ANGLE);
    }
    

    pub fn main(args: []?*String) void {
        _ = args;
        const stringMaker: ?*StringMaker = StringMaker.create();
        const angleFactory: ?*AngleFactory = Inheritance.upcast(?*AngleFactory, AngleFactory.getInstance());
        {
            var index: i32 = 0;
            while (index < 360) : (index += 1) {
            _ = Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "appendint", .{ index }).?, "append", .{ CommonSeps.getInstance().?.FORWARD_SLASH }).?, "appendshort", .{ @as(i16, @intCast(Inheritance.receiverOf(Inheritance.call(angleFactory.?, "getClosestDirection", .{ index }).?, "getValue").getValue())) }).?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
            }
        }
        _ = Inheritance.call(LogUtil.getInstance().?, "putF", .{ Object.toString(Object.of(stringMaker)), String.literal("main"), String.literal("main") });
    }
};


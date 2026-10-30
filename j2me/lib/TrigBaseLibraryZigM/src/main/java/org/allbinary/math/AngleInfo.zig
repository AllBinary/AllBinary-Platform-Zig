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
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsConstructor = @import("jsinterop/annotations/JsConstructor.zig").JsConstructor;
const AngleIncrementInfo = @import("org/allbinary/math/AngleIncrementInfo.zig").AngleIncrementInfo;
const AngleIncrementInfoFactory = @import("org/allbinary/math/AngleIncrementInfoFactory.zig").AngleIncrementInfoFactory;
const FrameUtil = @import("org/allbinary/math/FrameUtil.zig").FrameUtil;

pub const AngleInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.math.AngleInfo";
    angleIncrementInfo: ?*AngleIncrementInfo = null,
    angle: i16 = 0,
    frameUtil: ?*FrameUtil = null,
    const ANGLE: ?*String = String.literal("Angle: ");

    fn initFields(this: *Self) void {
        
        this.angle = 0;
        this.frameUtil = Inheritance.upcast(?*FrameUtil, FrameUtil.getInstance());
    }
    

    pub fn getInstance(angleIncrement: i16) ?*AngleInfo {
        return Inheritance.callStatic(AngleInfo, "create1", .{ Inheritance.call(AngleIncrementInfoFactory.getInstance().?, "getAt", .{ angleIncrement }) });
    }
    

    pub fn create1(angleIncrementInfo: ?*AngleIncrementInfo) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.angleIncrementInfo = angleIncrementInfo;
        return this;
    }
    

    pub fn adjustAngle(self: *Self, frame: i32) void {
        const newAngle: i32 = self.angleIncrementInfo.?.getAngleIncrement() * frame - 90;
        _ = Inheritance.call(self, "setAngle", .{ @as(i16, @intCast(Inheritance.call(self.frameUtil.?, "adjustAngleToFrameAngle", .{ newAngle }))) });
    }
    

    pub fn getAngle(self: *Self) i16 {
        return self.angle;
    }
    

    pub fn setAngle(self: *Self, angle: i16) void {
        self.angle = angle;
    }
    

    pub fn getAngleIncrementInfo(self: *Self) ?*AngleIncrementInfo {
        return self.angleIncrementInfo;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ AngleInfo.ANGLE });
        _ = Inheritance.call(stringBuffer.?, "appendshort", .{ self.angle });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ self.getAngleIncrementInfo() }) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};


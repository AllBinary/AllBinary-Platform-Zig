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
// package org.allbinary.game.ai.path

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const Direction = @import("org/allbinary/direction/Direction.zig").Direction;
const DirectionFactory = @import("org/allbinary/direction/DirectionFactory.zig").DirectionFactory;
const AngleIncrementInfo = @import("org/allbinary/math/AngleIncrementInfo.zig").AngleIncrementInfo;
const AngleInfo = @import("org/allbinary/math/AngleInfo.zig").AngleInfo;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const BasicDirectionAIHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ai.path.BasicDirectionAIHelper";
    name: ?*String = null,
    angleInfo: ?*AngleInfo = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(name: ?*String, angleInfo: ?*AngleInfo) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        this.angleInfo = angleInfo;
        return this;
    }
    

    pub fn turnAI(self: *Self, frame: i32) i32 {
        var keyDirection: i32 = -1;
        const directionAngle: i32 = Inheritance.call(self.angleInfo.?.getAngleIncrementInfo().?, "getFrameAngle", .{ frame });
        const angle: i16 = self.angleInfo.?.getAngle();
        const degrees: i32 = @abs(directionAngle - @as(i32, @intCast(angle)));
        if (degrees < 180) {
            if (@as(i32, @intCast(angle)) > directionAngle) {
                keyDirection = Canvas.LEFT;
            } else if (@as(i32, @intCast(angle)) < directionAngle) {
                keyDirection = Canvas.RIGHT;
            }
        } else {
            if (@as(i32, @intCast(angle)) > directionAngle) {
                keyDirection = Canvas.RIGHT;
            } else if (@as(i32, @intCast(angle)) < directionAngle) {
                keyDirection = Canvas.LEFT;
            }
        }
        return keyDirection;
    }
    

    pub fn getAIKeyPressed(self: *Self, frame: ?*Integer) i32 {
        const angle: i16 = @as(i16, @intCast(Inheritance.call(self.angleInfo.?.getAngleIncrementInfo().?, "getFrameAngle", .{ frame.?.intValue() })));
        if (self.angleInfo.?.getAngle() != angle) {
            return Inheritance.call(self, "turnAI", .{ frame.?.intValue() });
        } else {
            return Canvas.UP;
        }
    }
    

    pub fn getAIKeyPressedFromDirection(self: *Self, geographicMapDirectionData: ?*Direction) i32 {
        var keyDirection: i32 = -1;
        const angleIncrementInfo: ?*AngleIncrementInfo = Inheritance.upcast(?*AngleIncrementInfo, self.angleInfo.?.getAngleIncrementInfo());
        const directionFactory: ?*DirectionFactory = Inheritance.upcast(?*DirectionFactory, DirectionFactory.getInstance());
        if (Object.same(geographicMapDirectionData, directionFactory.?.DOWN)) {
            keyDirection = Inheritance.call(self, "getAIKeyPressed", .{ angleIncrementInfo.?.DOWN_FRAME });
        } else if (Object.same(geographicMapDirectionData, directionFactory.?.UP)) {
            keyDirection = Inheritance.call(self, "getAIKeyPressed", .{ angleIncrementInfo.?.UP_FRAME });
        } else if (Object.same(geographicMapDirectionData, directionFactory.?.LEFT)) {
            keyDirection = Inheritance.call(self, "getAIKeyPressed", .{ angleIncrementInfo.?.LEFT_FRAME });
        } else if (Object.same(geographicMapDirectionData, directionFactory.?.RIGHT)) {
            keyDirection = Inheritance.call(self, "getAIKeyPressed", .{ angleIncrementInfo.?.RIGHT_FRAME });
        }
        return keyDirection;
    }
    

    pub fn getAngleInfoP(self: *Self) ?*AngleInfo {
        return self.angleInfo;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
};


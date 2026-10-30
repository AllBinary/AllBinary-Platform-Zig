// Generated Code Do Not Modify
// package org.allbinary.game.input.analog

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CustomGPoint = @import("org/allbinary/graphics/CustomGPoint.zig").CustomGPoint;

pub const AnalogLocationInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.analog.AnalogLocationInput";
    playerId: i32 = 0,
    customGPoint: ?*CustomGPoint = null,
    rz: i32 = 0,
    rightTrigger: i32 = 0,
    leftTrigger: i32 = 0,
    pub var NULL_ANALOG_LOCATION_INPUT: ?*AnalogLocationInput = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_ANALOG_LOCATION_INPUT = Inheritance.callStatic(AnalogLocationInput, "create1", .{ -1 });
    }

    fn initFields(this: *Self) void {
        
        
        this.rz = 0;
        this.rightTrigger = 0;
        this.leftTrigger = 0;
    }
    

    pub fn create1(playerId: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.playerId = playerId;
        this.customGPoint = Inheritance.callStatic(CustomGPoint, "create3", .{ 0, 0, 0 });
        return this;
    }
    

    pub fn getPlayerId(self: *Self) i32 {
        return self.playerId;
    }
    

    pub fn getCustomGPoint(self: *Self) ?*CustomGPoint {
        return self.customGPoint;
    }
    

    pub fn getRz(self: *Self) i32 {
        return self.rz;
    }
    

    pub fn setRz(self: *Self, rz: i32) void {
        self.rz = rz;
    }
    

    pub fn getRightTrigger(self: *Self) i32 {
        return self.rightTrigger;
    }
    

    pub fn setRightTrigger(self: *Self, rightTrigger: i32) void {
        self.rightTrigger = rightTrigger;
    }
    

    pub fn getLeftTrigger(self: *Self) i32 {
        return self.leftTrigger;
    }
    

    pub fn setLeftTrigger(self: *Self, leftTrigger: i32) void {
        self.leftTrigger = leftTrigger;
    }
};


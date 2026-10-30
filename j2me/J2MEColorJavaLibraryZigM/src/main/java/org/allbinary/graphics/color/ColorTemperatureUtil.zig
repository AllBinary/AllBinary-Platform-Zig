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
// package org.allbinary.graphics.color

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;

pub const ColorTemperatureUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.color.ColorTemperatureUtil";
    basicColorFactory: ?*BasicColorFactory = null,
    var instance: ?*ColorTemperatureUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ColorTemperatureUtil.create();
    }

    fn initFields(this: *Self) void {
        this.basicColorFactory = Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ColorTemperatureUtil {
        return Inheritance.upcast(?*ColorTemperatureUtil, ColorTemperatureUtil.instance);
    }
    

    pub fn getBasicColor(self: *Self, thirdTemp: i32) ?*BasicColor {
        var basicColor: ?*BasicColor = Inheritance.upcast(?*BasicColor, self.basicColorFactory.?.RED);
        if (thirdTemp > 3700) {
            basicColor = Inheritance.upcast(@TypeOf(basicColor), self.basicColorFactory.?.PURPLE);
        } else if (thirdTemp > 3200) {
            basicColor = Inheritance.upcast(@TypeOf(basicColor), self.basicColorFactory.?.BLUE);
        } else if (thirdTemp > 2700) {
            basicColor = Inheritance.upcast(@TypeOf(basicColor), self.basicColorFactory.?.PUCE);
        } else if (thirdTemp > 2200) {
            basicColor = Inheritance.upcast(@TypeOf(basicColor), self.basicColorFactory.?.WHITE);
        } else if (thirdTemp > 1700) {
            basicColor = Inheritance.upcast(@TypeOf(basicColor), self.basicColorFactory.?.GREEN);
        } else if (thirdTemp > 1200) {
            basicColor = Inheritance.upcast(@TypeOf(basicColor), self.basicColorFactory.?.YELLOW);
        } else if (thirdTemp > 700) {
            basicColor = Inheritance.upcast(@TypeOf(basicColor), self.basicColorFactory.?.ORANGE);
        }
        return basicColor;
    }
};


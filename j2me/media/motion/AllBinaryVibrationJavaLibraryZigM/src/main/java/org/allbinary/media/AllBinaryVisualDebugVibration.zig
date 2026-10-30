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
// package org.allbinary.media

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Anchor = @import("org/allbinary/graphics/Anchor.zig").Anchor;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const AllBinaryVibrationME = @import("org/allbinary/media/AllBinaryVibrationME.zig").AllBinaryVibrationME;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const AllBinaryVisualDebugVibration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.AllBinaryVisualDebugVibration";
    base: AllBinaryVibrationME = undefined,
    displayInfoSingleton: ?*DisplayInfoSingleton = null,
    timeDelayHelper: ?*TimeDelayHelper = null,
    VIBRATING: ?*String = null,
    myFontProcessor: ?*MyFontProcessor = null,
    anchor: i32 = 0,
    width: i32 = 0,
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.displayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        this.timeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ @as(i32, std.math.maxInt(i32)) });
        this.VIBRATING = String.literal("Vibrating");
        this.myFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.anchor = Anchor.TOP_LEFT;
        this.width = 0;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = AllBinaryVibrationME.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.width = Inheritance.call(font.?, "stringWidth", .{ self.VIBRATING });
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn vibrate(self: *Self, duration: i32, @"type": i32, volume: i32) void {
        _ = @"type";
        _ = volume;
        self.timeDelayHelper.?.delay = Inheritance.upcast(@TypeOf(self.timeDelayHelper.?.delay), duration);
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        if (self.timeDelayHelper.?.isTimeTNT()) {
            self.timeDelayHelper.?.delay = Inheritance.upcast(@TypeOf(self.timeDelayHelper.?.delay), @as(i32, std.math.maxInt(i32)));
            _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
            _ = Inheritance.call(graphics.?, "drawString", .{ self.VIBRATING, self.displayInfoSingleton.?.getLastHalfWidth() - (self.width >> @intCast(1)), 0, self.anchor });
        }
    }
};


// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;

pub const ScreenRelationalUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.displayable.ScreenRelationalUtil";
    var instance: ?*ScreenRelationalUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ScreenRelationalUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*ScreenRelationalUtil {
        return Inheritance.upcast(?*ScreenRelationalUtil, ScreenRelationalUtil.instance);
    }
    

    pub fn getScaleImage(self: *Self, image: ?*Image) f32 {
        return Inheritance.call(self, "getScaleWH", .{ image.?.getWidth(), image.?.getHeight() });
    }
    

    pub fn getScaleWH(self: *Self, aWidth: i32, aHeight: i32) f32 {
        return Inheritance.call(self, "getScaleWHA", .{ aWidth, aHeight, 20 });
    }
    

    pub fn getScaleWHA(self: *Self, aWidth: i32, aHeight: i32, add: i32) f32 {
        _ = aHeight;
        _ = add;
        _ = self;
        const displayInfoSingleton: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        const last: []i32 = displayInfoSingleton.?.getLast();
        const width: f32 = @as(f32, @floatFromInt(last[@intCast(displayInfoSingleton.?.WIDTH)]));
        const height: f32 = @as(f32, @floatFromInt(last[@intCast(displayInfoSingleton.?.HEIGHT)]));
        var largestSize: f32 = width;
        if (largestSize < height) {
            largestSize = height;
        }
        const scale: f32 = (largestSize) / @as(f32, @floatFromInt(aWidth));
        return scale;
    }
    

    pub fn getScaledHeight(self: *Self, aWidth: i32, aHeight: i32) i32 {
        return @as(i32, @intFromFloat((Inheritance.call(self, "getScaleWH", .{ aWidth, aHeight }) * @as(f32, @floatFromInt(aHeight)))));
    }
    

    pub fn getScaledHeightAdd(self: *Self, aWidth: i32, aHeight: i32, add: i32) i32 {
        return @as(i32, @intFromFloat((Inheritance.call(self, "getScaleWHA", .{ aWidth, aHeight, add }) * @as(f32, @floatFromInt(aHeight)))));
    }
};


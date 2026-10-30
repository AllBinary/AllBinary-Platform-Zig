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
// package org.allbinary.media.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics2D = @import("java/awt/Graphics2D.zig").Graphics2D;
// const Image = @import("java/awt/Image.zig").Image;
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const ImageJ2SEUtil = @import("org/allbinary/media/image/ImageJ2SEUtil.zig").ImageJ2SEUtil;
const ImageUtil = @import("org/allbinary/media/image/ImageUtil.zig").ImageUtil;

pub const ImageJ2SERotationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageJ2SERotationUtil";
    imageUtil: ?*ImageUtil = null,
    imageJ2SEUtil: ?*ImageJ2SEUtil = null,
    TWO_PIE: f64 = 0.0,
    var instance: ?*ImageJ2SERotationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageJ2SERotationUtil.create();
    }

    fn initFields(this: *Self) void {
        this.imageUtil = Inheritance.upcast(?*ImageUtil, ImageUtil.getInstance());
        this.imageJ2SEUtil = Inheritance.upcast(?*ImageJ2SEUtil, ImageJ2SEUtil.getInstance());
        this.TWO_PIE = 2 * Math.PI;
    }
    

    pub fn getInstance() ?*ImageJ2SERotationUtil {
        return Inheritance.upcast(?*ImageJ2SERotationUtil, ImageJ2SERotationUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getRotatedImage(self: *Self, bufferedImage: ?*Image, totalAngle: i32) ?*BufferedImage {
        return Inheritance.upcast(?*BufferedImage, Inheritance.call(self, "getRotatedImageRadians", .{ bufferedImage, self.TWO_PIE * @as(f64, @floatFromInt(totalAngle)) / 360.0 }));
    }
    

    pub fn getRotatedImageRadians(self: *Self, bufferedImage: ?*Image, radians: f64) ?*BufferedImage {
        const newBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(self.imageUtil.?, "create", .{ Inheritance.call(bufferedImage.?, "getWidth", .{ null }), Inheritance.call(bufferedImage.?, "getHeight", .{ null }) }));
        return Inheritance.upcast(?*BufferedImage, Inheritance.call(self, "drawRotatedImageRadians", .{ bufferedImage, newBufferedImage, newBufferedImage.?.createGraphics(), radians }));
    }
    

    pub fn drawRotatedImageRadians(self: *Self, bufferedImage: ?*Image, newBufferedImage: ?*BufferedImage, g: ?*Graphics2D, radians: f64) ?*BufferedImage {
        _ = self;
        _ = Inheritance.call(g.?, "rotate", .{ radians, (divide_N66278: { const left_N66278 = Inheritance.call(newBufferedImage.?, "getWidth", .{ null }); const right_N66278 = 2; break :divide_N66278 if (comptime @typeInfo(@TypeOf(left_N66278)) == .int or @TypeOf(left_N66278) == comptime_int) @divTrunc(left_N66278, right_N66278) else left_N66278 / right_N66278; }), (divide_N66309: { const left_N66309 = Inheritance.call(newBufferedImage.?, "getHeight", .{ null }); const right_N66309 = 2; break :divide_N66309 if (comptime @typeInfo(@TypeOf(left_N66309)) == .int or @TypeOf(left_N66309) == comptime_int) @divTrunc(left_N66309, right_N66309) else left_N66309 / right_N66309; }) });
        _ = Inheritance.call(g.?, "drawImage", .{ bufferedImage, 0, 0, Inheritance.call(bufferedImage.?, "getWidth", .{ null }), Inheritance.call(bufferedImage.?, "getHeight", .{ null }), null });
        _ = g.?.dispose();
        return newBufferedImage;
    }
    

    pub fn rotateImage(self: *Self, bufferedImage: ?*Image, newBufferedImage: ?*BufferedImage, totalAngle: i32) ?*BufferedImage {
        const g: ?*Graphics2D = Inheritance.upcast(?*Graphics2D, newBufferedImage.?.createGraphics());
        _ = Inheritance.call(g.?, "setBackground", .{ self.imageJ2SEUtil.?.TRANSPARENT_COLOR });
        _ = Inheritance.call(g.?, "clearRect", .{ 0, 0, newBufferedImage.?.getWidth(), newBufferedImage.?.getHeight() });
        return Inheritance.upcast(?*BufferedImage, Inheritance.call(self, "drawRotatedImageRadians", .{ bufferedImage, newBufferedImage, g, self.TWO_PIE * @as(f64, @floatFromInt(totalAngle)) / 360.0 }));
    }
    

    pub fn createRotatedImage(self: *Self, bufferedImage: ?*Image, newBufferedImage: ?*BufferedImage, totalAngle: i32) ?*BufferedImage {
        const g: ?*Graphics2D = Inheritance.upcast(?*Graphics2D, newBufferedImage.?.createGraphics());
        return Inheritance.upcast(?*BufferedImage, Inheritance.call(self, "drawRotatedImageRadians", .{ bufferedImage, newBufferedImage, g, self.TWO_PIE * @as(f64, @floatFromInt(totalAngle)) / 360.0 }));
    }
    

    pub fn getRotatedImages(self: *Self, bufferedImage: ?*Image, numberOfFrames: i32, totalAngle: i32) []?*BufferedImage {
        const bufferedImageArray: []?*BufferedImage = array_N67218: { const array_N67218_array = allocator.alloc(?*BufferedImage, @intCast(numberOfFrames)) catch unreachable; @memset(array_N67218_array, null); break :array_N67218 array_N67218_array; };
        const arc: f64 = (self.TWO_PIE) * @as(f64, @floatFromInt(totalAngle)) / 360.0;
        const size: i32 = @as(i32, @intCast(bufferedImageArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const radians: f64 = (arc / @as(f64, @floatFromInt(size))) * @as(f64, @floatFromInt(index));
            bufferedImageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(bufferedImageArray[@intCast(index)]), Inheritance.call(self, "getRotatedImageRadians", .{ bufferedImage, radians }));
            }
        }
        return bufferedImageArray;
    }
    

    pub fn createSpriteImage(self: *Self, bufferedImageArray: []?*BufferedImage) ?*BufferedImage {
        var columns: i32 = 9;
        var rows: i32 = 0;
        const size: i32 = @as(i32, @intCast(bufferedImageArray.len));
        if (size < columns) {
            columns = size;
        }
        rows = (@divTrunc(size, columns));
        if (@rem(size, columns) != 0) {
            rows += 1;
        }
        const firstBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, bufferedImageArray[@intCast(0)]);
        const bufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(self.imageUtil.?, "create", .{ Inheritance.call(firstBufferedImage.?, "getWidth", .{ null }) * columns, Inheritance.call(firstBufferedImage.?, "getHeight", .{ null }) * rows }));
        const g: ?*Graphics2D = Inheritance.upcast(?*Graphics2D, bufferedImage.?.createGraphics());
        var columnIndex: i32 = 0;
        var rowIndex: i32 = 0;
        var nextBufferedImage: ?*BufferedImage = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            if (@divTrunc(index, 9) != 0 and @rem(index, 9) == 0) {
                rowIndex += 1;
                columnIndex = 0;
            }
            nextBufferedImage = Inheritance.upcast(@TypeOf(nextBufferedImage), bufferedImageArray[@intCast(index)]);
            _ = Inheritance.call(g.?, "drawImage", .{ nextBufferedImage, Inheritance.call(nextBufferedImage.?, "getWidth", .{ null }) * columnIndex, Inheritance.call(nextBufferedImage.?, "getHeight", .{ null }) * rowIndex, Inheritance.call(nextBufferedImage.?, "getWidth", .{ null }), Inheritance.call(nextBufferedImage.?, "getHeight", .{ null }), null });
            columnIndex += 1;
            }
        }
        _ = g.?.dispose();
        return Inheritance.upcast(?*BufferedImage, bufferedImage);
    }
};


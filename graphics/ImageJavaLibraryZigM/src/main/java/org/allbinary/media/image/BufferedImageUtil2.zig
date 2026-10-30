// Generated Code Do Not Modify
// package org.allbinary.media.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const ImageUtil = @import("org/allbinary/media/image/ImageUtil.zig").ImageUtil;

pub const BufferedImageUtil2 = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.BufferedImageUtil2";
    imageUtil: ?*ImageUtil = null,
    var instance: ?*BufferedImageUtil2 = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BufferedImageUtil2.create();
    }

    fn initFields(this: *Self) void {
        this.imageUtil = Inheritance.upcast(?*ImageUtil, ImageUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*BufferedImageUtil2 {
        return Inheritance.upcast(?*BufferedImageUtil2, BufferedImageUtil2.instance);
    }
    

    pub fn createSpriteImage(self: *Self, bufferedImageArray: []?*BufferedImage) ?*BufferedImage {
        var columns: i32 = @as(i32, @intCast(bufferedImageArray.len));
        const max: i32 = columns;
        var rows: i32 = 0;
        if (@as(i32, @intCast(bufferedImageArray.len)) < columns) {
            columns = @as(i32, @intCast(bufferedImageArray.len));
        }
        rows = (@divTrunc(@as(i32, @intCast(bufferedImageArray.len)), columns));
        if (@rem(@as(i32, @intCast(bufferedImageArray.len)), columns) != 0) {
            rows += 1;
        }
        const bufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(self.imageUtil.?, "create", .{ Inheritance.call(bufferedImageArray[@intCast(0)].?, "getWidth", .{ null }) * columns, Inheritance.call(bufferedImageArray[@intCast(0)].?, "getHeight", .{ null }) * rows }));
        const g: ?*Graphics2D = Inheritance.upcast(?*Graphics2D, bufferedImage.?.createGraphics());
        var columnIndex: i32 = 0;
        var rowIndex: i32 = 0;
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(bufferedImageArray.len))) : (index += 1) {
            if (@divTrunc(index, max) != 0 and @rem(index, max) == 0) {
                rowIndex += 1;
                columnIndex = 0;
            }
            _ = Inheritance.call(g.?, "drawImage", .{ bufferedImageArray[@intCast(index)], Inheritance.call(bufferedImageArray[@intCast(index)].?, "getWidth", .{ null }) * columnIndex, Inheritance.call(bufferedImageArray[@intCast(index)].?, "getHeight", .{ null }) * rowIndex, Inheritance.call(bufferedImageArray[@intCast(index)].?, "getWidth", .{ null }), Inheritance.call(bufferedImageArray[@intCast(index)].?, "getHeight", .{ null }), null });
            columnIndex += 1;
            }
        }
        _ = g.?.dispose();
        return bufferedImage;
    }
};


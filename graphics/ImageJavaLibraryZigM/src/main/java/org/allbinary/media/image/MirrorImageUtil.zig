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
// const AffineTransform = @import("java/awt/geom/AffineTransform.zig").AffineTransform;
// const AffineTransformOp = @import("java/awt/image/AffineTransformOp.zig").AffineTransformOp;
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ImageUtil = @import("org/allbinary/media/image/ImageUtil.zig").ImageUtil;

pub const MirrorImageUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.MirrorImageUtil";
    logUtil: ?*LogUtil = null,
    imageUtil: ?*ImageUtil = null,
    var instance: ?*MirrorImageUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MirrorImageUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.imageUtil = Inheritance.upcast(?*ImageUtil, ImageUtil.getInstance());
    }
    

    pub fn getInstance() ?*MirrorImageUtil {
        return Inheritance.upcast(?*MirrorImageUtil, MirrorImageUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getImage(self: *Self, bufferedImageParameter: ?*BufferedImage, verticle: bool, horizontal: bool) ?*BufferedImage {
        var bufferedImage = bufferedImageParameter;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Starting"), self, String.literal("getImage") });
        const newBufferedImage: ?*BufferedImage = Inheritance.upcast(?*BufferedImage, Inheritance.call(self.imageUtil.?, "create", .{ Inheritance.call(bufferedImage.?, "getWidth", .{ null }), Inheritance.call(bufferedImage.?, "getHeight", .{ null }) }));
        const g: ?*Graphics2D = Inheritance.upcast(?*Graphics2D, newBufferedImage.?.createGraphics());
        if (verticle) {
            const tx: ?*AffineTransform = Inheritance.upcast(?*AffineTransform, Inheritance.callStatic(AffineTransform, "getScaleInstance", .{ 1, -1 }));
            _ = Inheritance.call(tx.?, "translate", .{ 0, -Inheritance.call(bufferedImage.?, "getHeight", .{ null }) });
            const op: ?*AffineTransformOp = Inheritance.callStatic(AffineTransformOp, "create2", .{ tx, AffineTransformOp.TYPE_NEAREST_NEIGHBOR });
            bufferedImage = Inheritance.upcast(@TypeOf(bufferedImage), Inheritance.call(op.?, "filter", .{ bufferedImage, null }));
        }
        if (horizontal) {
            const tx: ?*AffineTransform = Inheritance.upcast(?*AffineTransform, Inheritance.callStatic(AffineTransform, "getScaleInstance", .{ -1, 1 }));
            _ = Inheritance.call(tx.?, "translate", .{ -Inheritance.call(bufferedImage.?, "getWidth", .{ null }), 0 });
            const op: ?*AffineTransformOp = Inheritance.callStatic(AffineTransformOp, "create2", .{ tx, AffineTransformOp.TYPE_NEAREST_NEIGHBOR });
            bufferedImage = Inheritance.upcast(@TypeOf(bufferedImage), Inheritance.call(op.?, "filter", .{ bufferedImage, null }));
        }
        _ = Inheritance.call(g.?, "drawImage", .{ bufferedImage, 0, 0, Inheritance.call(bufferedImage.?, "getWidth", .{ null }), Inheritance.call(bufferedImage.?, "getHeight", .{ null }), null });
        _ = g.?.dispose();
        return newBufferedImage;
    }
    

    pub fn getImages(self: *Self, bufferedImage: ?*BufferedImage, verticle: bool, horizontal: bool) []?*BufferedImage {
        const width: i32 = bufferedImage.?.getWidth();
        const height: i32 = bufferedImage.?.getHeight();
        const cellHeight: i32 = height;
        const cellWidth: i32 = height;
        const numberOfFramesPerOrientation: i32 = @divTrunc(width, cellWidth);
        var numberOfFrames: i32 = numberOfFramesPerOrientation;
        if (verticle) {
            numberOfFrames *= 2;
        }
        if (horizontal) {
            numberOfFrames *= 2;
        }
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("numberOfFramesPerOrientation: "), numberOfFramesPerOrientation), String.literal(" numberOfFrames: ")), numberOfFrames), self, String.literal("getImages") });
        const bufferedImageArray: []?*BufferedImage = array_N67170: { const array_N67170_array = allocator.alloc(?*BufferedImage, @intCast(numberOfFrames)) catch unreachable; @memset(array_N67170_array, null); break :array_N67170 array_N67170_array; };
        const y: i32 = 0;
        {
            var index: i32 = 0;
            while (index < numberOfFramesPerOrientation) : (index += 1) {
            const x: i32 = index * cellWidth;
            bufferedImageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(bufferedImageArray[@intCast(index)]), Inheritance.call(bufferedImage.?, "getSubimage", .{ x, y, cellWidth, cellHeight }));
            }
        }
        {
            var index: i32 = 0;
            while (index < numberOfFramesPerOrientation) : (index += 1) {
            bufferedImageArray[@intCast(index + numberOfFramesPerOrientation)] = Inheritance.upcast(@TypeOf(bufferedImageArray[@intCast(index + numberOfFramesPerOrientation)]), Inheritance.call(self, "getImage", .{ bufferedImageArray[@intCast(index)], verticle, horizontal }));
            }
        }
        return bufferedImageArray;
    }
};


// Generated Code Do Not Modify
// package org.allbinary.logic.visual.media

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
// const RenderedImage = @import("java/awt/image/RenderedImage.zig").RenderedImage;
// const ImageIO = @import("javax/imageio/ImageIO.zig").ImageIO;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbFileNativeUtil = @import("org/allbinary/logic/io/file/AbFileNativeUtil.zig").AbFileNativeUtil;

pub const ImageIOUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.media.ImageIOUtil";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn read(file: ?*AbFile) ?*BufferedImage {
        return Inheritance.upcast(?*BufferedImage, Inheritance.callStatic(ImageIO, "read", .{ Inheritance.callStatic(AbFileNativeUtil, "get", .{ file }) }));
    }
    

    // throws Exception
    pub fn write(renderedImage: ?*RenderedImage, name: ?*String, file: ?*AbFile) bool {
        return Inheritance.callStatic(ImageIO, "write", .{ renderedImage, name, Inheritance.callStatic(AbFileNativeUtil, "get", .{ file }) });
    }
};


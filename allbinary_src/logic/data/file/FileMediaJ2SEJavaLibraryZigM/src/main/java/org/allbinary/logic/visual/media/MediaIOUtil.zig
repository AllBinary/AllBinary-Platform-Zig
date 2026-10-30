// Generated Code Do Not Modify
// package org.allbinary.logic.visual.media

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const ImageIO = @import("javax/imageio/ImageIO.zig").ImageIO;

pub const MediaIOUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.media.MediaIOUtil";
    var instance: ?*MediaIOUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MediaIOUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*MediaIOUtil {
        return Inheritance.upcast(?*MediaIOUtil, MediaIOUtil.instance);
    }
    

    pub fn getReaderFormatNames(self: *Self) []?*String {
        _ = self;
        return ImageIO.getReaderFormatNames();
    }
    

    pub fn getWriterFormatNames(self: *Self) []?*String {
        _ = self;
        return ImageIO.getWriterFormatNames();
    }
};


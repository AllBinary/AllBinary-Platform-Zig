// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;

pub const ABCustomImageItem = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.item.ABCustomImageItem";
    base: ABCustomItem = undefined,
    yOffset: i32 = 0,

    fn initFields(this: *Self) void {
        this.yOffset = 0;
    }
    

    pub fn create6(label: ?*String, image: ?*Image, layout: i32, altText: ?*String, basicColor: ?*BasicColor, yOffset: i32) *Self {
        _ = image;
        _ = layout;
        _ = altText;
        _ = yOffset;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ABCustomItem, "create3", .{ label, basicColor, basicColor }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getImage(self: *Self) ?*Image {
        _ = self;
        return Inheritance.upcast(?*Image, NullImage.NULL_IMAGE);
    }
};


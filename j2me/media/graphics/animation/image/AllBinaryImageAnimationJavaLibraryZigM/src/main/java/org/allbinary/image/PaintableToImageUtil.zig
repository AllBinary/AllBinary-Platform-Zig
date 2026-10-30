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
// package org.allbinary.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;
const GameFeatureImageCacheFactory = @import("org/allbinary/image/GameFeatureImageCacheFactory.zig").GameFeatureImageCacheFactory;

pub const PaintableToImageUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.PaintableToImageUtil";
    var instance: ?*PaintableToImageUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PaintableToImageUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getImage(paintableInterface: ?*PaintableInterface, width: i32, height: i32) ?*Image {
        const image: ?*Image = Inheritance.upcast(?*Image, Inheritance.call(GameFeatureImageCacheFactory.getInstance().?, "get", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(PaintableToImageUtil.instance).?.class))).?))).name), width, height }));
        const graphics: ?*Graphics = Inheritance.upcast(?*Graphics, image.?.getGraphics());
        _ = Inheritance.call(paintableInterface.?, "paint", .{ graphics });
        return image;
    }
};


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
// package org.allbinary.input.automation.module.game

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const ColorCacheFactory = @import("org/allbinary/graphics/color/ColorCacheFactory.zig").ColorCacheFactory;
const ColorCacheable = @import("org/allbinary/graphics/color/ColorCacheable.zig").ColorCacheable;
const AutomaticCacheInterface = @import("org/allbinary/logic/util/cache/AutomaticCacheInterface.zig").AutomaticCacheInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const GraphicsAnalysisUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.game.GraphicsAnalysisUtil";
    const MAX: i32 = 122;
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getNominator(bufferedImage: ?*BufferedImage, min_x: ?*Integer, max_x: ?*Integer, y: ?*Integer) f64 {
        {
            var index: i32 = max_x.?.intValue();
            while (index > min_x.?.intValue()) : (index -= 1) {
            const colorInteger: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.callStatic(Integer, "valueOf", .{ Inheritance.call(bufferedImage.?, "getRGB", .{ index, y.?.intValue() }) }));
            const automaticCacheInterface: ?*AutomaticCacheInterface = Inheritance.upcast(?*AutomaticCacheInterface, ColorCacheFactory.getInstance());
            const colorCacheable: ?*ColorCacheable = Inheritance.cast(?*ColorCacheable, Inheritance.call(automaticCacheInterface.?, "get", .{ colorInteger }));
            const color: ?*Color = Inheritance.upcast(?*Color, colorCacheable.?.getColor());
            if (color.?.getRed() < GraphicsAnalysisUtil.MAX and color.?.getGreen() < GraphicsAnalysisUtil.MAX and color.?.getBlue() < GraphicsAnalysisUtil.MAX) {
            } else {
                return index - min_x.?.intValue();
            }
            }
        }
        return 0.0;
    }
};


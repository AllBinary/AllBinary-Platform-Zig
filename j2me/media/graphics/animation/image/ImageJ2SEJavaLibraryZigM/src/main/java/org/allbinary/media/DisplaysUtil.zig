// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// const Dimension = @import("java/awt/Dimension.zig").Dimension;
// const DisplayMode = @import("java/awt/DisplayMode.zig").DisplayMode;
// const GraphicsDevice = @import("java/awt/GraphicsDevice.zig").GraphicsDevice;
// const GraphicsEnvironment = @import("java/awt/GraphicsEnvironment.zig").GraphicsEnvironment;
// const Toolkit = @import("java/awt/Toolkit.zig").Toolkit;
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;

pub const DisplaysUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.DisplaysUtil";
    var instance: ?*DisplaysUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = DisplaysUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*DisplaysUtil {
        return Inheritance.upcast(?*DisplaysUtil, DisplaysUtil.instance);
    }
    

    pub fn getPrimaryScreenSize(self: *Self) ?*Rectangle {
        _ = self;
        const dimension: ?*Dimension = Inheritance.upcast(?*Dimension, Inheritance.receiverOf(Toolkit.getDefaultToolkit().?, "getScreenSize").getScreenSize());
        return Inheritance.callStatic(Rectangle, "create3", .{ PointFactory.getInstance().?.ZERO_ZERO, dimension.?.width, dimension.?.height });
    }
    

    pub fn getScreenSizesAsRectangleArray(self: *Self) []?*Rectangle {
        _ = self;
        const graphicsEnvironment: ?*GraphicsEnvironment = Inheritance.upcast(?*GraphicsEnvironment, GraphicsEnvironment.getLocalGraphicsEnvironment());
        const graphicsDeviceArray: []?*GraphicsDevice = graphicsEnvironment.?.getScreenDevices();
        var graphicsDevice: ?*GraphicsDevice = null;
        var displayMode: ?*DisplayMode = null;
        var rectangle: ?*Rectangle = null;
        const size: i32 = @as(i32, @intCast(graphicsDeviceArray.len));
        const rectangleArray: []?*Rectangle = array_N66261: { const array_N66261_array = allocator.alloc(?*Rectangle, @intCast(size)) catch unreachable; @memset(array_N66261_array, null); break :array_N66261 array_N66261_array; };
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            graphicsDevice = Inheritance.upcast(@TypeOf(graphicsDevice), graphicsDeviceArray[@intCast(index)]);
            displayMode = Inheritance.upcast(@TypeOf(displayMode), graphicsDevice.?.getDisplayMode());
            rectangle = Inheritance.callStatic(Rectangle, "create3", .{ PointFactory.getInstance().?.ZERO_ZERO, displayMode.?.getWidth(), displayMode.?.getHeight() });
            rectangleArray[@intCast(index)] = Inheritance.upcast(@TypeOf(rectangleArray[@intCast(index)]), rectangle);
            }
        }
        return rectangleArray;
    }
};


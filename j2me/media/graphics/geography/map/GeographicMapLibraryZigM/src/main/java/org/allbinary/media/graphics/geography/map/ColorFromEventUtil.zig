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
// package org.allbinary.media.graphics.geography.map

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const BasicGeographicMap = @import("org/allbinary/media/graphics/geography/map/BasicGeographicMap.zig").BasicGeographicMap;
const GeographicMapCompositeInterface = @import("org/allbinary/media/graphics/geography/map/GeographicMapCompositeInterface.zig").GeographicMapCompositeInterface;

pub const ColorFromEventUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.ColorFromEventUtil";
    YELLOW: ?*BasicColor = null,
    COLOR_INT: i32 = 0,
    var instance: ?*ColorFromEventUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ColorFromEventUtil.create();
    }

    fn initFields(this: *Self) void {
        this.YELLOW = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.YELLOW);
        this.COLOR_INT = this.YELLOW.?.intValue();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ColorFromEventUtil {
        return Inheritance.upcast(?*ColorFromEventUtil, ColorFromEventUtil.instance);
    }
    

    pub fn getForegroundColor(self: *Self, gameCanvasInterface: ?*AllBinaryGameCanvas) ?*BasicColor {
        var color: ?*BasicColor = self.YELLOW;
        const geographicMapCompositeInterface: ?*GeographicMapCompositeInterface = Inheritance.cast(?*GeographicMapCompositeInterface, Inheritance.receiver(gameCanvasInterface.?, "getLayerManager").getLayerManager());
        const geographicMapInterface: ?*BasicGeographicMap = Inheritance.upcast(?*BasicGeographicMap, geographicMapCompositeInterface.?.getGeographicMapInterface()[@intCast(0)]);
        if (geographicMapInterface != null) {
            const foregroundBasicColor: ?*BasicColor = Inheritance.upcast(?*BasicColor, Inheritance.receiver(geographicMapInterface.?, "getForegroundBasicColor").getForegroundBasicColor());
            color = foregroundBasicColor;
        }
        return color;
    }
};


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
// package org.allbinary.game.paint

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const GenericOperatingSystem = @import("org/allbinary/logic/system/os/GenericOperatingSystem.zig").GenericOperatingSystem;
const OperatingSystemFactory = @import("org/allbinary/logic/system/os/OperatingSystemFactory.zig").OperatingSystemFactory;
const ColorFillBasePaintable = @import("org/allbinary/game/paint/ColorFillBasePaintable.zig").ColorFillBasePaintable;
const ColorFillPaintable = @import("org/allbinary/game/paint/ColorFillPaintable.zig").ColorFillPaintable;
const OverScanColorFillPaintable = @import("org/allbinary/game/paint/OverScanColorFillPaintable.zig").OverScanColorFillPaintable;

pub const ColorFillPaintableFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.paint.ColorFillPaintableFactory";
    var instance: ?*ColorFillPaintableFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ColorFillPaintableFactory.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*ColorFillPaintableFactory {
        return Inheritance.upcast(?*ColorFillPaintableFactory, ColorFillPaintableFactory.instance);
    }
    

    pub fn getInstance2(self: *Self, basicColor: ?*BasicColor, forThreedCanvas: bool) ?*ColorFillBasePaintable {
        _ = forThreedCanvas;
        _ = self;
        const operatingSystem: ?*GenericOperatingSystem = Inheritance.upcast(?*GenericOperatingSystem, Inheritance.receiverOf(OperatingSystemFactory.getInstance().?, "getOperatingSystemInstance").getOperatingSystemInstance());
        if (operatingSystem.?.isOverScan()) {
            return Inheritance.upcast(?*ColorFillBasePaintable, Inheritance.callStatic(OverScanColorFillPaintable, "create1", .{ basicColor }));
        } else {
            return Inheritance.upcast(?*ColorFillBasePaintable, Inheritance.callStatic(ColorFillPaintable, "create1", .{ basicColor }));
        }
    }
};


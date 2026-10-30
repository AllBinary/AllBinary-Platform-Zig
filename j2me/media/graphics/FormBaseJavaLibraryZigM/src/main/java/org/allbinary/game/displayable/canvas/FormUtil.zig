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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PointFactory = @import("org/allbinary/graphics/PointFactory.zig").PointFactory;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;

pub const FormUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.FormUtil";
    var instance: ?*FormUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = FormUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*FormUtil {
        return Inheritance.upcast(?*FormUtil, FormUtil.instance);
    }
    

    pub fn createFormRectangle(self: *Self) ?*Rectangle {
        _ = self;
        const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
        const pointFactory: ?*PointFactory = Inheritance.upcast(?*PointFactory, PointFactory.getInstance());
        const rectangle: ?*Rectangle = Inheritance.callStatic(Rectangle, "create3", .{ Inheritance.call(pointFactory.?, "createXY", .{ 30, 10 }), displayInfo.?.getLastWidth() - 30, displayInfo.?.getLastHeight() - 35 });
        return rectangle;
    }
};


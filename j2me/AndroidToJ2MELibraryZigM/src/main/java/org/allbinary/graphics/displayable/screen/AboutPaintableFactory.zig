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
// package org.allbinary.graphics.displayable.screen

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;

pub const AboutPaintableFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.displayable.screen.AboutPaintableFactory";
    paintableArray: []?*Paintable = &.{},
    var instance: ?*AboutPaintableFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AboutPaintableFactory.create();
    }

    fn initFields(this: *Self) void {
        this.paintableArray = @constCast(&[_]?*Paintable{ NullPaintable.getInstance() })[0..];
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*AboutPaintableFactory {
        return Inheritance.upcast(?*AboutPaintableFactory, AboutPaintableFactory.instance);
    }
};


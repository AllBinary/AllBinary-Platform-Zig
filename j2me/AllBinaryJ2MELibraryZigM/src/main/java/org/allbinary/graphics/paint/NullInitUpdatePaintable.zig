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
// package org.allbinary.graphics.paint

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InitUpdatePaintable = @import("org/allbinary/graphics/paint/InitUpdatePaintable.zig").InitUpdatePaintable;

pub const NullInitUpdatePaintable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.paint.NullInitUpdatePaintable";
    base: InitUpdatePaintable = undefined,
    var SINGLETON: ?*NullInitUpdatePaintable = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = NullInitUpdatePaintable.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = InitUpdatePaintable.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*InitUpdatePaintable {
        return Inheritance.upcast(?*InitUpdatePaintable, NullInitUpdatePaintable.SINGLETON);
    }
};


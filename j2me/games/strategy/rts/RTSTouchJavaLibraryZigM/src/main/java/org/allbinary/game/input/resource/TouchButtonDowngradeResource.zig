// 
// AllBinary Open License Version 1 
// Copyright (c) 2007 AllBinary 
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
// package org.allbinary.game.input.resource

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TouchButtonBlankResource = @import("org/allbinary/input/motion/button/TouchButtonBlankResource.zig").TouchButtonBlankResource;
const TouchButtonResource = @import("org/allbinary/input/motion/button/TouchButtonResource.zig").TouchButtonResource;

pub const TouchButtonDowngradeResource = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.resource.TouchButtonDowngradeResource";
    base: TouchButtonResource = undefined,
    var instance: ?*TouchButtonResource = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?*TouchButtonResource, TouchButtonDowngradeResource.create());
    }
    

    pub fn getInstance() ?*TouchButtonResource {
        return Inheritance.upcast(?*TouchButtonResource, TouchButtonDowngradeResource.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TouchButtonResource, "create2", .{ String.literal("/touch_button_downgrade_64_by_64.png"), String.literal("/touch_button_downgrade_hint_64_by_64.png") }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};


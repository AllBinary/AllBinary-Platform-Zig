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
// package org.allbinary.media.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Color = @import("java/awt/Color.zig").Color;

pub const ImageJ2SEUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageJ2SEUtil";
    TRANSPARENT_COLOR: ?*Color = null,
    var instance: ?*ImageJ2SEUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ImageJ2SEUtil.create();
    }

    fn initFields(this: *Self) void {
        this.TRANSPARENT_COLOR = Inheritance.callStatic(Color, "create4", .{ 0, 0, 0, 0 });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ImageJ2SEUtil {
        return Inheritance.upcast(?*ImageJ2SEUtil, ImageJ2SEUtil.instance);
    }
};


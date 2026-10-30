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
// package org.allbinary.game.gd.resource

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const GDResources = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.gd.resource.GDResources";
    resourceStringArray: []?*String = &.{},
    currentLayoutRequiredTotal: i32 = 0,
    var instance: ?*GDResources = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GDResources.create();
    }

    fn initFields(this: *Self) void {
        this.resourceStringArray = @constCast(&[_]?*String{  })[0..];
        this.currentLayoutRequiredTotal = 0;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*GDResources {
        return Inheritance.upcast(?*GDResources, GDResources.instance);
    }
};


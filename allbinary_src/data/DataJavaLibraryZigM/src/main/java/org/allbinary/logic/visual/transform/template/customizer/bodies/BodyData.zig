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
// package org.allbinary.logic.visual.transform.template.customizer.bodies

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const BodyData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData";
    NAME: ?*String = null,
    VIEWNAMEKEY: ?*String = null,
    MIN: i32 = 0,
    var instance: ?*BodyData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BodyData.create();
    }

    fn initFields(this: *Self) void {
        this.NAME = String.literal("BODY_NAME");
        this.VIEWNAMEKEY = String.literal("Body");
        this.MIN = 0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*BodyData {
        return Inheritance.upcast(?*BodyData, BodyData.instance);
    }
};


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
// package org.allbinary.logic.math

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const ScaleFactorFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.math.ScaleFactorFactory";
    DEFAULT_SCALE_FACTOR: i32 = 0,
    DEFAULT_SCALE_VALUE: i32 = 0,
    var instance: ?*ScaleFactorFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ScaleFactorFactory.create();
    }

    fn initFields(this: *Self) void {
        this.DEFAULT_SCALE_FACTOR = 10;
        this.DEFAULT_SCALE_VALUE = 1024;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ScaleFactorFactory {
        return Inheritance.upcast(?*ScaleFactorFactory, ScaleFactorFactory.instance);
    }
};


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
// package org.allbinary.business.forward

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const ForwardData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.forward.ForwardData";
    PAGE: ?*String = null,
    NAME: ?*String = null,
    VALUE: ?*String = null,
    var instance: ?*ForwardData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ForwardData.create();
    }

    fn initFields(this: *Self) void {
        this.PAGE = String.literal("FORWARD_PAGE");
        this.NAME = String.literal("FORWARD_NAME");
        this.VALUE = String.literal("FORWARD_VALUE");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ForwardData {
        return Inheritance.upcast(?*ForwardData, ForwardData.instance);
    }
};


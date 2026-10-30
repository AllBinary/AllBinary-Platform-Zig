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
// package org.allbinary.logic.string

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const ServletStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.string.ServletStrings";
    DOPOST: ?*String = null,
    DOGET: ?*String = null,
    REQUEST_EXCEPTION: ?*String = null,
    var instance: ?*ServletStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ServletStrings.create();
    }

    fn initFields(this: *Self) void {
        this.DOPOST = String.literal("doPost");
        this.DOGET = String.literal("doGet");
        this.REQUEST_EXCEPTION = String.literal("Request Failed");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ServletStrings {
        return Inheritance.upcast(?*ServletStrings, ServletStrings.instance);
    }
};


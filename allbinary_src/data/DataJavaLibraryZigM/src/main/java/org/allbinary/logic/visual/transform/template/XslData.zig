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
// package org.allbinary.logic.visual.transform.template

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const XslData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.template.XslData";
    NAME: ?*String = null,
    ROOT_IMPORT_URI: ?*String = null,
    var instance: ?*XslData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = XslData.create();
    }

    fn initFields(this: *Self) void {
        this.NAME = String.literal("XSL_NAME");
        this.ROOT_IMPORT_URI = String.literal("ROOT_IMPORT_URI");
    }
    

    pub fn getInstance() ?*XslData {
        return Inheritance.upcast(?*XslData, XslData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};


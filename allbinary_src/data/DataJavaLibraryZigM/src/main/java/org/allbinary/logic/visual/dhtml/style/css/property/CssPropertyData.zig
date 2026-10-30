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
// package org.allbinary.logic.visual.dhtml.style.css.property

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const CssPropertyData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyData";
    NAME: ?*String = null,
    VALUES: ?*String = null,
    var instance: ?*CssPropertyData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CssPropertyData.create();
    }

    fn initFields(this: *Self) void {
        this.NAME = String.literal("CSS_PROPERTY_NAME");
        this.VALUES = String.literal("CSS_PROPERTY_VALUES");
    }
    

    pub fn getInstance() ?*CssPropertyData {
        return Inheritance.upcast(?*CssPropertyData, CssPropertyData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};


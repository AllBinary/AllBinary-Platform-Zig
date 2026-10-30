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
// package org.allbinary.logic.visual.dhtml.html.head.meta

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const HtmlMetaAttributesData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData";
    NAME_VALUE: ?*String = null,
    HTTP_EQUIV_VALUE: ?*String = null,
    var instance: ?*HtmlMetaAttributesData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = HtmlMetaAttributesData.create();
    }

    fn initFields(this: *Self) void {
        this.NAME_VALUE = String.literal("name");
        this.HTTP_EQUIV_VALUE = String.literal("http-equiv");
    }
    

    pub fn getInstance() ?*HtmlMetaAttributesData {
        return Inheritance.upcast(?*HtmlMetaAttributesData, HtmlMetaAttributesData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};


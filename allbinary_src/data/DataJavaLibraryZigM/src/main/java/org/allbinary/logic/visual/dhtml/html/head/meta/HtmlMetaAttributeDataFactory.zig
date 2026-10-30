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
const HtmlMetaAttributeData = @import("org/allbinary/logic/visual/dhtml/html/head/meta/HtmlMetaAttributeData.zig").HtmlMetaAttributeData;

pub const HtmlMetaAttributeDataFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeDataFactory";
    NAME: ?*HtmlMetaAttributeData = null,
    HTTP_EQUIV: ?*HtmlMetaAttributeData = null,
    CONTENT: ?*HtmlMetaAttributeData = null,
    var instance: ?*HtmlMetaAttributeDataFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = HtmlMetaAttributeDataFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NAME = Inheritance.callStatic(HtmlMetaAttributeData, "create2", .{ 0, String.literal("HTMLMETA_ATTRIBUTE_NAME") });
        this.HTTP_EQUIV = Inheritance.callStatic(HtmlMetaAttributeData, "create2", .{ 1, String.literal("HTMLMETA_ATTRIBUTE_HTTPEQUIV") });
        this.CONTENT = Inheritance.callStatic(HtmlMetaAttributeData, "create2", .{ 2, String.literal("HTMLMETA_ATTRIBUTE_CONTENT") });
    }
    

    pub fn getInstance() ?*HtmlMetaAttributeDataFactory {
        return Inheritance.upcast(?*HtmlMetaAttributeDataFactory, HtmlMetaAttributeDataFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};


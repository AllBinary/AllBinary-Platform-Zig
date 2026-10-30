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
// package org.allbinary.logic.visual.transform.info

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const TransformInfoData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.TransformInfoData";
    PARENT: ?*String = null,
    MAPPED: ?*String = null,
    NAME: ?*String = null,
    DESCRIPTION: ?*String = null,
    CATEGORY: ?*String = null,
    OBJECTFILENAME: ?*String = null,
    OBJECT: ?*String = null,
    OBJECTCONFIGFILENAME: ?*String = null,
    OBJECTCONFIG: ?*String = null,
    TEMPLATEFILENAME: ?*String = null,
    TEMPLATE: ?*String = null,
    DATAFILENAME: ?*String = null,
    DATA: ?*String = null,
    LABEL: ?*String = null,
    OWNER: ?*String = null,
    PARTIAL: ?*String = null,
    var instance: ?*TransformInfoData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TransformInfoData.create();
    }

    fn initFields(this: *Self) void {
        this.PARENT = String.literal("TRANSFORM_INFO_PARENT");
        this.MAPPED = String.literal("TRANSFORM_INFO_MAPPED");
        this.NAME = String.literal("TRANSFORM_INFO_NAME");
        this.DESCRIPTION = String.literal("TRANSFORM_INFO_DESCRIPTION");
        this.CATEGORY = String.literal("TRANSFORM_INFO_CATEGORY");
        this.OBJECTFILENAME = String.literal("TRANSFORM_INFO_OBJECTFILENAME");
        this.OBJECT = String.literal("TRANSFORM_INFO_OBJECT");
        this.OBJECTCONFIGFILENAME = String.literal("TRANSFORM_INFO_OBJECTCONFIGFILENAME");
        this.OBJECTCONFIG = String.literal("TRANSFORM_INFO_OBJECTCONFIG");
        this.TEMPLATEFILENAME = String.literal("TRANSFORM_INFO_TEMPLATEFILENAME");
        this.TEMPLATE = String.literal("TRANSFORM_INFO_TEMPLATE");
        this.DATAFILENAME = String.literal("TRANSFORM_INFO_DATAFILENAME");
        this.DATA = String.literal("TRANSFORM_INFO_DATA");
        this.LABEL = String.literal("TRANSFORM_INFO_LABEL");
        this.OWNER = Inheritance.upcast(?*String, String.plus(String.literal("OWNER_"), this.NAME));
        this.PARTIAL = Inheritance.upcast(?*String, String.plus(String.literal("PARTIAL_"), this.NAME));
    }
    

    pub fn getInstance() ?*TransformInfoData {
        return Inheritance.upcast(?*TransformInfoData, TransformInfoData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};


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
// package org.allbinary.string

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsProperty = @import("jsinterop/annotations/JsProperty.zig").JsProperty;

pub const CommonLabels = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.string.CommonLabels";
    WIDTH_LABEL: ?*String = null,
    HEIGHT_LABEL: ?*String = null,
    END_LABEL: ?*String = null,
    TOTAL_LABEL: ?*String = null,
    INDEX_LABEL: ?*String = null,
    START_LABEL: ?*String = null,
    COMMAND_LABEL: ?*String = null,
    NAME_LABEL: ?*String = null,
    START: ?*String = null,
    ELAPSED: ?*String = null,
    CURRENT: ?*String = null,
    NEXT: ?*String = null,
    ITEM_LABEL: ?*String = null,
    RESULT_: ?*String = null,
    COLON_SEP: ?*String = null,
    var instance: ?*CommonLabels = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CommonLabels.create();
    }

    fn initFields(this: *Self) void {
        this.WIDTH_LABEL = String.literal(" Width: ");
        this.HEIGHT_LABEL = String.literal(" Height: ");
        this.END_LABEL = String.literal("End: ");
        this.TOTAL_LABEL = String.literal("Total: ");
        this.INDEX_LABEL = String.literal("index: ");
        this.START_LABEL = String.literal("Start: ");
        this.COMMAND_LABEL = String.literal("Command: ");
        this.NAME_LABEL = String.literal("Name: ");
        this.START = this.START_LABEL;
        this.ELAPSED = String.literal(" Elapsed: ");
        this.CURRENT = String.literal(" Current: ");
        this.NEXT = String.literal("Next");
        this.ITEM_LABEL = String.literal("Item: ");
        this.RESULT_ = String.literal("Result: ");
        this.COLON_SEP = String.literal(": ");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*CommonLabels {
        return Inheritance.upcast(?*CommonLabels, CommonLabels.instance);
    }
};


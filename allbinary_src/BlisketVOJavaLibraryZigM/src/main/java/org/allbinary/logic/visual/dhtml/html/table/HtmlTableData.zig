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
// package org.allbinary.logic.visual.dhtml.html.table

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const HtmlTableData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.html.table.HtmlTableData";
    LEFT: ?*String = null,
    RIGHT: ?*String = null,
    NONE: ?*String = null,
    TOP: ?*String = null,
    BOTTOM: ?*String = null,
    TOPBOT: ?*String = null,
    SIDES: ?*String = null,
    ALL: ?*String = null,
    BORDERED: ?*String = null,
    BASIC: ?*String = null,
    ROWS: ?*String = null,
    FRAMES: []?*String = &.{},
    var instance: ?*HtmlTableData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = HtmlTableData.create();
    }

    fn initFields(this: *Self) void {
        this.LEFT = Inheritance.upcast(?*String, CommonStrings.getInstance().?.LEFT);
        this.RIGHT = Inheritance.upcast(?*String, CommonStrings.getInstance().?.RIGHT);
        this.NONE = String.literal("none");
        this.TOP = String.literal("top");
        this.BOTTOM = String.literal("bottom");
        this.TOPBOT = String.literal("topbot");
        this.SIDES = String.literal("sides");
        this.ALL = String.literal("all");
        this.BORDERED = String.literal("border");
        this.BASIC = String.literal("basic");
        this.ROWS = String.literal("rows");
        this.FRAMES = @constCast(&[_]?*String{ this.NONE, this.TOP, this.BOTTOM, this.TOPBOT, this.SIDES, this.ALL, this.BORDERED })[0..];
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*HtmlTableData {
        return Inheritance.upcast(?*HtmlTableData, HtmlTableData.instance);
    }
};


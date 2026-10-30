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
// package org.allbinary.logic.visual.dhtml.html.name

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const HtmlNameMathData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData";
    EQUALS: ?*String = null,
    PLUS: ?*String = null,
    MINUS: ?*String = null,
    DIVIDE: ?*String = null,
    MULTIPLY: ?*String = null,
    var instance: ?*HtmlNameMathData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = HtmlNameMathData.create();
    }

    fn initFields(this: *Self) void {
        this.EQUALS = String.literal("_EQUALS_");
        this.PLUS = String.literal("_PLUS_");
        this.MINUS = String.literal("_MINUS_");
        this.DIVIDE = String.literal("_DIVIDE_");
        this.MULTIPLY = String.literal("_MULTIPLY_");
    }
    

    pub fn getInstance() ?*HtmlNameMathData {
        return Inheritance.upcast(?*HtmlNameMathData, HtmlNameMathData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};


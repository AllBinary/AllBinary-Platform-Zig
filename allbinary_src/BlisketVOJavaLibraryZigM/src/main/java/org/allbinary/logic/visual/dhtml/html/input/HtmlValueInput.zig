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
// package org.allbinary.logic.visual.dhtml.html.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const HtmlInput = @import("org/allbinary/logic/visual/dhtml/html/input/HtmlInput.zig").HtmlInput;

pub const HtmlValueInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput";
    base: HtmlInput = undefined,
    value: ?*String = null,
    VALUE: ?*String = null,

    fn initFields(this: *Self) void {
        
        this.VALUE = String.literal("VALUE");
    }
    

    pub fn create5(before: ?*String, @"type": ?*String, name: ?*String, value: ?*String, after: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HtmlInput, "create4", .{ before, @"type", name, after }).*;
        this.initFields();
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        this.value = Inheritance.upcast(@TypeOf(this.value), stringUtil.?.EMPTY_STRING);
        _ = Inheritance.call(this, "addAttribute", .{ this.VALUE, value });
        Inheritance.bindOverrides(this);
        return this;
    }
};


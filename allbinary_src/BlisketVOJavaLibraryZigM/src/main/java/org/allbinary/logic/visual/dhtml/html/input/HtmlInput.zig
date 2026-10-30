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
const HtmlTag = @import("org/allbinary/logic/visual/dhtml/html/HtmlTag.zig").HtmlTag;

pub const HtmlInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.html.input.HtmlInput";
    base: HtmlTag = undefined,
    END: ?*String = null,
    STARTINPUT: ?*String = null,
    ENDINPUT: ?*String = null,
    TYPE: ?*String = null,
    NAME: ?*String = null,
    before: ?*String = null,
    @"type": ?*String = null,
    name: ?*String = null,
    after: ?*String = null,

    fn initFields(this: *Self) void {
        this.END = String.literal(">");
        this.STARTINPUT = String.literal("<INPUT ");
        this.ENDINPUT = String.literal("</INPUT>");
        this.TYPE = String.literal("TYPE=\"");
        this.NAME = String.literal("NAME=\"");
        
        
        
        
    }
    

    pub fn create4(before: ?*String, @"type": ?*String, name: ?*String, after: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = HtmlTag.create().*;
        this.initFields();
        this.before = before;
        this.@"type" = @"type";
        this.name = name;
        this.after = after;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        var result: ?*String = Inheritance.upcast(?*String, stringUtil.?.EMPTY_STRING);
        const attributeKeys: []?Object = Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.fieldPointer(self, "otherAttributes").*.?, "keySet").keySet().?, "toArray").toArray();
        const attributeSize: i32 = @as(i32, @intCast(attributeKeys.len));
        result = self.before;
        result = String.plus(result, self.STARTINPUT);
        result = String.plus(result, self.TYPE);
        result = String.plus(result, self.@"type");
        result = String.plus(result, String.literal("\" "));
        result = String.plus(result, self.NAME);
        result = String.plus(result, self.name);
        result = String.plus(result, String.literal("\" "));
        {
            var i: i32 = 0;
            while (i < attributeSize) : (i += 1) {
            const key: ?*String = Inheritance.cast(?*String, attributeKeys[@intCast(i)]);
            const value: ?*String = Inheritance.cast(?*String, Inheritance.call(Inheritance.fieldPointer(self, "otherAttributes").*.?, "get", .{ key }));
            if (value != null and Inheritance.call(value.?, "compareTo", .{ stringUtil.?.EMPTY_STRING }) != 0) {
                result = String.plus(result, key);
                result = String.plus(result, String.literal("=\""));
                result = String.plus(result, value);
                result = String.plus(result, String.literal("\" "));
            }
            }
        }
        result = String.plus(result, self.END);
        result = String.plus(result, self.ENDINPUT);
        result = String.plus(result, self.after);
        return result;
    }
};


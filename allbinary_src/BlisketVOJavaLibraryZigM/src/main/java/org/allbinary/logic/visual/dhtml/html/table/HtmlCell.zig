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
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const HtmlTag = @import("org/allbinary/logic/visual/dhtml/html/HtmlTag.zig").HtmlTag;

pub const HtmlCell = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.html.table.HtmlCell";
    base: HtmlTag = undefined,
    END: ?*String = null,
    START: ?*String = null,
    ENDTAG: ?*String = null,
    HEIGHT: ?*String = null,
    WIDTH: ?*String = null,
    height: ?*String = null,
    width: ?*String = null,
    before: ?*String = null,
    body: ?*String = null,
    after: ?*String = null,

    fn initFields(this: *Self) void {
        this.END = String.literal(">");
        this.START = String.literal("<td ");
        this.ENDTAG = String.literal("</td>");
        this.HEIGHT = String.literal("height");
        this.WIDTH = String.literal("width");
        
        
        
        this.body = null;
        
    }
    

    pub fn create4(before: ?*String, width: ?*String, height: ?*String, after: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = HtmlTag.create().*;
        this.initFields();
        this.before = Inheritance.callStatic(String, "create1", .{ before });
        this.after = Inheritance.callStatic(String, "create1", .{ after });
        this.height = Inheritance.callStatic(String, "create1", .{ height });
        this.width = Inheritance.callStatic(String, "create1", .{ width });
        _ = Inheritance.call(this, "addAttribute", .{ this.HEIGHT, this.height });
        _ = Inheritance.call(this, "addAttribute", .{ this.WIDTH, this.width });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn addText(self: *Self, body: ?*String) void {
        self.body = body;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        var result: ?*String = Inheritance.upcast(?*String, stringUtil.?.EMPTY_STRING);
        const attributeKeys: []?Object = Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.fieldPointer(self, "otherAttributes").*.?, "keySet").keySet().?, "toArray").toArray();
        const attributeSize: i32 = @as(i32, @intCast(attributeKeys.len));
        result = self.before;
        result = String.plus(result, self.START);
        result = String.plus(result, String.literal(" "));
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
        result = String.plus(result, self.body);
        result = String.plus(result, self.ENDTAG);
        result = String.plus(result, self.after);
        return result;
    }
};


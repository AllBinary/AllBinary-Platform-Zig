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
// package org.allbinary.logic.visual.dhtml.html

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const HtmlInput = @import("org/allbinary/logic/visual/dhtml/html/input/HtmlInput.zig").HtmlInput;
const HtmlTable = @import("org/allbinary/logic/visual/dhtml/html/table/HtmlTable.zig").HtmlTable;

pub const HtmlForm = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.html.HtmlForm";
    FORMBEGIN: ?*String = null,
    END: ?*String = null,
    FORMEND: ?*String = null,
    ACTION: ?*String = null,
    GET: ?*String = null,
    POST: ?*String = null,
    METHODS: []?*String = &.{},
    METHOD: ?*String = null,
    method: ?*String = null,
    action: ?*String = null,
    inputs: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.FORMBEGIN = String.literal("<form ");
        this.END = String.literal(">");
        this.FORMEND = String.literal("</form>");
        this.ACTION = String.literal("ACTION=\"");
        this.GET = String.literal("GET\"");
        this.POST = String.literal("POST\"");
        this.METHODS = @constCast(&[_]?*String{ this.GET, this.POST })[0..];
        this.METHOD = String.literal("METHOD=\"");
        this.method = null;
        
        
    }
    

    pub fn create1(action: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.action = action;
        this.inputs = Inheritance.upcast(@TypeOf(this.inputs), BasicArrayListD.create());
        return this;
    }
    

    pub fn setPost(self: *Self) void {
        self.method = self.POST;
    }
    

    pub fn setGet(self: *Self) void {
        self.method = self.GET;
    }
    

    pub fn addInput(self: *Self, htmlInput: ?*HtmlInput) void {
        _ = Inheritance.call(self.inputs.?, "add", .{ htmlInput });
    }
    

    pub fn addTable(self: *Self, htmlTable: ?*HtmlTable) void {
        _ = Inheritance.call(self.inputs.?, "add", .{ htmlTable });
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        var result: ?*String = Inheritance.upcast(?*String, stringUtil.?.EMPTY_STRING);
        const inputArray: []?Object = self.inputs.?.toArray();
        const inputSize: i32 = @as(i32, @intCast(inputArray.len));
        result = self.FORMBEGIN;
        result = String.plus(result, self.METHOD);
        result = String.plus(result, self.method);
        result = String.plus(result, String.literal("\" "));
        result = String.plus(result, self.ACTION);
        result = String.plus(result, self.action);
        result = String.plus(result, String.literal("\" "));
        result = String.plus(result, self.END);
        {
            var i: i32 = 0;
            while (i < inputSize) : (i += 1) {
            result = String.plus(result, Object.toString(Object.of(inputArray[@intCast(i)])));
            result = String.plus(result, String.literal(" "));
            }
        }
        result = String.plus(result, self.FORMEND);
        return result;
    }
};


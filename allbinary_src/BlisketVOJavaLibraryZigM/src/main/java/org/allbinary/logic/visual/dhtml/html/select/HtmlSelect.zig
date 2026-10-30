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
// package org.allbinary.logic.visual.dhtml.html.select

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LineReader = @import("org/allbinary/logic/io/LineReader.zig").LineReader;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const HtmlTag = @import("org/allbinary/logic/visual/dhtml/html/HtmlTag.zig").HtmlTag;

pub const HtmlSelect = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.html.select.HtmlSelect";
    base: HtmlTag = undefined,
    END: ?*String = null,
    STARTSELECT: ?*String = null,
    ENDSELECT: ?*String = null,
    SIZE: ?*String = null,
    NAME: ?*String = null,
    STARTOPTION: ?*String = null,
    SELETED: ?*String = null,
    ENDOPTION: ?*String = null,
    before: ?*String = null,
    name: ?*String = null,
    after: ?*String = null,
    size: ?*String = null,
    selected: ?*String = null,
    options: ?*BasicArrayList = null,
    multiple: ?*String = null,
    isMultipleSelect: bool = false,

    fn initFields(this: *Self) void {
        this.END = String.literal(">");
        this.STARTSELECT = String.literal("<SELECT ");
        this.ENDSELECT = String.literal("</SELECT>");
        this.SIZE = String.literal("SIZE=\"");
        this.NAME = String.literal("NAME=\"");
        this.STARTOPTION = String.literal("<OPTION");
        this.SELETED = String.literal("SELECTED");
        this.ENDOPTION = String.literal("</OPTION>");
        
        
        
        
        this.selected = null;
        
        this.multiple = String.literal("multiple");
        this.isMultipleSelect = false;
    }
    

    pub fn create4(before: ?*String, size: ?*String, name: ?*String, after: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = HtmlTag.create().*;
        this.initFields();
        this.before = before;
        this.size = size;
        this.name = name;
        this.after = after;
        this.options = Inheritance.upcast(@TypeOf(this.options), BasicArrayListD.create());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn addOption(self: *Self, key: ?*String) void {
        _ = Inheritance.call(self.options.?, "add", .{ key });
    }
    

    pub fn addOptions(self: *Self, fileName: ?*String) void {
        { // try
            const lineReader: ?*LineReader = Inheritance.callStatic(LineReader, "create1", .{ fileName });
            while (lineReader.?.hasNext()) {
                const option: ?*String = Inheritance.upcast(?*String, lineReader.?.next());
                _ = Inheritance.call(self, "addOption", .{ option });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self, "addOption", .{ String.literal("Error") });
    }
    

    pub fn setSelected(self: *Self, selected: ?*String) void {
        self.selected = selected;
    }
    

    pub fn isMultiple(self: *Self) bool {
        return self.isMultipleSelect;
    }
    

    pub fn setMultiple(self: *Self, value: bool) void {
        self.isMultipleSelect = value;
    }
    

    pub fn getOptions(self: *Self) ?*String {
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        var result: ?*String = Inheritance.upcast(?*String, stringUtil.?.EMPTY_STRING);
        const optionsArray: []?Object = self.options.?.toArray();
        const optionsSize: i32 = @as(i32, @intCast(optionsArray.len));
        {
            var i: i32 = 0;
            while (i < optionsSize) : (i += 1) {
            const value: ?*String = Inheritance.cast(?*String, optionsArray[@intCast(i)]);
            if (value != null and Inheritance.call(value.?, "compareTo", .{ stringUtil.?.EMPTY_STRING }) != 0) {
                result = String.plus(result, self.STARTOPTION);
                result = String.plus(result, self.END);
                result = String.plus(result, value);
                result = String.plus(result, self.ENDOPTION);
            }
            }
        }
        return result;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        var result: ?*String = Inheritance.upcast(?*String, stringUtil.?.EMPTY_STRING);
        const attributeKeys: []?Object = Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.fieldPointer(self, "otherAttributes").*.?, "keySet").keySet().?, "toArray").toArray();
        const attributeSize: i32 = @as(i32, @intCast(attributeKeys.len));
        result = self.before;
        result = String.plus(result, self.STARTSELECT);
        result = String.plus(result, self.NAME);
        result = String.plus(result, self.name);
        result = String.plus(result, String.literal("\" "));
        result = String.plus(result, self.SIZE);
        result = String.plus(result, self.size);
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
        if (self.isMultiple()) {
            result = String.plus(result, String.plus(String.plus(String.literal(" "), self.multiple), String.literal(" ")));
        }
        result = String.plus(result, self.END);
        result = String.plus(result, self.getOptions());
        result = String.plus(result, self.ENDSELECT);
        result = String.plus(result, self.after);
        return result;
    }
};


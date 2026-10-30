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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const HtmlTag = @import("org/allbinary/logic/visual/dhtml/html/HtmlTag.zig").HtmlTag;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const HtmlRow = @import("org/allbinary/logic/visual/dhtml/html/table/HtmlRow.zig").HtmlRow;

pub const HtmlTable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.html.table.HtmlTable";
    base: HtmlTag = undefined,
    END: ?*String = null,
    START: ?*String = null,
    ENDTAG: ?*String = null,
    CLASS: ?*String = null,
    DIRECTION: ?*String = null,
    ID: ?*String = null,
    LANG: ?*String = null,
    UNITS: ?*String = null,
    BORDER: ?*String = null,
    CELLPADDING: ?*String = null,
    CELLSPACING: ?*String = null,
    COLS: ?*String = null,
    FLOAT: ?*String = null,
    FRAME: ?*String = null,
    RULES: ?*String = null,
    STYLE: ?*String = null,
    BORDERCOLLAPSE: ?*String = null,
    numberOfColumns: i32 = 0,
    before: ?*String = null,
    border: ?*String = null,
    cellpadding: ?*String = null,
    cellspacing: ?*String = null,
    style: ?*String = null,
    name: ?*String = null,
    after: ?*String = null,
    htmlRowsVector: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.END = String.literal(">");
        this.START = String.literal("<table ");
        this.ENDTAG = String.literal("</table>");
        this.CLASS = String.literal("class");
        this.DIRECTION = String.literal("dir");
        this.ID = String.literal("id");
        this.LANG = String.literal("lang");
        this.UNITS = String.literal("units");
        this.BORDER = String.literal("border");
        this.CELLPADDING = String.literal("cellpadding");
        this.CELLSPACING = String.literal("cellspacing");
        this.COLS = String.literal("cols");
        this.FLOAT = String.literal("float");
        this.FRAME = String.literal("frame");
        this.RULES = String.literal("rules");
        this.STYLE = String.literal("style");
        this.BORDERCOLLAPSE = String.literal("border-collapse: collapse");
        this.numberOfColumns = 0;
        
        this.border = null;
        
        
        this.style = null;
        this.name = null;
        
        
    }
    

    pub fn create4(before: ?*String, cellpadding: ?*String, cellspacing: ?*String, after: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = HtmlTag.create().*;
        this.initFields();
        this.before = before;
        this.cellpadding = cellpadding;
        this.cellspacing = cellspacing;
        this.after = after;
        this.htmlRowsVector = Inheritance.upcast(@TypeOf(this.htmlRowsVector), BasicArrayListD.create());
        _ = Inheritance.call(this, "addAttribute", .{ this.BORDER, CommonPhoneStrings.getInstance().?.ZERO });
        _ = Inheritance.call(this, "addAttribute", .{ this.CELLPADDING, this.cellpadding });
        _ = Inheritance.call(this, "addAttribute", .{ this.CELLSPACING, this.cellspacing });
        _ = Inheritance.call(this, "addAttribute", .{ this.STYLE, this.BORDERCOLLAPSE });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn addRow(self: *Self, htmlRow: ?*HtmlRow) void {
        if (self.numberOfColumns < Inheritance.receiver(htmlRow.?, "getNumberOfColumns").getNumberOfColumns()) {
            self.numberOfColumns = Inheritance.receiver(htmlRow.?, "getNumberOfColumns").getNumberOfColumns();
        }
        _ = Inheritance.call(self.htmlRowsVector.?, "add", .{ htmlRow });
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        var result: ?*String = Inheritance.upcast(?*String, stringUtil.?.EMPTY_STRING);
        const attributeKeys: []?Object = Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.fieldPointer(self, "otherAttributes").*.?, "keySet").keySet().?, "toArray").toArray();
        result = self.before;
        result = String.plus(result, self.START);
        result = String.plus(result, String.literal(" "));
        {
            var i: i32 = 0;
            while (i < @as(i32, @intCast(attributeKeys.len))) : (i += 1) {
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
        const size: i32 = self.htmlRowsVector.?.size();
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            result = String.plus(result, Object.toString(Object.of(Inheritance.call(self.htmlRowsVector.?, "get", .{ i }))));
            result = String.plus(result, String.literal(" "));
            }
        }
        result = String.plus(result, self.ENDTAG);
        result = String.plus(result, self.after);
        return result;
    }
};


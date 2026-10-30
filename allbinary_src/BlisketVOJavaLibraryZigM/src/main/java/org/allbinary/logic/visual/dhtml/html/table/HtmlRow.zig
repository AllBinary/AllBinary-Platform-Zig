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
const HtmlCell = @import("org/allbinary/logic/visual/dhtml/html/table/HtmlCell.zig").HtmlCell;

pub const HtmlRow = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.html.table.HtmlRow";
    base: HtmlTag = undefined,
    END: ?*String = null,
    START: ?*String = null,
    ENDTAG: ?*String = null,
    numberOfColumns: i32 = 0,
    before: ?*String = null,
    after: ?*String = null,
    htmlCellsVector: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.END = String.literal(">");
        this.START = String.literal("<tr ");
        this.ENDTAG = String.literal("</tr>");
        this.numberOfColumns = 0;
        
        
        
    }
    

    pub fn create2(before: ?*String, after: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = HtmlTag.create().*;
        this.initFields();
        this.before = Inheritance.callStatic(String, "create1", .{ before });
        this.after = Inheritance.callStatic(String, "create1", .{ after });
        this.htmlCellsVector = Inheritance.upcast(@TypeOf(this.htmlCellsVector), BasicArrayListD.create());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn addCell(self: *Self, htmlCell: ?*HtmlCell) void {
        _ = Inheritance.call(self.htmlCellsVector.?, "add", .{ htmlCell });
        self.numberOfColumns += 1;
    }
    

    pub fn getNumberOfColumns(self: *Self) i32 {
        return self.numberOfColumns;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        var result: ?*String = Inheritance.upcast(?*String, stringUtil.?.EMPTY_STRING);
        const attributeKeys: []?Object = Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.fieldPointer(self, "otherAttributes").*.?, "keySet").keySet().?, "toArray").toArray();
        const attributeSize: i32 = @as(i32, @intCast(attributeKeys.len));
        const cellSize: i32 = self.htmlCellsVector.?.size();
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
        {
            var i: i32 = 0;
            while (i < cellSize) : (i += 1) {
            result = String.plus(result, Object.toString(Object.of(Inheritance.call(self.htmlCellsVector.?, "get", .{ i }))));
            result = String.plus(result, String.literal(" "));
            }
        }
        result = String.plus(result, self.ENDTAG);
        result = String.plus(result, self.after);
        return result;
    }
};


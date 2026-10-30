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
// package org.allbinary.logic.control.search

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const ToDomHelper = @import("org/allbinary/data/tree/dom/ToDomHelper.zig").ToDomHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const SearchData = @import("org/allbinary/logic/control/search/SearchData.zig").SearchData;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const SearchParams = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.search.SearchParams";
    columnsAndSearchValues: ?*HashMap = null,
    order: ?*String = null,
    sortBy: ?*String = null,
    listLength: ?*String = null,
    startPage: ?*String = null,
    endPage: ?*String = null,

    fn initFields(this: *Self) void {
        
        this.order = null;
        this.sortBy = null;
        this.listLength = null;
        this.startPage = null;
        this.endPage = null;
    }
    

    pub fn create1(request: ?*HttpServletRequest) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.columnsAndSearchValues = Inheritance.upcast(@TypeOf(this.columnsAndSearchValues), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(this, "setLength", .{ Inheritance.call(request.?, "getParameter", .{ SearchData.LENGTH }) });
        _ = Inheritance.call(this, "setOrder", .{ Inheritance.call(request.?, "getParameter", .{ SearchData.ORDER }) });
        const page: ?*String = Inheritance.upcast(?*String, Inheritance.call(request.?, "getParameter", .{ SearchData.PAGE }));
        _ = Inheritance.call(this, "setStartPage", .{ page });
        _ = Inheritance.call(this, "setEndPage", .{ page });
        _ = Inheritance.call(this, "setSortBy", .{ Inheritance.call(request.?, "getParameter", .{ SearchData.SORTBY }) });
        var index: i32 = 0;
        var columnName: ?*String = Inheritance.upcast(?*String, Inheritance.call(request.?, "getParameter", .{ String.plus(SearchData.COLUMNNAME, String.literal("[0]")) }));
        var columnValue: ?*String = Inheritance.upcast(?*String, Inheritance.call(request.?, "getParameter", .{ String.plus(SearchData.COLUMNVALUE, String.literal("[0]")) }));
        while (columnName != null) {
            _ = Inheritance.call(this, "add", .{ columnName, columnValue });
            index += 1;
            columnName = Inheritance.upcast(@TypeOf(columnName), Inheritance.call(request.?, "getParameter", .{ String.plus(String.plus(String.plus(SearchData.COLUMNNAME, String.literal("[")), index), String.literal("]")) }));
            columnValue = Inheritance.upcast(@TypeOf(columnValue), Inheritance.call(request.?, "getParameter", .{ String.plus(String.plus(String.plus(SearchData.COLUMNVALUE, String.literal("[")), index), String.literal("]")) }));
        }
        return this;
    }
    

    pub fn add(self: *Self, column: ?*String, value: ?*String) void {
        _ = Inheritance.call(self.columnsAndSearchValues.?, "put", .{ column, value });
    }
    

    pub fn setOrder(self: *Self, value: ?*String) void {
        self.order = value;
    }
    

    pub fn setSortBy(self: *Self, value: ?*String) void {
        self.sortBy = value;
    }
    

    pub fn setLength(self: *Self, value: ?*String) void {
        self.listLength = value;
    }
    

    pub fn setStartPage(self: *Self, value: ?*String) void {
        self.startPage = value;
    }
    

    pub fn setEndPage(self: *Self, value: ?*String) void {
        self.endPage = value;
    }
    

    pub fn get(self: *Self) ?*HashMap {
        return self.columnsAndSearchValues;
    }
    

    pub fn getOrder(self: *Self) ?*String {
        return self.order;
    }
    

    pub fn getSortBy(self: *Self) ?*String {
        return self.sortBy;
    }
    

    pub fn getLength(self: *Self) ?*String {
        return self.listLength;
    }
    

    pub fn getLengthInt(self: *Self) ?*Integer {
        if (self.listLength != null) {
            return Inheritance.callStatic(Integer, "create1", .{ self.listLength });
        } else {
            return Inheritance.callStatic(Integer, "create1", .{ 0 });
        }
    }
    

    pub fn getStartPage(self: *Self) ?*String {
        return self.startPage;
    }
    

    pub fn getEndPage(self: *Self) ?*String {
        return self.endPage;
    }
    

    pub fn getStartPageInt(self: *Self) ?*Integer {
        if (self.startPage != null) {
            return Inheritance.callStatic(Integer, "create1", .{ self.startPage });
        } else {
            return Inheritance.callStatic(Integer, "create1", .{ 0 });
        }
    }
    

    pub fn getEndPageInt(self: *Self) ?*Integer {
        if (self.endPage != null) {
            return Inheritance.callStatic(Integer, "create1", .{ self.endPage });
        } else {
            return Inheritance.callStatic(Integer, "create1", .{ 0 });
        }
    }
    

    // throws Exception
    pub fn getParamsNode(self: *Self, document: ?*Document) ?*Node {
        const paramsNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, SearchData.PARAMS, SearchData.PARAMS }));
        _ = Inheritance.call(paramsNode.?, "appendChild", .{ Inheritance.call(self, "getFieldsNode", .{ document }) });
        _ = Inheritance.call(paramsNode.?, "appendChild", .{ Inheritance.call(self, "getOrderNode", .{ document }) });
        _ = Inheritance.call(paramsNode.?, "appendChild", .{ Inheritance.call(self, "getSortByNode", .{ document }) });
        _ = Inheritance.call(paramsNode.?, "appendChild", .{ Inheritance.call(self, "getLengthNode", .{ document }) });
        return paramsNode;
    }
    

    // throws Exception
    pub fn getFieldsNode(self: *Self, document: ?*Document) ?*Node {
        const fieldsNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, SearchData.FIELDS, String.valueOf(Inheritance.callStatic(Integer, "create1", .{ self.columnsAndSearchValues.?.size() }).?) }));
        const set: ?*Set = Inheritance.upcast(?*Set, self.columnsAndSearchValues.?.keySet());
        const searchValueArray: []?Object = set.?.toArray();
        const size: i32 = @as(i32, @intCast(searchValueArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const key: ?*String = Inheritance.cast(?*String, searchValueArray[@intCast(index)]);
            const searchValue: ?*String = Inheritance.cast(?*String, Inheritance.call(self.columnsAndSearchValues.?, "get", .{ key }));
            _ = Inheritance.call(fieldsNode.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, SearchData.FIELD, key, Inheritance.callStatic(ToDomHelper, "convertNull", .{ searchValue }) }) });
            }
        }
        return fieldsNode;
    }
    

    // throws Exception
    pub fn getOrderNode(self: *Self, document: ?*Document) ?*Node {
        return Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, SearchData.ORDER, Inheritance.callStatic(ToDomHelper, "convertNull", .{ self.getOrder() }) }));
    }
    

    // throws Exception
    pub fn getSortByNode(self: *Self, document: ?*Document) ?*Node {
        return Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, SearchData.SORTBY, Inheritance.callStatic(ToDomHelper, "convertNull", .{ self.getSortBy() }) }));
    }
    

    // throws Exception
    pub fn getLengthNode(self: *Self, document: ?*Document) ?*Node {
        return Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, SearchData.LENGTH, Inheritance.callStatic(ToDomHelper, "convertNull", .{ self.getLength() }) }));
    }
};


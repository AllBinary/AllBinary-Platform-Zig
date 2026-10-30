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
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const FREEBLISKET_PATH_GLOBALS = @import("org/allbinary/globals/FREEBLISKET_PATH_GLOBALS.zig").FREEBLISKET_PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const SearchData = @import("org/allbinary/logic/control/search/SearchData.zig").SearchData;
const SearchParams = @import("org/allbinary/logic/control/search/SearchParams.zig").SearchParams;

pub const TableSearchRequest = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.search.TableSearchRequest";
    xslFile: ?*String = null,
    pageName: ?*String = null,
    contentType: ?*String = null,
    keywords: ?*String = null,
    searchParams: ?*SearchParams = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
    }
    

    pub fn create4(keywords: ?*String, searchParams: ?*SearchParams, xslFile: ?*String, contentType: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.keywords = keywords;
        this.searchParams = searchParams;
        this.xslFile = xslFile;
        this.pageName = this.pageName;
        this.contentType = contentType;
        return this;
    }
    

    pub fn setKeywords(self: *Self, value: ?*String) void {
        self.keywords = value;
    }
    

    pub fn setParams(self: *Self, searchParams: ?*SearchParams) void {
        self.searchParams = searchParams;
    }
    

    pub fn setXslFile(self: *Self, value: ?*String) void {
        self.xslFile = value;
    }
    

    pub fn setFileBaseName(self: *Self, value: ?*String) void {
        self.pageName = value;
    }
    

    pub fn setContentType(self: *Self, value: ?*String) void {
        self.contentType = value;
    }
    

    pub fn getKeywords(self: *Self) ?*String {
        return self.keywords;
    }
    

    pub fn getParams(self: *Self) ?*SearchParams {
        return self.searchParams;
    }
    

    // throws Exception
    pub fn getXslFile(self: *Self) ?*String {
        const path: ?*String = Inheritance.upcast(?*String, String.plus(URLGLOBALS.getMainPath() + FREEBLISKET_PATH_GLOBALS.getInstance().?.XSLPATH, self.xslFile));
        return path;
    }
    

    pub fn getFileBaseName(self: *Self) ?*String {
        return self.pageName;
    }
    

    pub fn getContentType(self: *Self) ?*String {
        return self.contentType;
    }
    

    // throws Exception
    pub fn getFileBaseNameNode(self: *Self, document: ?*Document) ?*Node {
        return Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, SearchData.FILENAME, self.getFileBaseName() }));
    }
};


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
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const AbContext = @import("org/allbinary/business/context/AbContext.zig").AbContext;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const SearchData = @import("org/allbinary/logic/control/search/SearchData.zig").SearchData;
const SearchParams = @import("org/allbinary/logic/control/search/SearchParams.zig").SearchParams;

pub const SearchRequest = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.search.SearchRequest";
    base: AbContext = undefined,
    xslFile: ?*String = null,
    pageName: ?*String = null,
    contentType: ?*String = null,
    searchParams: ?*SearchParams = null,
    storeFront: ?*StoreFrontInterface = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
    }
    

    pub fn create6(storeFront: ?*StoreFrontInterface, searchParams: ?*SearchParams, xslFile: ?*String, contentType: ?*String, propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbContext, "create2", .{ propertiesHashMap, pageContext }).*;
        this.initFields();
        this.storeFront = storeFront;
        this.searchParams = searchParams;
        this.xslFile = xslFile;
        this.pageName = this.pageName;
        this.contentType = contentType;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setStoreFront(self: *Self, storeFront: ?*StoreFrontInterface) void {
        self.storeFront = storeFront;
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
    

    pub fn getStoreFront(self: *Self) ?*StoreFrontInterface {
        return self.storeFront;
    }
    

    pub fn getParams(self: *Self) ?*SearchParams {
        return self.searchParams;
    }
    

    pub fn getXslFile(self: *Self) ?*String {
        return self.xslFile;
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


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

pub const SearchData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.search.SearchData";
    pub const TOTAL_NUMBER_PAGES: ?*String = String.literal("SEARCHDATA_TOTALNUMBEROFPAGES");
    pub const TOTAL_NUMBER_ITEMS_ON_THIS_PAGE: ?*String = String.literal("SEARCHDATA_TOTALNUMBEROFITEMSONTHISPAGE");
    pub const TOTAL_NUMBER_ITEMS: ?*String = String.literal("SEARCHDATA_TOTALNUMBEROFITEMS");
    pub const DEFAULT_PAGE_LENGTH: i32 = 10;
    pub const GENERATESTATICPAGES: ?*String = String.literal("Generate Static Pages");
    pub const SEARCHBYSUMMARY: ?*String = String.literal("Search By Summary");
    pub const SEARCHBYDESCRIPTION: ?*String = String.literal("Search By Description");
    pub const SEARCHBYCATEGORY: ?*String = String.literal("Search By Category");
    pub const SEARCHCATEGORIES: ?*String = String.literal("Search Categories");
    pub const FILENAME: ?*String = String.literal("SEARCHDATA_BASEFILENAME");
    pub const COLUMNNAME: ?*String = String.literal("COLUMN_NAME");
    pub const COLUMNVALUE: ?*String = String.literal("COLUMN_VALUE");
    pub const PARAMS: ?*String = String.literal("SEARCHDATA_PARAMS");
    pub const LENGTH: ?*String = String.literal("SEARCHDATA_LENGTH");
    pub const ORDER: ?*String = String.literal("SEARCHDATA_ORDER");
    pub const PAGE: ?*String = String.literal("SEARCHDATA_PAGE");
    pub const FIELDS: ?*String = String.literal("SEARCHDATA_FIELDS");
    pub const FIELD: ?*String = String.literal("SEARCHDATA_FIELD");
    pub const SORTBY: ?*String = String.literal("SEARCHDATA_SORTBY");
    pub const TYPE: ?*String = String.literal("SEARCHDATA_TYPE");
    pub const PAGE_INFO: ?*String = String.literal("pageInfo");
    pub const SEARCH: ?*String = String.literal("search");
    pub const MAKEPUBLIC: ?*String = String.literal("Make Public");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};


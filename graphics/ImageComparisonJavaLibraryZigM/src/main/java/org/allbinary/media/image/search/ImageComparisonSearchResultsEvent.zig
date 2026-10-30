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
// package org.allbinary.media.image.search

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const ImageComparisonSearch = @import("org/allbinary/media/image/search/ImageComparisonSearch.zig").ImageComparisonSearch;

pub const ImageComparisonSearchResultsEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.search.ImageComparisonSearchResultsEvent";
    base: AllBinaryEventObject = undefined,
    imageComparisonSearch: ?*ImageComparisonSearch = null,

    fn initFields(this: *Self) void {
        this.imageComparisonSearch = null;
    }
    

    pub fn create2(anyType: ?Object, imageComparisonSearch: ?*ImageComparisonSearch) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ anyType }).*;
        this.initFields();
        _ = Inheritance.call(this, "setImageComparisonSearch", .{ imageComparisonSearch });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getImageComparisonSearch(self: *Self) ?*ImageComparisonSearch {
        return self.imageComparisonSearch;
    }
    

    pub fn setImageComparisonSearch(self: *Self, imageComparisonSearch: ?*ImageComparisonSearch) void {
        self.imageComparisonSearch = imageComparisonSearch;
    }
};


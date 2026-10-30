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
const HtmlTag = @import("org/allbinary/logic/visual/dhtml/html/HtmlTag.zig").HtmlTag;

pub const HtmlTags = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.dhtml.html.HtmlTags";
    htmlTagVector: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.htmlTagVector = Inheritance.upcast(@TypeOf(this.htmlTagVector), BasicArrayListD.create());
        return this;
    }
    

    pub fn get(self: *Self, index: i32) ?*HtmlTag {
        return Inheritance.cast(?*HtmlTag, Inheritance.call(self.htmlTagVector.?, "get", .{ index }));
    }
    

    pub fn add(self: *Self, htmlTag: ?*HtmlTag) void {
        _ = Inheritance.call(self.htmlTagVector.?, "add", .{ htmlTag });
    }
    

    pub fn size(self: *Self) i32 {
        return self.htmlTagVector.?.size();
    }
};


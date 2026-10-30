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
// package org.allbinary.business.quoterequest

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const QuoteRequestData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.quoterequest.QuoteRequestData";
    ID: ?*String = null,
    PROJECT_INFO: ?*String = null,
    CUSTOMER_COMMENTS: ?*String = null,
    BUDGET: ?*String = null,
    TIMEFRAME: ?*String = null,
    COMMENTS: ?*String = null,
    var instance: ?*QuoteRequestData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = QuoteRequestData.create();
    }

    fn initFields(this: *Self) void {
        this.ID = String.literal("QUOTEREQUEST_ID");
        this.PROJECT_INFO = String.literal("QUOTEREQUEST_PROJECT_INFO");
        this.CUSTOMER_COMMENTS = String.literal("QUOTEREQUEST_CUSTOMER_COMMENTS");
        this.BUDGET = String.literal("QUOTEREQUEST_BUDGET");
        this.TIMEFRAME = String.literal("QUOTEREQUEST_TIMEFRAME");
        this.COMMENTS = String.literal("QUOTEREQUEST_COMMENTS");
    }
    

    pub fn getInstance() ?*QuoteRequestData {
        return Inheritance.upcast(?*QuoteRequestData, QuoteRequestData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};


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
// package org.allbinary.data.tables

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const TableDataFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.TableDataFactory";
    INTEGER_MAX_VALUE_STRING: ?*String = null,
    ZERO_STRING: ?*String = null,
    var instance: ?*TableDataFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TableDataFactory.create();
    }

    fn initFields(this: *Self) void {
        this.INTEGER_MAX_VALUE_STRING = Inheritance.upcast(?*String, String.valueOf(@as(i32, std.math.maxInt(i32))));
        this.ZERO_STRING = Inheritance.upcast(?*String, CommonPhoneStrings.getInstance().?.ZERO);
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*TableDataFactory {
        return Inheritance.upcast(?*TableDataFactory, TableDataFactory.instance);
    }
};


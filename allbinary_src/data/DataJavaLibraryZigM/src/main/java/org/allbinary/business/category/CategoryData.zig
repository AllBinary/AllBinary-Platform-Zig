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
// package org.allbinary.business.category

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CommonDataFileStrings = @import("org/allbinary/logic/io/file/CommonDataFileStrings.zig").CommonDataFileStrings;

pub const CategoryData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.CategoryData";
    PARENT: ?*String = null,
    NAME: ?*String = null,
    PATH: ?*String = null,
    LABEL: ?*String = null,
    VIEW: ?*String = null,
    LEVEL: ?*String = null,
    REQUEST: ?*String = null,
    ROOTCATEGORY: ?*String = null,
    UNCRYPTED_EXTENSION: ?*String = null,
    ENCRYPTED_EXTENSION: ?*String = null,
    var instance: ?*CategoryData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CategoryData.create();
    }

    fn initFields(this: *Self) void {
        this.PARENT = String.literal("CATEGORY_PARENT");
        this.NAME = String.literal("CATEGORY_NAME");
        this.PATH = String.literal("CATEGORY_PATH");
        this.LABEL = String.literal("CATEGORY_LABEL");
        this.VIEW = String.literal("CATEGORY_VIEW_CATEGORY");
        this.LEVEL = String.literal("CATEGORY_LEVEL");
        this.REQUEST = String.literal("request");
        this.ROOTCATEGORY = String.literal("Category");
        this.UNCRYPTED_EXTENSION = Inheritance.upcast(?*String, CommonDataFileStrings.getInstance().?.UNCRYPTED_EXTENSION);
        this.ENCRYPTED_EXTENSION = Inheritance.upcast(?*String, CommonDataFileStrings.getInstance().?.ENCRYPTED_EXTENSION);
    }
    

    pub fn getInstance() ?*CategoryData {
        return Inheritance.upcast(?*CategoryData, CategoryData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};


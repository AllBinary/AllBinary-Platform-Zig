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
// package org.allbinary.business.category.hierarchy

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const CategoryData = @import("org/allbinary/business/category/CategoryData.zig").CategoryData;
const CategoryInterface = @import("org/allbinary/business/category/CategoryInterface.zig").CategoryInterface;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CategoryHierarchyInterface = @import("org/allbinary/business/category/hierarchy/CategoryHierarchyInterface.zig").CategoryHierarchyInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const CategoryHierarchy = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.hierarchy.CategoryHierarchy";
    pub const java_interfaces = .{ CategoryHierarchyInterface };
    rootCategoryInterface: ?*CategoryInterface = null,
    parentCategoryInterface: ?*CategoryInterface = null,
    level: i32 = 0,
    // Implements CategoryHierarchyInterface

    fn initFields(this: *Self) void {
        this.rootCategoryInterface = null;
        this.parentCategoryInterface = null;
        
    }
    

    pub fn create2(rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.level = 0;
        _ = Inheritance.call(this, "setRoot", .{ rootCategoryInterface });
        _ = Inheritance.call(this, "setParent", .{ parentCategoryInterface });
        return this;
    }
    

    pub fn create3(rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface, level: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.level = level;
        _ = Inheritance.call(this, "setRoot", .{ rootCategoryInterface });
        _ = Inheritance.call(this, "setParent", .{ parentCategoryInterface });
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create3(rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface, categoryPropertiesHashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const levelString: ?*String = Inheritance.upcast(?*String, Inheritance.call(StringUtil.getInstance().?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(categoryPropertiesHashMap.?, "get", .{ CategoryData.getInstance().?.LEVEL })) }));
        this.level = Inheritance.receiverOf(Inheritance.callStatic(Integer, "valueOf", .{ levelString }).?, "intValue").intValue();
        _ = Inheritance.call(this, "setRoot", .{ rootCategoryInterface });
        _ = Inheritance.call(this, "setParent", .{ parentCategoryInterface });
        return this;
    }
    

    pub fn getLevel(self: *Self) i32 {
        return self.level;
    }
    

    pub fn getLevelString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, String.valueOf(self.level));
    }
    

    pub fn setLevel(self: *Self, level: i32) void {
        self.level = level;
    }
    

    pub fn setParent(self: *Self, categoryInterface: ?*CategoryInterface) void {
        self.parentCategoryInterface = categoryInterface;
    }
    

    pub fn setRoot(self: *Self, categoryInterface: ?*CategoryInterface) void {
        self.rootCategoryInterface = categoryInterface;
    }
    

    pub fn getRoot(self: *Self) ?*CategoryInterface {
        return self.rootCategoryInterface;
    }
    

    pub fn getParent(self: *Self) ?*CategoryInterface {
        return self.parentCategoryInterface;
    }
};


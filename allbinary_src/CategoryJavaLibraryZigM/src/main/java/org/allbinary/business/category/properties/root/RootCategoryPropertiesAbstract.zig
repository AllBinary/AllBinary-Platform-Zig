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
// package org.allbinary.business.category.properties.root

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const CategoryData = @import("org/allbinary/business/category/CategoryData.zig").CategoryData;
const CategoryHierarchyInterface = @import("org/allbinary/business/category/hierarchy/CategoryHierarchyInterface.zig").CategoryHierarchyInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const RootCategoryPropertiesInterface = @import("org/allbinary/business/category/properties/root/RootCategoryPropertiesInterface.zig").RootCategoryPropertiesInterface;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const RootCategoryPropertiesAbstract = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.properties.root.RootCategoryPropertiesAbstract";
    pub const java_interfaces = .{ RootCategoryPropertiesInterface };
    category: ?*String = null,
    fileName: ?*String = null,
    // Implements RootCategoryPropertiesInterface

    fn initFields(this: *Self) void {
        this.category = Inheritance.upcast(?*String, CategoryData.getInstance().?.ROOTCATEGORY);
        this.fileName = Inheritance.upcast(?*String, String.plus(String.plus(this.category, AbPathData.getInstance().?.EXTENSION_SEP), CategoryData.getInstance().?.UNCRYPTED_EXTENSION));
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getKey(self: *Self) ?Object {
        return Inheritance.cast(?Object, self.getValue());
    }
    

    pub fn getValue(self: *Self) ?*String {
        return self.category;
    }
    

    // throws Exception
    pub fn setValue(self: *Self, value: ?*String) void {
        _ = value;
        _ = self;
        std.debug.panic("{any}", .{exception: { _ = String.literal("No Value Allowed"); break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn setRootFilePath(self: *Self, value: ?*AbPath) void {
        _ = value;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn setRootFilePath(self: *Self, value: ?*String) void {
        _ = value;
        _ = self;
        std.debug.panic("{any}", .{exception: { _ = String.literal("No Value Allowed"); break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn getRootFilePath(self: *Self) ?*AbPath {
        _ = self;
        std.debug.panic("{any}", .{exception: { _ = String.literal("No Value Allowed"); break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn isRealRoot(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{exception: { _ = String.literal("No A Real Root"); break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn isRoot(self: *Self) bool {
        _ = self;
        std.debug.panic("{any}", .{exception: { _ = String.literal("Root but not implemented"); break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn getWebAppPath(self: *Self, categoryHierarchyInterface: ?*CategoryHierarchyInterface) ?*String {
        _ = categoryHierarchyInterface;
        _ = self;
        std.debug.panic("{any}", .{exception: { _ = String.literal("Not Root"); break :exception error.Exception; }});
    }
    

    pub fn getPath(self: *Self, categoryHierarchyInterface: ?*CategoryHierarchyInterface) ?*AbPath {
        _ = categoryHierarchyInterface;
        _ = self;
        return Inheritance.upcast(?*AbPath, AbPath.createAbPath());
    }
    

    pub fn getFileName(self: *Self) ?*String {
        return self.fileName;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        _ = self;
        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const categoryHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(categoryHashMap.?, "put", .{ CategoryData.getInstance().?.NAME, self.category });
        return categoryHashMap;
    }
    

    pub fn toVector(self: *Self) ?*BasicArrayList {
        const categoryVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(categoryVector.?, "add", .{ self.category });
        return categoryVector;
    }
    

    // throws Exception
    pub fn toValidationInfoDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    // throws Exception
    pub fn toValidationInfoNode(self: *Self, document: ?*Document) ?*Node {
        _ = document;
        _ = self;
        return null;
    }
    

    // throws Exception
    pub fn validationInfo(self: *Self) ?*String {
        _ = self;
        return null;
    }
};


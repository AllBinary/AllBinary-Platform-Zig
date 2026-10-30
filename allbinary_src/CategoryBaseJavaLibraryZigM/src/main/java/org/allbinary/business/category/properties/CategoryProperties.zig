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
// package org.allbinary.business.category.properties

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const CategoryData = @import("org/allbinary/business/category/CategoryData.zig").CategoryData;
const CategoryInterface = @import("org/allbinary/business/category/CategoryInterface.zig").CategoryInterface;
const CategoryUtil = @import("org/allbinary/business/category/CategoryUtil.zig").CategoryUtil;
const CategoryHierarchyInterface = @import("org/allbinary/business/category/hierarchy/CategoryHierarchyInterface.zig").CategoryHierarchyInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlData = @import("org/allbinary/logic/communication/sql/AbSqlData.zig").AbSqlData;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const CategoryPropertiesInterface = @import("org/allbinary/business/category/properties/CategoryPropertiesInterface.zig").CategoryPropertiesInterface;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const CategoryProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.properties.CategoryProperties";
    pub const java_interfaces = .{ CategoryPropertiesInterface };
    logUtil: ?*LogUtil = null,
    category: ?*String = null,
    // Implements CategoryPropertiesInterface
    const MAXDEPTH: i32 = 100;

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.category = name;
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.category = Inheritance.upcast(@TypeOf(this.category), Inheritance.callStatic(CategoryUtil, "getNameFromNode", .{ node }));
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(categoryPropertiesHashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.category = Inheritance.callStatic(String, "create1", .{ Inheritance.cast(?*String, Inheritance.call(categoryPropertiesHashMap.?, "get", .{ CategoryData.getInstance().?.NAME })) });
        return this;
    }
    

    pub fn isRealRoot(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn isRoot(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn getKey(self: *Self) ?Object {
        return Inheritance.cast(?Object, self.getValue());
    }
    

    pub fn getValue(self: *Self) ?*String {
        return self.category;
    }
    

    // throws Exception
    pub fn getPath(self: *Self, categoryHierarchyInterface: ?*CategoryHierarchyInterface) ?*AbPath {
        const abPathData: ?*AbPathData = Inheritance.upcast(?*AbPathData, AbPathData.getInstance());
        const pathStringBuffer: ?*StringMaker = StringMaker.create();
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        var nextParentCategoryInterface: ?*CategoryInterface = Inheritance.upcast(?*CategoryInterface, categoryHierarchyInterface.?.getParent());
        if (!Object.same(self, Inheritance.receiver(nextParentCategoryInterface.?, "getProperties").getProperties())) {
            var depthIndex: i32 = 0;
            while (nextParentCategoryInterface != null) {
                if (Inheritance.receiverOf(Inheritance.receiver(nextParentCategoryInterface.?, "getProperties").getProperties().?, "isRealRoot").isRealRoot()) {
                    break;
                }
                if (Inheritance.receiverOf(Inheritance.receiver(nextParentCategoryInterface.?, "getProperties").getProperties().?, "isRoot").isRoot()) {
                    _ = Inheritance.call(list.?, "addAt", .{ 0, Object.toString(Object.of(Inheritance.receiver(nextParentCategoryInterface.?, "getPath").getPath())) });
                } else {
                    _ = Inheritance.call(pathStringBuffer.?, "delete", .{ 0, pathStringBuffer.?.length() });
                    _ = Inheritance.call(list.?, "addAt", .{ 0, Object.toString(Object.of(Inheritance.call(Inheritance.call(pathStringBuffer.?, "append", .{ abPathData.?.SEPARATOR }).?, "append", .{ Inheritance.receiverOf(Inheritance.receiver(nextParentCategoryInterface.?, "getProperties").getProperties().?, "getValue").getValue() }))) });
                }
                if (Object.same(nextParentCategoryInterface, Inheritance.receiverOf(Inheritance.receiver(nextParentCategoryInterface.?, "getHierarchy").getHierarchy().?, "getParent").getParent())) {
                    break;
                }
                nextParentCategoryInterface = Inheritance.upcast(@TypeOf(nextParentCategoryInterface), Inheritance.receiverOf(Inheritance.receiver(nextParentCategoryInterface.?, "getHierarchy").getHierarchy().?, "getParent").getParent());
                depthIndex += 1;
                if (depthIndex > CategoryProperties.MAXDEPTH) {
                    std.debug.panic("{any}", .{exception: { _ = String.literal("Probably Major Error"); break :exception error.Exception; }});
                }
            }
        }
        _ = Inheritance.call(pathStringBuffer.?, "delete", .{ 0, pathStringBuffer.?.length() });
        _ = Inheritance.call(Inheritance.call(pathStringBuffer.?, "append", .{ abPathData.?.SEPARATOR }).?, "append", .{ self.getValue() });
        const size: i32 = list.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(pathStringBuffer.?, "append", .{ Inheritance.cast(?*String, Inheritance.call(list.?, "get", .{ index })) });
            }
        }
        _ = Inheritance.call(pathStringBuffer.?, "append", .{ abPathData.?.SEPARATOR });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("path = "), Object.toString(Object.of(pathStringBuffer))), self, String.literal("getPath") });
        }
        return Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(pathStringBuffer)), StringUtil.getInstance().?.EMPTY_STRING });
    }
    

    pub fn getFileName(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.getValue() + AbPathData.getInstance().?.EXTENSION_SEP + CategoryData.getInstance().?.UNCRYPTED_EXTENSION);
    }
    

    // throws Exception
    pub fn getWebAppPath(self: *Self) ?*AbPath {
        _ = self;
        std.debug.panic("{any}", .{exception: { _ = String.literal("Not Root"); break :exception error.Exception; }});
    }
    

    pub fn setValue(self: *Self, value: ?*String) void {
        self.category = value;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        var returnBoolean: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.FALSE);
        if (Inheritance.call(StringValidationUtil.getInstance().?, "isValidRequired", .{ self.category, 1, AbSqlData.MAXSTRING })) {
            returnBoolean = Inheritance.upcast(@TypeOf(returnBoolean), Boolean.TRUE);
        }
        return returnBoolean;
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


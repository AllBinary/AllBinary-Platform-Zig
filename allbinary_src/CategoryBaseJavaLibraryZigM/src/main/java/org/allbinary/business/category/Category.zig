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
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const CategoryHierarchy = @import("org/allbinary/business/category/hierarchy/CategoryHierarchy.zig").CategoryHierarchy;
const CategoryHierarchyInterface = @import("org/allbinary/business/category/hierarchy/CategoryHierarchyInterface.zig").CategoryHierarchyInterface;
const CategoryPropertiesFactoryInterface = @import("org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface.zig").CategoryPropertiesFactoryInterface;
const CategoryPropertiesInterface = @import("org/allbinary/business/category/properties/CategoryPropertiesInterface.zig").CategoryPropertiesInterface;
const RootCategoryPropertiesInterface = @import("org/allbinary/business/category/properties/root/RootCategoryPropertiesInterface.zig").RootCategoryPropertiesInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const CategoryInterface = @import("org/allbinary/business/category/CategoryInterface.zig").CategoryInterface;
const Integer = @import("java/lang/Integer.zig").Integer;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const Category = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.Category";
    pub const java_interfaces = .{ CategoryInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    categoryHierarchyInterface: ?*CategoryHierarchyInterface = null,
    categoryPropertiesInterface: ?*CategoryPropertiesInterface = null,
    childCategoryVector: ?*BasicArrayList = null,
    typeVector: ?*BasicArrayList = null,
    PROPERTIES: ?*Integer = null,
    CATEGORY: ?*Integer = null,
    // Implements CategoryInterface
    const NOT_ROOT: ?*String = String.literal("This is not the root so it has no file path.");

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        this.childCategoryVector = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.typeVector = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.PROPERTIES = Inheritance.callStatic(Integer, "create1", .{ 1 });
        this.CATEGORY = Inheritance.callStatic(Integer, "create1", .{ 0 });
    }
    

    pub fn create1(categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.CONSTRUCTOR, this, String.literal("Category(CategoryPropertiesFactoryInterface)") });
        }
        this.categoryPropertiesInterface = Inheritance.upcast(@TypeOf(this.categoryPropertiesInterface), categoryPropertiesFactoryInterface.?.getInstance());
        this.categoryHierarchyInterface = Inheritance.cast(?*CategoryHierarchyInterface, Inheritance.callStatic(CategoryHierarchy, "create2", .{ this, this }));
        _ = this.log();
        return this;
    }
    

    pub fn create2(categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface, level: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.categoryPropertiesInterface = Inheritance.upcast(@TypeOf(this.categoryPropertiesInterface), categoryPropertiesFactoryInterface.?.getInstance());
        this.categoryHierarchyInterface = Inheritance.cast(?*CategoryHierarchyInterface, Inheritance.callStatic(CategoryHierarchy, "create3", .{ this, this, level }));
        _ = this.log();
        return this;
    }
    

    pub fn create3(rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface, categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.categoryPropertiesInterface = Inheritance.cast(?*CategoryPropertiesInterface, categoryPropertiesFactoryInterface.?.getInstance());
        this.categoryHierarchyInterface = Inheritance.cast(?*CategoryHierarchyInterface, Inheritance.callStatic(CategoryHierarchy, "create2", .{ rootCategoryInterface, parentCategoryInterface }));
        _ = this.log();
        return this;
    }
    

    // throws Exception
    pub fn getKey(self: *Self) ?Object {
        return Inheritance.upcast(?Object, Inheritance.receiver(self.categoryPropertiesInterface.?, "getKey").getKey());
    }
    

    // throws Exception
    pub fn getRootFilePath(self: *Self) ?*AbPath {
        var rootAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ Category.NOT_ROOT, StringUtil.getInstance().?.EMPTY_STRING });
        const categoryInterface: ?*CategoryInterface = Inheritance.upcast(?*CategoryInterface, self.categoryHierarchyInterface.?.getRoot());
        if (Inheritance.receiverOf(Inheritance.receiver(categoryInterface.?, "getProperties").getProperties().?, "isRoot").isRoot()) {
            const rootCategoryPropertiesInterface: ?*RootCategoryPropertiesInterface = Inheritance.cast(?*RootCategoryPropertiesInterface, Inheritance.receiver(categoryInterface.?, "getProperties").getProperties());
            rootAbPath = Inheritance.upcast(@TypeOf(rootAbPath), rootCategoryPropertiesInterface.?.getRootFilePath());
        }
        return rootAbPath;
    }
    

    // throws Exception
    pub fn getFilePath(self: *Self) ?*AbPath {
        return Inheritance.callStatic(AbPath, "create2", .{ String.plus(Object.toString(Object.of(self.getRootFilePath())), Object.toString(Object.of(Inheritance.call(self.getProperties().?, "getPath", .{ self.getHierarchy() })))), Inheritance.receiverOf(self.getProperties().?, "getFileName").getFileName() });
    }
    

    // throws Exception
    pub fn getWebAppPath(self: *Self) ?*AbPath {
        const categoryInterface: ?*CategoryInterface = Inheritance.upcast(?*CategoryInterface, self.categoryHierarchyInterface.?.getRoot());
        return Inheritance.upcast(?*AbPath, Inheritance.receiverOf(Inheritance.receiver(categoryInterface.?, "getProperties").getProperties().?, "getWebAppPath").getWebAppPath());
    }
    

    // throws Exception
    pub fn getPath(self: *Self) ?*AbPath {
        return Inheritance.upcast(?*AbPath, Inheritance.call(self.categoryPropertiesInterface.?, "getPath", .{ self.categoryHierarchyInterface }));
    }
    

    pub fn addChildProperty(self: *Self, categoryPropertiesInterface: ?*CategoryPropertiesInterface) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self.typeVector.?, "add", .{ self.PROPERTIES });
        return Inheritance.call(self.childCategoryVector.?, "add", .{ categoryPropertiesInterface });
    }
    

    pub fn addChild(self: *Self, categoryInterface: ?*CategoryInterface) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self, "removeDuplicateChild", .{ categoryInterface });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("adding"), self, String.literal("addChild") });
        }
        const childCategoryHierarchyInterface: ?*CategoryHierarchyInterface = Inheritance.upcast(?*CategoryHierarchyInterface, Inheritance.receiver(categoryInterface.?, "getHierarchy").getHierarchy());
        _ = Inheritance.call(childCategoryHierarchyInterface.?, "setParent", .{ self });
        _ = Inheritance.call(childCategoryHierarchyInterface.?, "setRoot", .{ Inheritance.receiverOf(self.getHierarchy().?, "getRoot").getRoot() });
        _ = Inheritance.call(categoryInterface.?, "setHierarchy", .{ childCategoryHierarchyInterface });
        _ = Inheritance.call(self.typeVector.?, "add", .{ self.CATEGORY });
        return Inheritance.call(self.childCategoryVector.?, "add", .{ categoryInterface });
    }
    

    pub fn getChildNodes(self: *Self) ?*BasicArrayList {
        return self.childCategoryVector;
    }
    

    pub fn removeChild(self: *Self, categoryInterface: ?*CategoryInterface) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const removalVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        var bool_return: bool = false;
        const size: i32 = self.childCategoryVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            if (Object.same(self.CATEGORY, Inheritance.call(self.typeVector.?, "get", .{ index }))) {
                const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(self.childCategoryVector.?, "get", .{ index }));
                const currentCategoryInterface: ?*CategoryInterface = Inheritance.cast(?*CategoryInterface, anyType);
                if (Inheritance.call(Inheritance.receiverOf(Inheritance.receiver(currentCategoryInterface.?, "getProperties").getProperties().?, "getValue").getValue().?, "compareTo", .{ Inheritance.receiverOf(Inheritance.receiver(categoryInterface.?, "getProperties").getProperties().?, "getValue").getValue() }) == 0) {
                    _ = Inheritance.call(removalVector.?, "add", .{ currentCategoryInterface });
                    bool_return = true;
                }
            }
            }
        }
        _ = Inheritance.call(self, "removal", .{ removalVector });
        return bool_return;
    }
    

    pub fn removal(self: *Self, removalVector: ?*BasicArrayList) void {
        const removalSize: i32 = removalVector.?.size();
        {
            var index: i32 = 0;
            while (index < removalSize) : (index += 1) {
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(removalVector.?, "get", .{ index }));
            const objectIndex: i32 = Inheritance.call(self.childCategoryVector.?, "indexOf", .{ anyType });
            _ = Inheritance.call(self.typeVector.?, "remove", .{ objectIndex });
            _ = Inheritance.call(self.childCategoryVector.?, "remove", .{ objectIndex });
            }
        }
    }
    

    pub fn removeDuplicateChild(self: *Self, categoryInterface: ?*CategoryInterface) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const removalVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        var bool_return: bool = false;
        const size: i32 = self.childCategoryVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(self.childCategoryVector.?, "get", .{ index }));
            if (Object.same(self.PROPERTIES, Inheritance.call(self.typeVector.?, "get", .{ index }))) {
                const categoryPropertiesInterface: ?*CategoryPropertiesInterface = Inheritance.cast(?*CategoryPropertiesInterface, anyType);
                if (Inheritance.call(Inheritance.receiverOf(Inheritance.receiver(categoryInterface.?, "getProperties").getProperties().?, "getValue").getValue().?, "compareTo", .{ Inheritance.receiver(categoryPropertiesInterface.?, "getValue").getValue() }) == 0) {
                    _ = Inheritance.call(removalVector.?, "add", .{ categoryPropertiesInterface });
                    bool_return = true;
                    break;
                }
            } else if (Object.same(self.CATEGORY, Inheritance.call(self.typeVector.?, "get", .{ index }))) {
                const existingCategoryInterface: ?*CategoryInterface = Inheritance.cast(?*CategoryInterface, anyType);
                const categoryPropertiesInterface: ?*CategoryPropertiesInterface = Inheritance.upcast(?*CategoryPropertiesInterface, Inheritance.receiver(existingCategoryInterface.?, "getProperties").getProperties());
                if (Inheritance.call(Inheritance.receiverOf(Inheritance.receiver(categoryInterface.?, "getProperties").getProperties().?, "getValue").getValue().?, "compareTo", .{ Inheritance.receiver(categoryPropertiesInterface.?, "getValue").getValue() }) == 0) {
                    _ = Inheritance.call(removalVector.?, "add", .{ existingCategoryInterface });
                    bool_return = true;
                    break;
                }
            }
            }
        }
        _ = Inheritance.call(self, "removal", .{ removalVector });
        return bool_return;
    }
    

    // throws Exception
    pub fn isLeaf(self: *Self) bool {
        if (self.childCategoryVector == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Category Error"); break :exception error.Exception; }});
        }
        if (self.childCategoryVector.?.size() == 0) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn getProperties(self: *Self) ?*CategoryPropertiesInterface {
        return self.categoryPropertiesInterface;
    }
    

    pub fn setProperties(self: *Self, categoryPropertiesInterface: ?*CategoryPropertiesInterface) void {
        self.categoryPropertiesInterface = categoryPropertiesInterface;
    }
    

    pub fn getHierarchy(self: *Self) ?*CategoryHierarchyInterface {
        return self.categoryHierarchyInterface;
    }
    

    pub fn setHierarchy(self: *Self, categoryHierarchyInterface: ?*CategoryHierarchyInterface) void {
        self.categoryHierarchyInterface = categoryHierarchyInterface;
    }
    

    // throws Exception
    pub fn isValid(self: *Self) ?*Boolean {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (!Inheritance.receiverOf(Inheritance.receiver(self.categoryPropertiesInterface.?, "isValid").isValid().?, "booleanValue").booleanValue()) {
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        const size: i32 = self.childCategoryVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const anyType: ?Object = Inheritance.upcast(?Object, Inheritance.call(self.childCategoryVector.?, "get", .{ index }));
            if (Object.same(self.PROPERTIES, Inheritance.call(self.typeVector.?, "get", .{ index }))) {
                const categoryPropertiesInterface: ?*CategoryPropertiesInterface = Inheritance.cast(?*CategoryPropertiesInterface, anyType);
                if (!Inheritance.receiverOf(Inheritance.receiver(categoryPropertiesInterface.?, "isValid").isValid().?, "booleanValue").booleanValue()) {
                    return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                }
            } else if (Object.same(self.CATEGORY, Inheritance.call(self.typeVector.?, "get", .{ index }))) {
                const categoryInterface: ?*CategoryInterface = Inheritance.cast(?*CategoryInterface, anyType);
                if (!Inheritance.receiverOf(Inheritance.receiver(categoryInterface.?, "isValid").isValid().?, "booleanValue").booleanValue()) {
                    return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                }
            }
            }
        }
        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
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
    

    // throws Exception
    pub fn toHashMap(self: *Self) ?*HashMap {
        const categoryHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiver(self.categoryPropertiesInterface.?, "toHashMap").toHashMap());
        return categoryHashMap;
    }
    

    // throws Exception
    pub fn toVector(self: *Self) ?*BasicArrayList {
        const categoryVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self.categoryPropertiesInterface.?, "toVector").toVector());
        _ = Inheritance.call(categoryVector.?, "add", .{ self.childCategoryVector });
        return categoryVector;
    }
    

    // throws Exception
    pub fn log(self: *Self) void {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Category Name: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self.categoryPropertiesInterface.?, "getValue").getValue() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nPath = ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.getPath())) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nFile Path: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.getFilePath())) });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("log()") });
        }
    }
};


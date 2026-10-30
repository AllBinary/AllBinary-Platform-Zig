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
// package org.allbinary.business.category.properties.root.store

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const CategoryData = @import("org/allbinary/business/category/CategoryData.zig").CategoryData;
const CategoryUtil = @import("org/allbinary/business/category/CategoryUtil.zig").CategoryUtil;
const CategoryHierarchyInterface = @import("org/allbinary/business/category/hierarchy/CategoryHierarchyInterface.zig").CategoryHierarchyInterface;
const CategoryPropertiesInterface = @import("org/allbinary/business/category/properties/CategoryPropertiesInterface.zig").CategoryPropertiesInterface;
const RootCategoryPropertiesInterface = @import("org/allbinary/business/category/properties/root/RootCategoryPropertiesInterface.zig").RootCategoryPropertiesInterface;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const TransformInfoHttpInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface.zig").TransformInfoHttpInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const RootStoreCategoryProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.properties.root.store.RootStoreCategoryProperties";
    logUtil: ?*LogUtil = null,
    pathData: ?*AbPathData = null,
    fileAbPath: ?*AbPath = null,
    abPath: ?*AbPath = null,
    category: ?*String = null,
    isRealRoot: bool = false,
    webAppAbPath: ?*AbPath = null,
    transformInfoInterface: ?*TransformInfoInterface = null,
    // Implements RootCategoryPropertiesInterface
    // Implements CategoryPropertiesInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.pathData = Inheritance.upcast(?*AbPathData, AbPathData.getInstance());
        this.fileAbPath = null;
        
        
        
        this.webAppAbPath = null;
        
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.transformInfoInterface = transformInfoInterface;
        this.abPath = Inheritance.upcast(@TypeOf(this.abPath), AbPath.createAbPath());
        this.category = Inheritance.upcast(@TypeOf(this.category), CategoryData.getInstance().?.ROOTCATEGORY);
        this.isRealRoot = true;
        _ = this.initPath();
        _ = this.log();
        return this;
    }
    

    pub fn create2(transformInfoInterface: ?*TransformInfoInterface, categoryAbPath: ?*AbPath) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.transformInfoInterface = transformInfoInterface;
        this.abPath = categoryAbPath;
        this.category = Inheritance.upcast(@TypeOf(this.category), Inheritance.call(this.pathData.?, "getNameFromPath", .{ Object.toString(Object.of(categoryAbPath)) }));
        if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ this.category })) {
            this.isRealRoot = true;
            this.category = Inheritance.upcast(@TypeOf(this.category), CategoryData.getInstance().?.ROOTCATEGORY);
        }
        _ = this.initPath();
        _ = this.log();
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create2(transformInfoInterface: ?*TransformInfoInterface, node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.transformInfoInterface = transformInfoInterface;
        const categoryPath: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(CategoryUtil, "getNameFromNode", .{ node }));
        this.abPath = Inheritance.callStatic(AbPath, "create2", .{ categoryPath, StringUtil.getInstance().?.EMPTY_STRING });
        this.category = Inheritance.upcast(@TypeOf(this.category), Inheritance.call(this.pathData.?, "getNameFromPath", .{ categoryPath }));
        if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ this.category })) {
            this.isRealRoot = true;
            this.category = Inheritance.upcast(@TypeOf(this.category), CategoryData.getInstance().?.ROOTCATEGORY);
        }
        _ = this.initPath();
        _ = this.log();
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create2(transformInfoInterface: ?*TransformInfoInterface, categoryPropertiesHashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.transformInfoInterface = transformInfoInterface;
        const categoryPath: ?*String = Inheritance.callStatic(String, "create1", .{ Inheritance.cast(?*String, Inheritance.call(categoryPropertiesHashMap.?, "get", .{ CategoryData.getInstance().?.NAME })) });
        this.abPath = Inheritance.callStatic(AbPath, "create2", .{ categoryPath, StringUtil.getInstance().?.EMPTY_STRING });
        this.category = Inheritance.upcast(@TypeOf(this.category), Inheritance.call(this.pathData.?, "getNameFromPath", .{ categoryPath }));
        if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ this.category })) {
            this.isRealRoot = true;
            this.category = Inheritance.upcast(@TypeOf(this.category), CategoryData.getInstance().?.ROOTCATEGORY);
        }
        _ = this.initPath();
        _ = this.log();
        return this;
    }
    

    // throws Exception
    pub fn initPath(self: *Self) void {
        const transformInfoHttpStoreInterface: ?*TransformInfoHttpInterface = Inheritance.cast(?*TransformInfoHttpInterface, self.transformInfoInterface);
        const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ Inheritance.receiver(transformInfoHttpStoreInterface.?, "getStoreName").getStoreName() }));
        const postPath: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(storeFrontInterface.?, "getCurrentHostNamePath").getCurrentHostNamePath() + Inheritance.receiver(storeFrontInterface.?, "getCategoryPath").getCategoryPath());
        const httpServletRequest: ?*HttpServletRequest = Inheritance.cast(?*HttpServletRequest, Inheritance.receiverOf(Inheritance.receiver(transformInfoHttpStoreInterface.?, "getPageContext").getPageContext().?, "getRequest").getRequest());
        self.webAppAbPath = Inheritance.callStatic(AbPath, "create2", .{ String.plus(httpServletRequest.?.getContextPath(), postPath), StringUtil.getInstance().?.EMPTY_STRING });
        _ = Inheritance.call(self, "setRootFilePath", .{ Inheritance.callStatic(AbPath, "create2", .{ String.plus(URLGLOBALS.getMainPath(), postPath), StringUtil.getInstance().?.EMPTY_STRING }) });
    }
    

    pub fn isRealRoot(self: *Self) bool {
        return self.isRealRoot;
    }
    

    pub fn isRoot(self: *Self) bool {
        _ = self;
        return true;
    }
    

    pub fn getKey(self: *Self) ?Object {
        return Inheritance.cast(?Object, self.getValue());
    }
    

    pub fn setPath(self: *Self, path: ?*AbPath) void {
        self.abPath = path;
    }
    

    pub fn setRootFilePath(self: *Self, value: ?*AbPath) void {
        self.fileAbPath = value;
    }
    

    pub fn getRootFilePath(self: *Self) ?*AbPath {
        return self.fileAbPath;
    }
    

    pub fn getValue(self: *Self) ?*String {
        return self.category;
    }
    

    // throws Exception
    pub fn getWebAppPath(self: *Self) ?*AbPath {
        return self.webAppAbPath;
    }
    

    pub fn getPath(self: *Self, categoryHierarchyInterface: ?*CategoryHierarchyInterface) ?*AbPath {
        _ = categoryHierarchyInterface;
        return self.abPath;
    }
    

    pub fn getFileName(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.getValue() + AbPathData.getInstance().?.EXTENSION_SEP + CategoryData.getInstance().?.UNCRYPTED_EXTENSION);
    }
    

    pub fn setValue(self: *Self, value: ?*String) void {
        self.category = Inheritance.upcast(@TypeOf(self.category), value);
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        _ = self;
        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const categoryHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(categoryHashMap.?, "put", .{ CategoryData.getInstance().?.NAME, self.getValue() });
        return categoryHashMap;
    }
    

    pub fn toVector(self: *Self) ?*BasicArrayList {
        const categoryVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(categoryVector.?, "add", .{ self.getValue() });
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
    

    pub fn log(self: *Self) void {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("filePath = ") }).?, "append", .{ Object.toString(Object.of(self.fileAbPath)) }).?, "append", .{ String.literal("\npath = ") }).?, "append", .{ Object.toString(Object.of(self.abPath)) }).?, "append", .{ String.literal("\ncategory = ") }).?, "append", .{ self.category }))), self, String.literal("log()") });
        }
    }
};


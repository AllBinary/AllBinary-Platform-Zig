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
// package org.allbinary.data.tree.category

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CategoryData = @import("org/allbinary/business/category/CategoryData.zig").CategoryData;
const CategoryFactoryInterface = @import("org/allbinary/business/category/CategoryFactoryInterface.zig").CategoryFactoryInterface;
const CategoryInterface = @import("org/allbinary/business/category/CategoryInterface.zig").CategoryInterface;
const CategoryProperties = @import("org/allbinary/business/category/properties/CategoryProperties.zig").CategoryProperties;
const CategoryPropertiesInterface = @import("org/allbinary/business/category/properties/CategoryPropertiesInterface.zig").CategoryPropertiesInterface;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CryptFileReader = @import("org/allbinary/logic/control/crypt/file/CryptFileReader.zig").CryptFileReader;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const CategoryLoaderInterface = @import("org/allbinary/data/tree/category/CategoryLoaderInterface.zig").CategoryLoaderInterface;
const CategoryModifierTree = @import("org/allbinary/data/tree/category/CategoryModifierTree.zig").CategoryModifierTree;

pub const CategoryLoader = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.category.CategoryLoader";
    pub const java_interfaces = .{ CategoryLoaderInterface };
    base: CategoryModifierTree = undefined,
    logUtil: ?*LogUtil = null,
    // Implements CategoryLoaderInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create1(categoryFactoryInterface: ?*CategoryFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CategoryModifierTree, "create1", .{ categoryFactoryInterface }).*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, String.literal("CategoryLoader(CategoryFactoryInterface categoryFactoryInterface)") });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getDoc(self: *Self, categoryInterface: ?*CategoryInterface) ?*Document {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            if (Inheritance.call(Inheritance.receiver(categoryInterface.?, "getProperties").getProperties().?, "getPath", .{ Inheritance.receiver(categoryInterface.?, "getHierarchy").getHierarchy() }) != null) {
                if (Inheritance.receiverOf(Inheritance.receiver(categoryInterface.?, "getHierarchy").getHierarchy().?, "getLevel").getLevel() == 1) {
                    const rootAbFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ Inheritance.receiver(categoryInterface.?, "getRootFilePath").getRootFilePath() }));
                    if (!rootAbFile.?.isDirectory()) {
                        _ = rootAbFile.?.mkdirs();
                        if (!rootAbFile.?.isDirectory()) {
                            std.debug.panic("{any}", .{exception: { _ = String.literal("Could Not Create Directory"); break :exception error.Exception; }});
                        }
                        _ = Inheritance.call(self, "save", .{ categoryInterface });
                    }
                }
                const fileAbPath: ?*AbPath = Inheritance.upcast(?*AbPath, Inheritance.receiver(categoryInterface.?, "getFilePath").getFilePath());
                const cryptFileReader: ?*CryptFileReader = Inheritance.callStatic(CryptFileReader, "create2", .{ CategoryData.getInstance().?.UNCRYPTED_EXTENSION, CategoryData.getInstance().?.ENCRYPTED_EXTENSION });
                const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.callStatic(DomDocumentHelper, "create", .{ Inheritance.call(cryptFileReader.?, "get", .{ fileAbPath }) }));
                return document;
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.literal("Null Category"); break :exception error.Exception; }});
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 { // try
//                     _ = Inheritance.receiver(categoryInterface.?, "log").log();
//                 }
//                 // catch (Exception e2):
// //                     _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Could Not Log Category"), self, String.literal("getDoc"), e });
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, String.literal("getDoc"), e });
//             }
//             return null;
    }
    

    pub fn get(self: *Self, categoryInterface: ?*CategoryInterface) ?*CategoryInterface {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.call(self, "getDoc", .{ categoryInterface }));
            const categoryNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ CategoryData.getInstance().?.NAME, document.?.getChildNodes() }));
            return Inheritance.upcast(?*CategoryInterface, Inheritance.call(self, "addProperties", .{ categoryInterface, categoryNode.?.getChildNodes() }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.GET, e });
//             }
//             return null;
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn get(self: *Self, document: ?*Document) ?*CategoryInterface {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            const categoryNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ CategoryData.getInstance().?.NAME, document.?.getChildNodes() }));
            const loadedCategoryInterface: ?*CategoryInterface = Inheritance.upcast(?*CategoryInterface, Inheritance.call(Inheritance.fieldPointer(self, "categoryFactoryInterface").*.?, "getRootInstanceFromNode", .{ categoryNode }));
            return Inheritance.upcast(?*CategoryInterface, Inheritance.call(self, "addProperties", .{ loadedCategoryInterface, categoryNode.?.getChildNodes() }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.GET, e });
//             }
//             return null;
    }
    

    pub fn getAll(self: *Self, categoryInterface: ?*CategoryInterface) ?*CategoryInterface {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.call(self, "getDoc", .{ categoryInterface }));
            return Inheritance.upcast(?*CategoryInterface, Inheritance.call(self, "getAll", .{ document }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.GET, e });
//             }
//             return null;
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getAll(self: *Self, document: ?*Document) ?*CategoryInterface {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            const categoryNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ CategoryData.getInstance().?.NAME, document.?.getChildNodes() }));
            const loadedCategoryInterface: ?*CategoryInterface = Inheritance.upcast(?*CategoryInterface, Inheritance.call(Inheritance.fieldPointer(self, "categoryFactoryInterface").*.?, "getRootInstanceFromNode", .{ categoryNode }));
            return Inheritance.upcast(?*CategoryInterface, Inheritance.call(self, "addProperties", .{ loadedCategoryInterface, categoryNode.?.getChildNodes() }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.GET, e });
//             }
//             return null;
    }
    

    pub fn getAll2(self: *Self, parentCategoryInterface: ?*CategoryInterface, categoryNodeList: ?*NodeList) ?*CategoryInterface {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            if (categoryNodeList != null) {
                {
                    var index: i32 = 0;
                    while (index < categoryNodeList.?.getLength()) : (index += 1) {
                    const categoryNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(categoryNodeList.?, "item", .{ index }));
                    if (categoryNode != null and Inheritance.call(categoryNode.?.getNodeName().?, "compareTo", .{ CategoryData.getInstance().?.NAME }) == 0) {
                        const categoryInterface: ?*CategoryInterface = Inheritance.cast(?*CategoryInterface, Inheritance.call(Inheritance.fieldPointer(self, "categoryFactoryInterface").*.?, "getInstance", .{ Inheritance.receiverOf(Inheritance.receiver(parentCategoryInterface.?, "getHierarchy").getHierarchy().?, "getRoot").getRoot(), parentCategoryInterface, categoryNode }));
                        _ = Inheritance.call(parentCategoryInterface.?, "addChild", .{ categoryInterface });
                    }
                    }
                }
            }
            return parentCategoryInterface;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.GET, e });
//             }
//             return null;
    }
    

    pub fn addProperties(self: *Self, loadedCategoryInterface: ?*CategoryInterface, categoryNodeList: ?*NodeList) ?*CategoryInterface {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            if (categoryNodeList != null) {
                {
                    var index: i32 = 0;
                    while (index < categoryNodeList.?.getLength()) : (index += 1) {
                    const categoryNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(categoryNodeList.?, "item", .{ index }));
                    if (categoryNode != null and Inheritance.call(categoryNode.?.getNodeName().?, "compareTo", .{ CategoryData.getInstance().?.NAME }) == 0) {
                        const categoryPropertiesInterface: ?*CategoryPropertiesInterface = Inheritance.cast(?*CategoryPropertiesInterface, Inheritance.callStatic(CategoryProperties, "create1", .{ categoryNode }));
                        _ = Inheritance.call(loadedCategoryInterface.?, "addChildProperty", .{ categoryPropertiesInterface });
                    }
                    }
                }
            }
            return loadedCategoryInterface;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.FAILURE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.GET, e });
//             }
//             return null;
    }
};


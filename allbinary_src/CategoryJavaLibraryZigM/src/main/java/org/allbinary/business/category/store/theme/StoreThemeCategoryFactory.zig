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
// package org.allbinary.business.category.store.theme

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const CategoryFactoryInterface = @import("org/allbinary/business/category/CategoryFactoryInterface.zig").CategoryFactoryInterface;
const CategoryInterface = @import("org/allbinary/business/category/CategoryInterface.zig").CategoryInterface;
const CategoryUtil = @import("org/allbinary/business/category/CategoryUtil.zig").CategoryUtil;
const CategoryPropertiesFactory = @import("org/allbinary/business/category/properties/CategoryPropertiesFactory.zig").CategoryPropertiesFactory;
const CategoryPropertiesFactoryInterface = @import("org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface.zig").CategoryPropertiesFactoryInterface;
const RootStoreThemeCategoryPropertiesFactory = @import("org/allbinary/business/category/properties/root/store/theme/RootStoreThemeCategoryPropertiesFactory.zig").RootStoreThemeCategoryPropertiesFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Node = @import("org/w3c/dom/Node.zig").Node;
const StoreThemeCategory = @import("org/allbinary/business/category/store/theme/StoreThemeCategory.zig").StoreThemeCategory;

pub const StoreThemeCategoryFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.store.theme.StoreThemeCategoryFactory";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    transformInfoInterface: ?*TransformInfoInterface = null,
    // Implements CategoryFactoryInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, String.literal("StoreCategoryFactory(TransformInfoInterface transformInfoInterface)") });
        }
        this.transformInfoInterface = transformInfoInterface;
        return this;
    }
    

    pub fn getRootInstance(self: *Self) ?*CategoryInterface {
        { // try
            const categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface = Inheritance.cast(?*CategoryPropertiesFactoryInterface, Inheritance.callStatic(RootStoreThemeCategoryPropertiesFactory, "create1", .{ self.transformInfoInterface }));
            return Inheritance.cast(?*CategoryInterface, Inheritance.callStatic(StoreThemeCategory, "create3", .{ self.transformInfoInterface, categoryPropertiesFactoryInterface, 0 }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getRootInstance()"), e });
//             }
//             return null;
    }
    

    pub fn getRootInstance1(self: *Self, categoryAbPath: ?*AbPath) ?*CategoryInterface {
        { // try
            const level: i32 = Inheritance.callStatic(CategoryUtil, "getPathLevel", .{ categoryAbPath });
            const categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface = Inheritance.cast(?*CategoryPropertiesFactoryInterface, Inheritance.callStatic(RootStoreThemeCategoryPropertiesFactory, "create2", .{ self.transformInfoInterface, categoryAbPath }));
            return Inheritance.cast(?*CategoryInterface, Inheritance.callStatic(StoreThemeCategory, "create3", .{ self.transformInfoInterface, categoryPropertiesFactoryInterface, level }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getRootInstance(String)"), e });
//             }
//             return null;
    }
    

    pub fn getRootInstanceFromNode(self: *Self, node: ?*Node) ?*CategoryInterface {
        { // try
            const categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface = Inheritance.cast(?*CategoryPropertiesFactoryInterface, Inheritance.callStatic(RootStoreThemeCategoryPropertiesFactory, "create2", .{ self.transformInfoInterface, node }));
            const categoryPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ Inheritance.callStatic(CategoryUtil, "getNameFromNode", .{ node }), StringUtil.getInstance().?.EMPTY_STRING });
            const level: i32 = Inheritance.callStatic(CategoryUtil, "getPathLevel", .{ categoryPath });
            return Inheritance.cast(?*CategoryInterface, Inheritance.callStatic(StoreThemeCategory, "create4", .{ self.transformInfoInterface, node, categoryPropertiesFactoryInterface, level }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getRootInstance(node)"), e });
//             }
//             return null;
    }
    

    pub fn getInstance(self: *Self, categoryPath: ?*String, level: i32) ?*CategoryInterface {
        { // try
            const categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface = Inheritance.cast(?*CategoryPropertiesFactoryInterface, Inheritance.callStatic(CategoryPropertiesFactory, "create1", .{ categoryPath }));
            return Inheritance.cast(?*CategoryInterface, Inheritance.callStatic(StoreThemeCategory, "create3", .{ self.transformInfoInterface, categoryPropertiesFactoryInterface, level }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getInstance(String, int)"), e });
//             }
//             return null;
    }
    

    pub fn getInstance3(self: *Self, rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface, categoryPath: ?*String) ?*CategoryInterface {
        { // try
            const categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface = Inheritance.cast(?*CategoryPropertiesFactoryInterface, Inheritance.callStatic(CategoryPropertiesFactory, "create1", .{ categoryPath }));
            return Inheritance.cast(?*CategoryInterface, Inheritance.callStatic(StoreThemeCategory, "create4", .{ self.transformInfoInterface, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getInstance(CategoryInterface, CategoryInterface , String, int)"), e });
//             }
//             return null;
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance(self: *Self, node: ?*Node, level: i32) ?*CategoryInterface {
        { // try
            const categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface = Inheritance.cast(?*CategoryPropertiesFactoryInterface, Inheritance.callStatic(CategoryPropertiesFactory, "create1", .{ node }));
            return Inheritance.cast(?*CategoryInterface, Inheritance.callStatic(StoreThemeCategory, "create3", .{ self.transformInfoInterface, categoryPropertiesFactoryInterface, level }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getInstance(Node, int)"), e });
//             }
//             return null;
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance3(self: *Self, rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface, node: ?*Node) ?*CategoryInterface {
        { // try
            const categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface = Inheritance.cast(?*CategoryPropertiesFactoryInterface, Inheritance.callStatic(CategoryPropertiesFactory, "create1", .{ node }));
            return Inheritance.cast(?*CategoryInterface, Inheritance.callStatic(StoreThemeCategory, "create4", .{ self.transformInfoInterface, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getInstance(CategoryInterface, CategoryInterface, Node, int)"), e });
//             }
//             return null;
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance(self: *Self, categoryPropertiesHashMap: ?*HashMap, level: i32) ?*CategoryInterface {
        { // try
            const categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface = Inheritance.cast(?*CategoryPropertiesFactoryInterface, Inheritance.callStatic(CategoryPropertiesFactory, "create1", .{ categoryPropertiesHashMap }));
            return Inheritance.cast(?*CategoryInterface, Inheritance.callStatic(StoreThemeCategory, "create3", .{ self.transformInfoInterface, categoryPropertiesFactoryInterface, level }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getInstance(HashMap)"), e });
//             }
//             return null;
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance3(self: *Self, rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface, categoryPropertiesHashMap: ?*HashMap) ?*CategoryInterface {
        { // try
            const categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface = Inheritance.cast(?*CategoryPropertiesFactoryInterface, Inheritance.callStatic(CategoryPropertiesFactory, "create1", .{ categoryPropertiesHashMap }));
            return Inheritance.cast(?*CategoryInterface, Inheritance.callStatic(StoreThemeCategory, "create4", .{ self.transformInfoInterface, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getInstance(CategoryInterface, CategoryInterface, HashMap)"), e });
//             }
//             return null;
    }
};


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
const CategoryPropertiesFactory = @import("org/allbinary/business/category/properties/CategoryPropertiesFactory.zig").CategoryPropertiesFactory;
const CategoryPropertiesFactoryInterface = @import("org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface.zig").CategoryPropertiesFactoryInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Node = @import("org/w3c/dom/Node.zig").Node;
const Category = @import("org/allbinary/business/category/Category.zig").Category;
const CategoryFactoryInterface = @import("org/allbinary/business/category/CategoryFactoryInterface.zig").CategoryFactoryInterface;
const CategoryInterface = @import("org/allbinary/business/category/CategoryInterface.zig").CategoryInterface;

pub const CategoryAbstractFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.CategoryAbstractFactory";
    pub const java_interfaces = .{ CategoryFactoryInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    // Implements CategoryFactoryInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getRootInstance(self: *Self) ?*CategoryInterface {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getRootInstance1(self: *Self, categoryAbPath: ?*AbPath) ?*CategoryInterface {
        _ = categoryAbPath;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getRootInstanceFromNode(self: *Self, node: ?*Node) ?*CategoryInterface {
        _ = node;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getInstance(self: *Self, categoryName: ?*String) ?*CategoryInterface {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("getInstance(String)") });
            }
            const categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface = Inheritance.cast(?*CategoryPropertiesFactoryInterface, Inheritance.callStatic(CategoryPropertiesFactory, "create1", .{ categoryName }));
            return Inheritance.cast(?*CategoryInterface, Inheritance.callStatic(Category, "create1", .{ categoryPropertiesFactoryInterface }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getInstance(String, int)"), e });
//             }
//             return null;
    }
    

    pub fn getInstance3(self: *Self, rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface, categoryName: ?*String) ?*CategoryInterface {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("getInstance(CategoryInterface, CategoryInterface, String)") });
            }
            const categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface = Inheritance.cast(?*CategoryPropertiesFactoryInterface, Inheritance.callStatic(CategoryPropertiesFactory, "create1", .{ categoryName }));
            return Inheritance.cast(?*CategoryInterface, Inheritance.callStatic(Category, "create3", .{ rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getInstance(CategoryInterface, CategoryInterface , String, int)"), e });
//             }
//             return null;
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance(self: *Self, node: ?*Node) ?*CategoryInterface {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("getInstance(Node)") });
            }
            const categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface = Inheritance.cast(?*CategoryPropertiesFactoryInterface, Inheritance.callStatic(CategoryPropertiesFactory, "create1", .{ node }));
            return Inheritance.cast(?*CategoryInterface, Inheritance.callStatic(Category, "create1", .{ categoryPropertiesFactoryInterface }));
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
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("getInstance(CategoryInterface, CategoryInterface, Node)") });
            }
            const categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface = Inheritance.cast(?*CategoryPropertiesFactoryInterface, Inheritance.callStatic(CategoryPropertiesFactory, "create1", .{ node }));
            return Inheritance.cast(?*CategoryInterface, Inheritance.callStatic(Category, "create3", .{ rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getInstance(CategoryInterface, CategoryInterface, Node, int)"), e });
//             }
//             return null;
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance3(self: *Self, rootCategoryInterface: ?*CategoryInterface, parentCategoryInterface: ?*CategoryInterface, categoryPropertiesHashMap: ?*HashMap) ?*CategoryInterface {
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("getInstance(CategoryInterface, CategoryInterface, HashMap)") });
            }
            const categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface = Inheritance.cast(?*CategoryPropertiesFactoryInterface, Inheritance.callStatic(CategoryPropertiesFactory, "create1", .{ categoryPropertiesHashMap }));
            return Inheritance.cast(?*CategoryInterface, Inheritance.callStatic(Category, "create3", .{ rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getInstance(CategoryInterface, CategoryInterface, HashMap)"), e });
//             }
//             return null;
    }
};


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
// package org.allbinary.business.category.store

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Category = @import("org/allbinary/business/category/Category.zig").Category;
const CategoryAbstractFactory = @import("org/allbinary/business/category/CategoryAbstractFactory.zig").CategoryAbstractFactory;
const CategoryFactoryInterface = @import("org/allbinary/business/category/CategoryFactoryInterface.zig").CategoryFactoryInterface;
const CategoryInterface = @import("org/allbinary/business/category/CategoryInterface.zig").CategoryInterface;
const CategoryUtil = @import("org/allbinary/business/category/CategoryUtil.zig").CategoryUtil;
const CategoryPropertiesFactoryInterface = @import("org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface.zig").CategoryPropertiesFactoryInterface;
const RootStoreCategoryPropertiesFactory = @import("org/allbinary/business/category/properties/root/store/RootStoreCategoryPropertiesFactory.zig").RootStoreCategoryPropertiesFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Node = @import("org/w3c/dom/Node.zig").Node;

pub const StoreCategoryFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.store.StoreCategoryFactory";
    base: CategoryAbstractFactory = undefined,
    logUtil: ?*LogUtil = null,
    transformInfoInterface: ?*TransformInfoInterface = null,
    // Implements CategoryFactoryInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = CategoryAbstractFactory.create().*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, String.literal("StoreCategoryFactory(TransformInfoInterface transformInfoInterface)") });
        }
        this.transformInfoInterface = transformInfoInterface;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getRootInstance(self: *Self) ?*CategoryInterface {
        { // try
            const categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface = Inheritance.cast(?*CategoryPropertiesFactoryInterface, Inheritance.callStatic(RootStoreCategoryPropertiesFactory, "create1", .{ self.transformInfoInterface }));
            return Inheritance.cast(?*CategoryInterface, Inheritance.callStatic(Category, "create1", .{ categoryPropertiesFactoryInterface }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("getInstance(String, int)"), e });
//             }
//             return null;
    }
    

    pub fn getRootInstance1(self: *Self, categoryPath: ?*AbPath) ?*CategoryInterface {
        { // try
            const level: i32 = Inheritance.callStatic(CategoryUtil, "getPathLevel", .{ categoryPath });
            const categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface = Inheritance.cast(?*CategoryPropertiesFactoryInterface, Inheritance.callStatic(RootStoreCategoryPropertiesFactory, "create2", .{ self.transformInfoInterface, categoryPath }));
            return Inheritance.cast(?*CategoryInterface, Inheritance.callStatic(Category, "create2", .{ categoryPropertiesFactoryInterface, level }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("getInstance(String, int)"), e });
//             }
//             return null;
    }
    

    pub fn getRootInstanceFromNode(self: *Self, node: ?*Node) ?*CategoryInterface {
        { // try
            const categoryPropertiesFactoryInterface: ?*CategoryPropertiesFactoryInterface = Inheritance.cast(?*CategoryPropertiesFactoryInterface, Inheritance.callStatic(RootStoreCategoryPropertiesFactory, "create2", .{ self.transformInfoInterface, node }));
            const categoryPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ Inheritance.callStatic(CategoryUtil, "getNameFromNode", .{ node }), StringUtil.getInstance().?.EMPTY_STRING });
            const level: i32 = Inheritance.callStatic(CategoryUtil, "getPathLevel", .{ categoryPath });
            return Inheritance.cast(?*CategoryInterface, Inheritance.callStatic(Category, "create2", .{ categoryPropertiesFactoryInterface, level }));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("getInstance(String, int)"), e });
//             }
//             return null;
    }
};


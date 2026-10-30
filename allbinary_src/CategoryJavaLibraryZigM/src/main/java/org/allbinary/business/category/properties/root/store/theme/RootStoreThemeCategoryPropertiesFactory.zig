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
// package org.allbinary.business.category.properties.root.store.theme

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const CategoryPropertiesFactoryInterface = @import("org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface.zig").CategoryPropertiesFactoryInterface;
const CategoryPropertiesInterface = @import("org/allbinary/business/category/properties/CategoryPropertiesInterface.zig").CategoryPropertiesInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Node = @import("org/w3c/dom/Node.zig").Node;
const RootStoreThemeCategoryProperties = @import("org/allbinary/business/category/properties/root/store/theme/RootStoreThemeCategoryProperties.zig").RootStoreThemeCategoryProperties;

pub const RootStoreThemeCategoryPropertiesFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.properties.root.store.theme.RootStoreThemeCategoryPropertiesFactory";
    logUtil: ?*LogUtil = null,
    categoryPropertiesInterface: ?*CategoryPropertiesInterface = null,
    // Implements CategoryPropertiesFactoryInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.categoryPropertiesInterface = Inheritance.cast(?*CategoryPropertiesInterface, Inheritance.callStatic(RootStoreThemeCategoryProperties, "create1", .{ transformInfoInterface }));
        return this;
    }
    

    pub fn create2(transformInfoInterface: ?*TransformInfoInterface, abPath: ?*AbPath) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.categoryPropertiesInterface = Inheritance.cast(?*CategoryPropertiesInterface, Inheritance.callStatic(RootStoreThemeCategoryProperties, "create2", .{ transformInfoInterface, abPath }));
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create2(transformInfoInterface: ?*TransformInfoInterface, node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.categoryPropertiesInterface = Inheritance.cast(?*CategoryPropertiesInterface, Inheritance.callStatic(RootStoreThemeCategoryProperties, "create2", .{ transformInfoInterface, node }));
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create2(transformInfoInterface: ?*TransformInfoInterface, categoryPropertiesHashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.categoryPropertiesInterface = Inheritance.cast(?*CategoryPropertiesInterface, Inheritance.callStatic(RootStoreThemeCategoryProperties, "create2", .{ transformInfoInterface, categoryPropertiesHashMap }));
        return this;
    }
    

    pub fn getInstance(self: *Self) ?*CategoryPropertiesInterface {
        { // try
            return Inheritance.cast(?*CategoryPropertiesInterface, self.categoryPropertiesInterface);
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.GET_INSTANCE, e });
//             }
//             return null;
    }
};


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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Node = @import("org/w3c/dom/Node.zig").Node;
const CategoryProperties = @import("org/allbinary/business/category/properties/CategoryProperties.zig").CategoryProperties;
const CategoryPropertiesFactoryInterface = @import("org/allbinary/business/category/properties/CategoryPropertiesFactoryInterface.zig").CategoryPropertiesFactoryInterface;
const CategoryPropertiesInterface = @import("org/allbinary/business/category/properties/CategoryPropertiesInterface.zig").CategoryPropertiesInterface;

pub const CategoryPropertiesFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.properties.CategoryPropertiesFactory";
    pub const java_interfaces = .{ CategoryPropertiesFactoryInterface };
    logUtil: ?*LogUtil = null,
    categoryPropertiesInterface: ?*CategoryPropertiesInterface = null,
    // Implements CategoryPropertiesFactoryInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.categoryPropertiesInterface = Inheritance.cast(?*CategoryPropertiesInterface, Inheritance.callStatic(CategoryProperties, "create1", .{ name }));
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.categoryPropertiesInterface = Inheritance.cast(?*CategoryPropertiesInterface, Inheritance.callStatic(CategoryProperties, "create1", .{ node }));
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(categoryPropertiesHashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.categoryPropertiesInterface = Inheritance.cast(?*CategoryPropertiesInterface, Inheritance.callStatic(CategoryProperties, "create1", .{ categoryPropertiesHashMap }));
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


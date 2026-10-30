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
const CategoryFactoryInterface = @import("org/allbinary/business/category/CategoryFactoryInterface.zig").CategoryFactoryInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const CategoryLoader = @import("org/allbinary/data/tree/category/CategoryLoader.zig").CategoryLoader;
const CategoryLoaderInterface = @import("org/allbinary/data/tree/category/CategoryLoaderInterface.zig").CategoryLoaderInterface;

pub const CategoryLoaderFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.category.CategoryLoaderFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(categoryFactoryInterface: ?*CategoryFactoryInterface) ?*CategoryLoaderInterface {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
        { // try
            return Inheritance.upcast(?*CategoryLoaderInterface, Inheritance.callStatic(CategoryLoader, "create1", .{ categoryFactoryInterface }));
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, String.literal("CategoryNodeFactory"), commonStrings.?.GET_INSTANCE, e });
//             }
//             return null;
    }
};


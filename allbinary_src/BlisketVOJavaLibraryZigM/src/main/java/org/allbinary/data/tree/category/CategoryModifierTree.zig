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
const CategoryInterface = @import("org/allbinary/business/category/CategoryInterface.zig").CategoryInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const Directory = @import("org/allbinary/logic/io/file/directory/Directory.zig").Directory;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const CategoryModifierTreeInterface = @import("org/allbinary/data/tree/category/CategoryModifierTreeInterface.zig").CategoryModifierTreeInterface;
const CategoryPrivateTree = @import("org/allbinary/data/tree/category/CategoryPrivateTree.zig").CategoryPrivateTree;

pub const CategoryModifierTree = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.category.CategoryModifierTree";
    pub const java_interfaces = .{ CategoryModifierTreeInterface };
    base: CategoryPrivateTree = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    directory: ?*Directory = null,
    // Implements CategoryModifierTreeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.directory = Inheritance.upcast(?*Directory, Directory.getInstance());
    }
    

    pub fn create1(categoryFactoryInterface: ?*CategoryFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CategoryPrivateTree, "create1", .{ categoryFactoryInterface }).*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, String.literal("CategoryModifierTree(CategoryFactoryInterface categoryFactoryInterface)") });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn insert(self: *Self, parentCategoryInterface: ?*CategoryInterface, newChildCategoryInterface: ?*CategoryInterface) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Inserting"), self, String.literal("insert()") });
            }
            if (Inheritance.receiverOf(Inheritance.receiver(parentCategoryInterface.?, "isValid").isValid().?, "booleanValue").booleanValue()) {
                _ = Inheritance.call(parentCategoryInterface.?, "addChild", .{ newChildCategoryInterface });
                const directoryToBeCreatedAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ String.plus(Object.toString(Object.of(Inheritance.receiver(newChildCategoryInterface.?, "getRootFilePath").getRootFilePath())), Object.toString(Object.of(Inheritance.receiver(newChildCategoryInterface.?, "getPath").getPath()))), StringUtil.getInstance().?.EMPTY_STRING });
                _ = Inheritance.call(self.directory.?, "create", .{ directoryToBeCreatedAbPath });
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Saving"), self, String.literal("insert()") });
                }
                _ = Inheritance.call(self, "save", .{ parentCategoryInterface });
                _ = Inheritance.call(self, "save", .{ newChildCategoryInterface });
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.literal("Will Not Add Null Category"); break :exception error.Exception; }});
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.FAILURE, self, String.literal("insert"), e });
//             }
    }
    

    pub fn delete(self: *Self, parentCategoryInterface: ?*CategoryInterface, existingChildCategoryInterface: ?*CategoryInterface) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            if (Inheritance.receiverOf(Inheritance.receiver(parentCategoryInterface.?, "isValid").isValid().?, "booleanValue").booleanValue()) {
                _ = Inheritance.call(parentCategoryInterface.?, "addChild", .{ existingChildCategoryInterface });
                const directoryToBeDeletedAbPath: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ String.plus(Object.toString(Object.of(Inheritance.receiver(existingChildCategoryInterface.?, "getRootFilePath").getRootFilePath())), Object.toString(Object.of(Inheritance.receiver(existingChildCategoryInterface.?, "getPath").getPath()))), StringUtil.getInstance().?.EMPTY_STRING });
                _ = Inheritance.call(self, "delete", .{ existingChildCategoryInterface });
                _ = Inheritance.call(parentCategoryInterface.?, "removeChild", .{ existingChildCategoryInterface });
                _ = Inheritance.call(self, "save", .{ parentCategoryInterface });
                _ = Inheritance.call(self.directory.?, "remove", .{ directoryToBeDeletedAbPath });
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.literal("Will Not Add Null Category"); break :exception error.Exception; }});
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.FAILURE, self, self.commonStrings.?.delete, e });
//             }
    }
};


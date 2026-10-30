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
const CategoryComponent = @import("org/allbinary/business/category/CategoryComponent.zig").CategoryComponent;
const CategoryData = @import("org/allbinary/business/category/CategoryData.zig").CategoryData;
const CategoryFactoryInterface = @import("org/allbinary/business/category/CategoryFactoryInterface.zig").CategoryFactoryInterface;
const CategoryInterface = @import("org/allbinary/business/category/CategoryInterface.zig").CategoryInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CryptFileWriter = @import("org/allbinary/logic/control/crypt/file/CryptFileWriter.zig").CryptFileWriter;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;

pub const CategoryPrivateTree = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.category.CategoryPrivateTree";
    logUtil: ?*LogUtil = null,
    categoryFactoryInterface: ?*CategoryFactoryInterface = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(categoryFactoryInterface: ?*CategoryFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.CATEGORY })) {
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(this.logUtil.?, "putF", .{ commonStrings.?.START, this, String.literal("CategoryPrivateTree(CategoryFactoryInterface categoryFactoryInterface)") });
        }
        this.categoryFactoryInterface = categoryFactoryInterface;
        return this;
    }
    

    // throws Exception
    pub fn save(self: *Self, categoryInterface: ?*CategoryInterface) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Saving Category File: "), Inheritance.receiver(categoryInterface.?, "getFilePath").getFilePath()), self, String.literal("save()") });
        }
        const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.receiver(Inheritance.callStatic(CategoryComponent, "create1", .{ categoryInterface }), "toXmlDoc").toXmlDoc());
        const cryptFileWriter: ?*CryptFileWriter = Inheritance.callStatic(CryptFileWriter, "create2", .{ CategoryData.getInstance().?.UNCRYPTED_EXTENSION, CategoryData.getInstance().?.ENCRYPTED_EXTENSION });
        _ = Inheritance.call(cryptFileWriter.?, "write", .{ Inheritance.receiver(categoryInterface.?, "getFilePath").getFilePath(), document });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("end"), self, String.literal("save()") });
        }
    }
    

    // throws Exception
    pub fn delete(self: *Self, categoryInterface: ?*CategoryInterface) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (Inheritance.receiver(categoryInterface.?, "isLeaf").isLeaf()) {
            const categoryFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ Inheritance.receiver(categoryInterface.?, "getFilePath").getFilePath() }));
            if (categoryFile.?.delete()) {
                if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Removed: "), Inheritance.receiver(categoryInterface.?, "getFilePath").getFilePath()), self, String.literal("delete(CategoryInterface)") });
                }
            }
        } else {
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Not a leaf unable to remove"), self, String.literal("delete(CategoryInterface)") });
            }
        }
    }
};


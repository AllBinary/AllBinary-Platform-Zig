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
// package taghelpers.transform.info

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const BasicTable = @import("admin/taghelpers/BasicTable.zig").BasicTable;
const Portion = @import("org/allbinary/business/installer/Portion.zig").Portion;
const TransformInfoEntityBuilder = @import("org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder.zig").TransformInfoEntityBuilder;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlTableUtil = @import("org/allbinary/logic/communication/sql/AbSqlTableUtil.zig").AbSqlTableUtil;

pub const TransformInfoHelper = struct {
    const Self = @This();
    pub const java_name = "taghelpers.transform.info.TransformInfoHelper";
    base: BasicTable = undefined,
    logUtil: ?*LogUtil = null,
    portion: ?*Portion = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        _ = pageContext;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicTable.create().*;
        this.initFields();
        this.portion = Inheritance.callStatic(Portion, "create1", .{ hashMap });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn drop(self: *Self) ?*String {
        _ = self;
        { // try
            return Inheritance.upcast(?*String, Inheritance.receiverOf(TransformInfoEntityBuilder.getInstance().?, "dropTable").dropTable());
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to drop view info table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.DROP, e });
//             }
//             return @"error";
    }
    

    pub fn create(self: *Self) ?*String {
        _ = self;
        { // try
            return Inheritance.upcast(?*String, Inheritance.receiverOf(TransformInfoEntityBuilder.getInstance().?, "createTable").createTable());
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to create view info table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("create()"), e });
//             }
//             return @"error";
    }
    

    pub fn restore(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Restore Successful");
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(AbSqlTableUtil.getInstance().?, "restoreTable", .{ TransformInfoEntityBuilder.getInstance(), self.portion }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("restore()") });
            }
            return result;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to restore backup"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("restore()"), e });
//             }
//             return @"error";
    }
    

    pub fn backup(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Backup Successful");
            const result: ?*String = Inheritance.upcast(?*String, Inheritance.call(AbSqlTableUtil.getInstance().?, "backupTable", .{ TransformInfoEntityBuilder.getInstance() }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("backup()") });
            }
            return result;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to make backup"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("backup()"), e });
//             }
//             return @"error";
    }
};


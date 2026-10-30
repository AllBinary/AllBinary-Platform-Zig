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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const ModifyTable = @import("admin/taghelpers/ModifyTable.zig").ModifyTable;
const TransformInfoEntityBuilder = @import("org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder.zig").TransformInfoEntityBuilder;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const TransformInfoHttpInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface.zig").TransformInfoHttpInterface;
const TransformInfoHttpStoreNoManipulation = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpStoreNoManipulation.zig").TransformInfoHttpStoreNoManipulation;

pub const TransformInfoRequestHelper = struct {
    const Self = @This();
    pub const java_name = "taghelpers.transform.info.TransformInfoRequestHelper";
    base: ModifyTable = undefined,
    logUtil: ?*LogUtil = null,
    transformInfoInterface: ?*TransformInfoHttpInterface = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create2(propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ModifyTable.create().*;
        this.initFields();
        this.transformInfoInterface = Inheritance.upcast(@TypeOf(this.transformInfoInterface), Inheritance.callStatic(TransformInfoHttpStoreNoManipulation, "create2", .{ propertiesHashMap, pageContext }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn update(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Updated Successfully");
            const hashMapData: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiver(self.transformInfoInterface.?, "toHashMap").toHashMap());
            _ = Inheritance.call(TransformInfoEntityBuilder.getInstance().?, "update", .{ hashMapData });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("update()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to update storefronts table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("update()"), e });
//             }
//             return @"error";
    }
    

    pub fn insert(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Added TransformInfo Successfully");
            const values: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self.transformInfoInterface.?, "toVector").toVector());
            _ = Inheritance.call(TransformInfoEntityBuilder.getInstance().?, "insert", .{ values });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("insert()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to add storefronts table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("insert()"), e });
//             }
//             return @"error";
    }
    

    pub fn delete(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Delete Successfully");
            _ = Inheritance.call(TransformInfoEntityBuilder.getInstance().?, "delete", .{ Inheritance.cast(?*String, Inheritance.receiver(self.transformInfoInterface.?, "getKey").getKey()) });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("delete()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to delete storefronts table"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("delete()"), e });
//             }
//             return @"error";
    }
};


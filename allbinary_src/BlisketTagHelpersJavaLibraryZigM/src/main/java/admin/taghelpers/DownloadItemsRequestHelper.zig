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
// package admin.taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const AbTagData = @import("admin/tags/AbTagData.zig").AbTagData;
const DownloadableItem = @import("org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem.zig").DownloadableItem;
const DownloadItemsEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/item/downloads/DownloadItemsEntityFactory.zig").DownloadItemsEntityFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const HelperTag = @import("tags/HelperTag.zig").HelperTag;
const DownloadableInventoryItemView = @import("views/admin/inventory/download/DownloadableInventoryItemView.zig").DownloadableInventoryItemView;
const InventoryItemViewParentTagHelper = @import("admin/taghelpers/InventoryItemViewParentTagHelper.zig").InventoryItemViewParentTagHelper;
const ModifyTable = @import("admin/taghelpers/ModifyTable.zig").ModifyTable;

pub const DownloadItemsRequestHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.DownloadItemsRequestHelper";
    base: ModifyTable = undefined,
    logUtil: ?*LogUtil = null,
    downloadableItem: ?*DownloadableItem = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        _ = pageContext;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ModifyTable.create().*;
        this.initFields();
        const inventoryTag: ?*HelperTag = Inheritance.cast(?*HelperTag, Inheritance.call(hashMap.?, "get", .{ AbTagData.PARENT }));
        const inventoryItemViewParentTagHelper: ?*InventoryItemViewParentTagHelper = Inheritance.upcast(?*InventoryItemViewParentTagHelper, InventoryItemViewParentTagHelper.getInstance());
        const downloadableInventoryItemView: ?*DownloadableInventoryItemView = Inheritance.upcast(?*DownloadableInventoryItemView, Inheritance.call(inventoryItemViewParentTagHelper.?, "getDownloadableInventoryItemView", .{ inventoryTag }));
        this.downloadableItem = Inheritance.upcast(@TypeOf(this.downloadableItem), Inheritance.receiver(downloadableInventoryItemView.?, "getDownloadableItem").getDownloadableItem());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn insert(self: *Self) ?*String {
        { // try
            const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.downloadableItem.?.toVector());
            _ = Inheritance.call(Inheritance.receiverOf(DownloadItemsEntityFactory.getInstance().?, "getDownloadItemsEntityInstance").getDownloadItemsEntityInstance().?, "insert", .{ vector });
            const success: ?*String = Inheritance.upcast(?*String, String.plus(String.plus(String.literal("Successfully inserted "), self.downloadableItem.?.getId()), String.literal(" into downloaditems table")));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("insert()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = Inheritance.upcast(?*String, String.plus(String.plus(String.literal("Failed to insert "), self.downloadableItem.?.getId()), String.literal(" into downloaditems table"))); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("inserts()"), e });
//             }
//             return @"error";
    }
    

    pub fn delete(self: *Self) ?*String {
        { // try
            _ = Inheritance.call(Inheritance.receiverOf(DownloadItemsEntityFactory.getInstance().?, "getDownloadItemsEntityInstance").getDownloadItemsEntityInstance().?, "delete", .{ self.downloadableItem.?.getId() });
            const success: ?*String = String.literal("Successfully deleted");
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("delete()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to delete"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("delete()"), e });
//             }
//             return @"error";
    }
    

    pub fn update(self: *Self) ?*String {
        { // try
            const success: ?*String = String.literal("Update Successful");
            const values: ?*HashMap = Inheritance.upcast(?*HashMap, self.downloadableItem.?.toHashMap());
            _ = Inheritance.call(Inheritance.receiverOf(DownloadItemsEntityFactory.getInstance().?, "getDownloadItemsEntityInstance").getDownloadItemsEntityInstance().?, "update", .{ values });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.downloadableItem.?.getId() + CommonSeps.getInstance().?.SPACE, success), self, String.literal("update()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = Inheritance.upcast(?*String, String.plus(String.literal("Failed to update: "), self.downloadableItem.?.getId())); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("update()"), e });
//             }
//             return @"error";
    }
};


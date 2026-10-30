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
const BasicItemData = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemData.zig").BasicItemData;
const ItemInterface = @import("org/allbinary/business/user/commerce/inventory/item/ItemInterface.zig").ItemInterface;
const TableMappingInterface = @import("org/allbinary/data/tables/TableMappingInterface.zig").TableMappingInterface;
const InventoryEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory.zig").InventoryEntityFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const HelperTag = @import("tags/HelperTag.zig").HelperTag;
const InventoryItemView = @import("views/admin/inventory/InventoryItemView.zig").InventoryItemView;
const InventoryItemViewParentTagHelper = @import("admin/taghelpers/InventoryItemViewParentTagHelper.zig").InventoryItemViewParentTagHelper;
const ModifyTable = @import("admin/taghelpers/ModifyTable.zig").ModifyTable;

pub const InventoryRequestHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.InventoryRequestHelper";
    base: ModifyTable = undefined,
    logUtil: ?*LogUtil = null,
    basicItemData: ?*BasicItemData = null,
    itemInterface: ?*ItemInterface = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.basicItemData = Inheritance.upcast(?*BasicItemData, BasicItemData.getInstance());
        
    }
    

    pub fn create2(propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        _ = pageContext;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ModifyTable.create().*;
        this.initFields();
        const inventoryTag: ?*HelperTag = Inheritance.cast(?*HelperTag, Inheritance.call(propertiesHashMap.?, "get", .{ AbTagData.PARENT }));
        const itemView: ?*InventoryItemView = Inheritance.upcast(?*InventoryItemView, Inheritance.call(InventoryItemViewParentTagHelper.getInstance().?, "getInventoryItemView", .{ inventoryTag }));
        this.itemInterface = Inheritance.upcast(@TypeOf(this.itemInterface), Inheritance.receiver(itemView.?, "getItemInterface").getItemInterface());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn insert(self: *Self) ?*String {
        { // try
            const dataMappingInterface: ?*TableMappingInterface = Inheritance.cast(?*TableMappingInterface, self.getItemInterface());
            const values: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, dataMappingInterface.?.toVector());
            _ = Inheritance.call(Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance().?, "insert", .{ values });
            const success: ?*String = String.literal("Successfully Added Product");
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("insert()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to add item to Inventory"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("insert()"), e });
//             }
//             return @"error";
    }
    

    pub fn delete(self: *Self) ?*String {
        { // try
            const dataMappingInterface: ?*TableMappingInterface = Inheritance.cast(?*TableMappingInterface, self.getItemInterface());
            const id: ?*String = Inheritance.cast(?*String, dataMappingInterface.?.getKey());
            _ = Inheritance.call(Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance().?, "deleteWhere", .{ self.basicItemData.?.ID, id });
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Successfully Removed the item with ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.basicItemData.?.ID });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("=") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ id });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" from to the Inventory table") });
            const success: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed to remove item with from Inventory"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "tagStrings").*.?.DO_START_TAG, e });
//             }
//             return @"error";
    }
    

    pub fn update(self: *Self) ?*String {
        { // try
            _ = self.delete();
            _ = self.insert();
            const success: ?*String = String.literal("Item Successfully Updated");
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("update()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Failed To Update Item"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("update()"), e });
//             }
//             return @"error";
    }
    

    pub fn getItemInterface(self: *Self) ?*ItemInterface {
        return self.itemInterface;
    }
};


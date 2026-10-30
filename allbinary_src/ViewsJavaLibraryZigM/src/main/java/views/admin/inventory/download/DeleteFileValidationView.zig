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
// package views.admin.inventory.download

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicItemData = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemData.zig").BasicItemData;
const DownloadItemData = @import("org/allbinary/business/user/commerce/inventory/item/download/DownloadItemData.zig").DownloadItemData;
const InventoryEntity = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity.zig").InventoryEntity;
const InventoryEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory.zig").InventoryEntityFactory;
const DownloadItemsEntity = @import("org/allbinary/data/tables/user/commerce/inventory/item/downloads/DownloadItemsEntity.zig").DownloadItemsEntity;
const DownloadItemsEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/item/downloads/DownloadItemsEntityFactory.zig").DownloadItemsEntityFactory;
const RequestParams = @import("org/allbinary/logic/communication/http/request/RequestParams.zig").RequestParams;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const DownloadableInventoryItemView = @import("views/admin/inventory/download/DownloadableInventoryItemView.zig").DownloadableInventoryItemView;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const DeleteFileValidationView = struct {
    const Self = @This();
    pub const java_name = "views.admin.inventory.download.DeleteFileValidationView";
    base: DownloadableInventoryItemView = undefined,
    downloadItemId: ?*String = null,
    // Implements ValidationComponentInterface

    fn initFields(this: *Self) void {
        this.downloadItemId = null;
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(DownloadableInventoryItemView, "create2", .{ transformInfoInterface, StringUtil.getInstance().?.EMPTY_STRING }).*;
        this.initFields();
        _ = this.getFormData();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getFormData(self: *Self) void {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.callStatic(RequestParams, "create1", .{ Inheritance.fieldPointer(self, "request").* }).toHashMap());
        if (hashMap == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("No Request Params Found"); break :exception error.Exception; }});
        }
        Inheritance.fieldPointer(self, "id").* = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Inheritance.fieldPointer(self, "basicItemData").*.?.ID }));
        self.downloadItemId = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.ID }));
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            if (Inheritance.fieldPointer(self, "id").* == null or !Inheritance.call(StringValidationUtil.getInstance().?, "isNumber", .{ Inheritance.fieldPointer(self, "id").* })) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const inventoryEntity: ?*InventoryEntity = Inheritance.upcast(?*InventoryEntity, Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance());
            Inheritance.fieldPointer(self, "itemInterface").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "itemInterface").*), Inheritance.call(inventoryEntity.?, "getItem", .{ Inheritance.fieldPointer(self, "id").* }));
            if (Inheritance.fieldPointer(self, "itemInterface").* == null) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const downloadItemsEntity: ?*DownloadItemsEntity = Inheritance.upcast(?*DownloadItemsEntity, Inheritance.receiverOf(DownloadItemsEntityFactory.getInstance().?, "getDownloadItemsEntityInstance").getDownloadItemsEntityInstance());
            const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(downloadItemsEntity.?, "getForItem", .{ Inheritance.fieldPointer(self, "id").*, self.downloadItemId }));
            if (vector.?.size() != 1) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        }
        // catch (Exception e):
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn toValidationInfoDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    pub fn toValidationInfoNode(self: *Self, document: ?*Document) ?*Node {
        _ = document;
        _ = self;
        return null;
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            if (Inheritance.fieldPointer(self, "id").* == null or !Inheritance.call(StringValidationUtil.getInstance().?, "isNumber", .{ Inheritance.fieldPointer(self, "id").* })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Id is not valid.<br />") });
            }
            if (Inheritance.call(Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance().?, "getItem", .{ Inheritance.fieldPointer(self, "id").* }) == null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Item does not exist.<br />") });
            }
            const downloadItemsEntity: ?*DownloadItemsEntity = Inheritance.upcast(?*DownloadItemsEntity, Inheritance.receiverOf(DownloadItemsEntityFactory.getInstance().?, "getDownloadItemsEntityInstance").getDownloadItemsEntityInstance());
            const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(downloadItemsEntity.?, "getForItem", .{ Inheritance.fieldPointer(self, "id").*, self.downloadItemId }));
            if (vector.?.size() == 0) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("DownloadItem does not exist.<br />") });
            }
            if (vector.?.size() > 1) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("To Many DownloadItems exist.<br />") });
            }
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             return String.literal("Unkown Validation Error.<br />");
    }
};


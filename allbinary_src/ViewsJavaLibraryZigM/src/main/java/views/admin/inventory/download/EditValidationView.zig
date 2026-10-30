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
const DownloadableItem = @import("org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem.zig").DownloadableItem;
const MoneyException = @import("org/allbinary/business/user/commerce/money/MoneyException.zig").MoneyException;
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
const Integer = @import("java/lang/Integer.zig").Integer;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const EditValidationView = struct {
    const Self = @This();
    pub const java_name = "views.admin.inventory.download.EditValidationView";
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
    

    // throws Exception
    pub fn isValid(self: *Self) ?*Boolean {
        if (Inheritance.fieldPointer(self, "id").* == null or !Inheritance.call(StringValidationUtil.getInstance().?, "isNumber", .{ Inheritance.fieldPointer(self, "id").* })) {
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        Inheritance.fieldPointer(self, "itemInterface").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "itemInterface").*), Inheritance.call(Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance().?, "getItem", .{ Inheritance.fieldPointer(self, "id").* }));
        if (Inheritance.fieldPointer(self, "itemInterface").* == null) {
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        const downloadable: i32 = (std.fmt.parseInt(i32, Inheritance.receiverOf(Inheritance.fieldPointer(self, "itemInterface").*.?, "getDownloads").getDownloads().?.bytes, 10) catch @panic("java.lang.NumberFormatException"));
        if (downloadable != 0) {
            const downloadItemsEntity: ?*DownloadItemsEntity = Inheritance.upcast(?*DownloadItemsEntity, Inheritance.receiverOf(DownloadItemsEntityFactory.getInstance().?, "getDownloadItemsEntityInstance").getDownloadItemsEntityInstance());
            const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(downloadItemsEntity.?, "getForItem", .{ Inheritance.fieldPointer(self, "id").*, self.downloadItemId }));
            if (vector.?.size() != 1) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            Inheritance.fieldPointer(self, "downloadableItem").* = Inheritance.cast(?*DownloadableItem, Inheritance.call(vector.?, "get", .{ 0 }));
        } else {
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
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
    

    // throws MoneyException
    pub fn validationInfo(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        if (Inheritance.fieldPointer(self, "id").* == null or !Inheritance.call(StringValidationUtil.getInstance().?, "isNumber", .{ Inheritance.fieldPointer(self, "id").* })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Id is not valid.<br />") });
        }
        if (Inheritance.call(Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance().?, "getItem", .{ Inheritance.fieldPointer(self, "id").* }) == null) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Item does not exist.<br />") });
        }
        const downloadable: i32 = (std.fmt.parseInt(i32, Inheritance.receiverOf(Inheritance.fieldPointer(self, "itemInterface").*.?, "getDownloads").getDownloads().?.bytes, 10) catch @panic("java.lang.NumberFormatException"));
        if (downloadable != 0) {
            if (Inheritance.fieldPointer(self, "downloadableItem").* == null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("DownloadableItem does not exist for item.<br />") });
            }
        } else {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Item should not have DownloadableItem.<br />") });
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};


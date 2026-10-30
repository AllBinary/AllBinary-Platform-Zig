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
// package views.generic.inventory

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicItemData = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemData.zig").BasicItemData;
const InventoryEntity = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity.zig").InventoryEntity;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;

pub const InventoryColumnUtil = struct {
    const Self = @This();
    pub const java_name = "views.generic.inventory.InventoryColumnUtil";
    logUtil: ?*LogUtil = null,
    basicItemData: ?*BasicItemData = null,
    var instance: ?*InventoryColumnUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = InventoryColumnUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.basicItemData = Inheritance.upcast(?*BasicItemData, BasicItemData.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*InventoryColumnUtil {
        return Inheritance.upcast(?*InventoryColumnUtil, InventoryColumnUtil.instance);
    }
    

    pub fn getColumnWhereLike(self: *Self, inventoryEntity: ?*InventoryEntity, category: ?*String, column: ?*String) ?*BasicArrayList {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Start Category: "), category), self, String.literal("getKeywords") });
        const keywords: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const vectorOfHashMaps: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(inventoryEntity.?, "getAllRows").getAllRows());
        const size: i32 = vectorOfHashMaps.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const hashMap: ?*HashMap = Inheritance.cast(?*HashMap, Inheritance.call(vectorOfHashMaps.?, "get", .{ index }));
            const categoryName: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ self.basicItemData.?.CATEGORY }));
            if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ categoryName }) and Inheritance.call(categoryName.?, "startsWith", .{ category })) {
                _ = Inheritance.call(keywords.?, "add", .{ Inheritance.call(hashMap.?, "get", .{ column }) });
            }
            }
        }
        return keywords;
    }
};


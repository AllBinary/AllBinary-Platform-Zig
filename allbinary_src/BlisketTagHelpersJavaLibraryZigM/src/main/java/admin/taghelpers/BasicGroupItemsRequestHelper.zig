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
const Calendar = @import("java/util/Calendar.zig").Calendar;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const BasicItemData = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemData.zig").BasicItemData;
const BasicGroupItemData = @import("org/allbinary/business/user/commerce/inventory/item/group/BasicGroupItemData.zig").BasicGroupItemData;
const BasicGroupItemsEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/item/groups/BasicGroupItemsEntityFactory.zig").BasicGroupItemsEntityFactory;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const ModifyTable = @import("admin/taghelpers/ModifyTable.zig").ModifyTable;
const Long = @import("java/lang/Long.zig").Long;

pub const BasicGroupItemsRequestHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.BasicGroupItemsRequestHelper";
    base: ModifyTable = undefined,
    logUtil: ?*LogUtil = null,
    basicItemData: ?*BasicItemData = null,
    request: ?*HttpServletRequest = null,
    id: ?*String = null,
    itemOne: ?*String = null,
    itemTwo: ?*String = null,
    itemThree: ?*String = null,
    itemFour: ?*String = null,
    itemFive: ?*String = null,
    itemSix: ?*String = null,
    itemSeven: ?*String = null,
    itemEight: ?*String = null,
    itemNine: ?*String = null,
    itemTen: ?*String = null,
    timeEntered: ?*String = null,
    lastModified: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.basicItemData = Inheritance.upcast(?*BasicItemData, BasicItemData.getInstance());
        
        this.id = null;
        this.itemOne = null;
        this.itemTwo = null;
        this.itemThree = null;
        this.itemFour = null;
        this.itemFive = null;
        this.itemSix = null;
        this.itemSeven = null;
        this.itemEight = null;
        this.itemNine = null;
        this.itemTen = null;
        this.timeEntered = null;
        this.lastModified = null;
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        _ = hashMap;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ModifyTable.create().*;
        this.initFields();
        this.request = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
        _ = this.getFormData();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getFormData(self: *Self) void {
        self.id = Inheritance.upcast(@TypeOf(self.id), Inheritance.call(self.request.?, "getParameter", .{ self.basicItemData.?.ID }));
        self.itemOne = Inheritance.upcast(@TypeOf(self.itemOne), Inheritance.call(self.request.?, "getParameter", .{ BasicGroupItemData.ITEM_ONE }));
        self.itemTwo = Inheritance.upcast(@TypeOf(self.itemTwo), Inheritance.call(self.request.?, "getParameter", .{ BasicGroupItemData.ITEM_TWO }));
        self.itemThree = Inheritance.upcast(@TypeOf(self.itemThree), Inheritance.call(self.request.?, "getParameter", .{ BasicGroupItemData.ITEM_THREE }));
        self.itemFour = Inheritance.upcast(@TypeOf(self.itemFour), Inheritance.call(self.request.?, "getParameter", .{ BasicGroupItemData.ITEM_FOUR }));
        self.itemFive = Inheritance.upcast(@TypeOf(self.itemFive), Inheritance.call(self.request.?, "getParameter", .{ BasicGroupItemData.ITEM_FIVE }));
        self.itemSix = Inheritance.upcast(@TypeOf(self.itemSix), Inheritance.call(self.request.?, "getParameter", .{ BasicGroupItemData.ITEM_SIX }));
        self.itemSeven = Inheritance.upcast(@TypeOf(self.itemSeven), Inheritance.call(self.request.?, "getParameter", .{ BasicGroupItemData.ITEM_SEVEN }));
        self.itemEight = Inheritance.upcast(@TypeOf(self.itemEight), Inheritance.call(self.request.?, "getParameter", .{ BasicGroupItemData.ITEM_EIGHT }));
        self.itemNine = Inheritance.upcast(@TypeOf(self.itemNine), Inheritance.call(self.request.?, "getParameter", .{ BasicGroupItemData.ITEM_NINE }));
        self.itemTen = Inheritance.upcast(@TypeOf(self.itemTen), Inheritance.call(self.request.?, "getParameter", .{ BasicGroupItemData.ITEM_TEN }));
        self.timeEntered = Inheritance.upcast(@TypeOf(self.timeEntered), Inheritance.call(self.request.?, "getParameter", .{ EntryData.getInstance().?.TIMECREATED }));
        self.lastModified = Inheritance.upcast(@TypeOf(self.lastModified), Inheritance.call(self.request.?, "getParameter", .{ EntryData.getInstance().?.LASTMODIFIED }));
    }
    

    pub fn getHashMap(self: *Self) ?*HashMap {
        const values: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(values.?, "put", .{ self.basicItemData.?.ID, self.id });
        _ = Inheritance.call(values.?, "put", .{ BasicGroupItemData.ITEM_ONE, self.itemOne });
        _ = Inheritance.call(values.?, "put", .{ BasicGroupItemData.ITEM_TWO, self.itemTwo });
        _ = Inheritance.call(values.?, "put", .{ BasicGroupItemData.ITEM_THREE, self.itemThree });
        _ = Inheritance.call(values.?, "put", .{ BasicGroupItemData.ITEM_FOUR, self.itemFour });
        _ = Inheritance.call(values.?, "put", .{ BasicGroupItemData.ITEM_FIVE, self.itemFive });
        _ = Inheritance.call(values.?, "put", .{ BasicGroupItemData.ITEM_SIX, self.itemSix });
        _ = Inheritance.call(values.?, "put", .{ BasicGroupItemData.ITEM_SEVEN, self.itemSeven });
        _ = Inheritance.call(values.?, "put", .{ BasicGroupItemData.ITEM_EIGHT, self.itemEight });
        _ = Inheritance.call(values.?, "put", .{ BasicGroupItemData.ITEM_NINE, self.itemNine });
        _ = Inheritance.call(values.?, "put", .{ BasicGroupItemData.ITEM_TEN, self.itemTen });
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
        _ = Inheritance.call(values.?, "put", .{ EntryData.getInstance().?.LASTMODIFIED, time });
        return values;
    }
    

    pub fn insert(self: *Self) ?*String {
        { // try
            const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
            const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
            const values: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(values.?, "add", .{ self.id });
            _ = Inheritance.call(values.?, "add", .{ self.itemOne });
            _ = Inheritance.call(values.?, "add", .{ self.itemTwo });
            _ = Inheritance.call(values.?, "add", .{ self.itemThree });
            _ = Inheritance.call(values.?, "add", .{ self.itemFour });
            _ = Inheritance.call(values.?, "add", .{ self.itemFive });
            _ = Inheritance.call(values.?, "add", .{ self.itemSix });
            _ = Inheritance.call(values.?, "add", .{ self.itemSeven });
            _ = Inheritance.call(values.?, "add", .{ self.itemEight });
            _ = Inheritance.call(values.?, "add", .{ self.itemNine });
            _ = Inheritance.call(values.?, "add", .{ self.itemTen });
            _ = Inheritance.call(values.?, "add", .{ time });
            _ = Inheritance.call(values.?, "add", .{ time });
            _ = Inheritance.call(Inheritance.receiverOf(BasicGroupItemsEntityFactory.getInstance().?, "getBasicGroupItemsEntityInstance").getBasicGroupItemsEntityInstance().?, "insert", .{ values });
            const success: ?*String = Inheritance.upcast(?*String, String.plus(String.plus(String.literal("Successfully inserted "), self.id), String.literal(" into items table")));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ success, self, String.literal("insert()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = Inheritance.upcast(?*String, String.plus(String.plus(String.literal("Failed to insert "), self.id), String.literal(" into items table"))); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("inserts()"), e });
//             }
//             return @"error";
    }
    

    pub fn delete(self: *Self) ?*String {
        { // try
            _ = Inheritance.call(Inheritance.receiverOf(BasicGroupItemsEntityFactory.getInstance().?, "getBasicGroupItemsEntityInstance").getBasicGroupItemsEntityInstance().?, "delete", .{ self.id });
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
            const success: ?*String = String.literal("Update Pricing Successful");
            const values: ?*HashMap = Inheritance.upcast(?*HashMap, self.getHashMap());
            _ = Inheritance.call(Inheritance.receiverOf(BasicGroupItemsEntityFactory.getInstance().?, "getBasicGroupItemsEntityInstance").getBasicGroupItemsEntityInstance().?, "update", .{ values });
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGS })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.id }).?, "append", .{ CommonSeps.getInstance().?.SPACE }).?, "append", .{ success }))), self, String.literal("update()") });
            }
            return success;
        }
        // catch (Exception e):
//             const @"error": ?*String = Inheritance.upcast(?*String, String.plus(String.literal("Failed to update: "), self.id)); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("update()"), e });
//             }
//             return @"error";
    }
};


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
const PermissionItemData = @import("org/allbinary/business/user/commerce/inventory/item/permission/PermissionItemData.zig").PermissionItemData;
const PermissionItemsEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/item/permissions/PermissionItemsEntityFactory.zig").PermissionItemsEntityFactory;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const ModifyTable = @import("admin/taghelpers/ModifyTable.zig").ModifyTable;
const Long = @import("java/lang/Long.zig").Long;

pub const PermissionItemsRequestHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.PermissionItemsRequestHelper";
    base: ModifyTable = undefined,
    logUtil: ?*LogUtil = null,
    basicItemData: ?*BasicItemData = null,
    request: ?*HttpServletRequest = null,
    id: ?*String = null,
    enabled: ?*String = null,
    number: ?*String = null,
    who: ?*String = null,
    what: ?*String = null,
    @"type": ?*String = null,
    remoteAddr: ?*String = null,
    startTime: ?*String = null,
    endTime: ?*String = null,
    price: ?*String = null,
    timeEntered: ?*String = null,
    lastModified: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.basicItemData = Inheritance.upcast(?*BasicItemData, BasicItemData.getInstance());
        
        this.id = null;
        this.enabled = null;
        this.number = null;
        this.who = null;
        this.what = null;
        this.@"type" = null;
        this.remoteAddr = null;
        this.startTime = null;
        this.endTime = null;
        this.price = null;
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
        self.number = Inheritance.upcast(@TypeOf(self.number), Inheritance.call(self.request.?, "getParameter", .{ self.basicItemData.?.NUMBER }));
        self.enabled = Inheritance.upcast(@TypeOf(self.enabled), Inheritance.call(self.request.?, "getParameter", .{ EntryData.getInstance().?.ENABLE }));
        self.who = Inheritance.upcast(@TypeOf(self.who), Inheritance.call(self.request.?, "getParameter", .{ PermissionItemData.WHO }));
        self.what = Inheritance.upcast(@TypeOf(self.what), Inheritance.call(self.request.?, "getParameter", .{ PermissionItemData.WHAT }));
        self.@"type" = Inheritance.upcast(@TypeOf(self.@"type"), Inheritance.call(self.request.?, "getParameter", .{ PermissionItemData.TYPE }));
        self.remoteAddr = Inheritance.upcast(@TypeOf(self.remoteAddr), Inheritance.call(self.request.?, "getParameter", .{ PermissionItemData.REMOTE_ADDR }));
        self.startTime = Inheritance.upcast(@TypeOf(self.startTime), Inheritance.call(self.request.?, "getParameter", .{ PermissionItemData.START_TIME }));
        self.endTime = Inheritance.upcast(@TypeOf(self.endTime), Inheritance.call(self.request.?, "getParameter", .{ PermissionItemData.END_TIME }));
        self.price = Inheritance.upcast(@TypeOf(self.price), Inheritance.call(self.request.?, "getParameter", .{ self.basicItemData.?.PRICE }));
        self.timeEntered = Inheritance.upcast(@TypeOf(self.timeEntered), Inheritance.call(self.request.?, "getParameter", .{ EntryData.getInstance().?.TIMECREATED }));
        self.lastModified = Inheritance.upcast(@TypeOf(self.lastModified), Inheritance.call(self.request.?, "getParameter", .{ EntryData.getInstance().?.LASTMODIFIED }));
    }
    

    pub fn getHashMap(self: *Self) ?*HashMap {
        const values: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(values.?, "put", .{ self.basicItemData.?.ID, self.id });
        _ = Inheritance.call(values.?, "put", .{ self.basicItemData.?.NUMBER, self.number });
        _ = Inheritance.call(values.?, "put", .{ EntryData.getInstance().?.ENABLE, self.enabled });
        _ = Inheritance.call(values.?, "put", .{ PermissionItemData.WHO, self.who });
        _ = Inheritance.call(values.?, "put", .{ PermissionItemData.WHAT, self.what });
        _ = Inheritance.call(values.?, "put", .{ PermissionItemData.TYPE, self.@"type" });
        _ = Inheritance.call(values.?, "put", .{ PermissionItemData.REMOTE_ADDR, self.remoteAddr });
        _ = Inheritance.call(values.?, "put", .{ PermissionItemData.START_TIME, self.startTime });
        _ = Inheritance.call(values.?, "put", .{ PermissionItemData.END_TIME, self.endTime });
        _ = Inheritance.call(values.?, "put", .{ self.basicItemData.?.PRICE, self.price });
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
            _ = Inheritance.call(values.?, "add", .{ self.number });
            _ = Inheritance.call(values.?, "add", .{ self.enabled });
            _ = Inheritance.call(values.?, "add", .{ self.who });
            _ = Inheritance.call(values.?, "add", .{ self.what });
            _ = Inheritance.call(values.?, "add", .{ self.@"type" });
            _ = Inheritance.call(values.?, "add", .{ self.remoteAddr });
            _ = Inheritance.call(values.?, "add", .{ self.startTime });
            _ = Inheritance.call(values.?, "add", .{ self.endTime });
            _ = Inheritance.call(values.?, "add", .{ self.price });
            _ = Inheritance.call(values.?, "add", .{ time });
            _ = Inheritance.call(values.?, "add", .{ time });
            _ = Inheritance.call(Inheritance.receiverOf(PermissionItemsEntityFactory.getInstance().?, "getPermissionItemsEntityInstance").getPermissionItemsEntityInstance().?, "insert", .{ values });
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
            _ = Inheritance.call(Inheritance.receiverOf(PermissionItemsEntityFactory.getInstance().?, "getPermissionItemsEntityInstance").getPermissionItemsEntityInstance().?, "delete", .{ self.id });
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
            _ = Inheritance.call(Inheritance.receiverOf(PermissionItemsEntityFactory.getInstance().?, "getPermissionItemsEntityInstance").getPermissionItemsEntityInstance().?, "update", .{ values });
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


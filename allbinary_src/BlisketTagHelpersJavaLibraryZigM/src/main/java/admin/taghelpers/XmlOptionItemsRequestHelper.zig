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
const XmlOptionItemData = @import("org/allbinary/business/user/commerce/inventory/item/option/XmlOptionItemData.zig").XmlOptionItemData;
const XmlOptionItemsEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/item/options/XmlOptionItemsEntityFactory.zig").XmlOptionItemsEntityFactory;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const ModifyTable = @import("admin/taghelpers/ModifyTable.zig").ModifyTable;
const Long = @import("java/lang/Long.zig").Long;

pub const XmlOptionItemsRequestHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.XmlOptionItemsRequestHelper";
    base: ModifyTable = undefined,
    logUtil: ?*LogUtil = null,
    basicItemData: ?*BasicItemData = null,
    request: ?*HttpServletRequest = null,
    id: ?*String = null,
    xmlFileStatus: ?*String = null,
    optionXmlFile: ?*String = null,
    timeEntered: ?*String = null,
    lastModified: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.basicItemData = Inheritance.upcast(?*BasicItemData, BasicItemData.getInstance());
        
        this.id = null;
        this.xmlFileStatus = null;
        this.optionXmlFile = null;
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
        self.xmlFileStatus = Inheritance.upcast(@TypeOf(self.xmlFileStatus), Inheritance.call(self.request.?, "getParameter", .{ XmlOptionItemData.XML_FILE_STATUS }));
        self.optionXmlFile = Inheritance.upcast(@TypeOf(self.optionXmlFile), Inheritance.call(self.request.?, "getParameter", .{ XmlOptionItemData.OPTION_XML_FILE }));
        self.timeEntered = Inheritance.upcast(@TypeOf(self.timeEntered), Inheritance.call(self.request.?, "getParameter", .{ EntryData.getInstance().?.TIMECREATED }));
        self.lastModified = Inheritance.upcast(@TypeOf(self.lastModified), Inheritance.call(self.request.?, "getParameter", .{ EntryData.getInstance().?.LASTMODIFIED }));
    }
    

    pub fn getHashMap(self: *Self) ?*HashMap {
        const values: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(values.?, "put", .{ self.basicItemData.?.ID, self.id });
        _ = Inheritance.call(values.?, "put", .{ XmlOptionItemData.XML_FILE_STATUS, self.xmlFileStatus });
        _ = Inheritance.call(values.?, "put", .{ XmlOptionItemData.OPTION_XML_FILE, self.optionXmlFile });
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
            _ = Inheritance.call(values.?, "add", .{ self.xmlFileStatus });
            _ = Inheritance.call(values.?, "add", .{ self.optionXmlFile });
            _ = Inheritance.call(values.?, "add", .{ time });
            _ = Inheritance.call(values.?, "add", .{ time });
            _ = Inheritance.call(Inheritance.receiverOf(XmlOptionItemsEntityFactory.getInstance().?, "getXmlOptionItemsEntityInstance").getXmlOptionItemsEntityInstance().?, "insert", .{ values });
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
            _ = Inheritance.call(Inheritance.receiverOf(XmlOptionItemsEntityFactory.getInstance().?, "getXmlOptionItemsEntityInstance").getXmlOptionItemsEntityInstance().?, "delete", .{ self.id });
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
            const values: ?*HashMap = Inheritance.upcast(?*HashMap, self.getHashMap());
            _ = Inheritance.call(Inheritance.receiverOf(XmlOptionItemsEntityFactory.getInstance().?, "getXmlOptionItemsEntityInstance").getXmlOptionItemsEntityInstance().?, "update", .{ values });
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


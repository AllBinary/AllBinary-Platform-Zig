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
// package org.allbinary.business.user.commerce.inventory.item.download

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Calendar = @import("java/util/Calendar.zig").Calendar;
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const DownloadItemData = @import("org/allbinary/business/user/commerce/inventory/item/download/DownloadItemData.zig").DownloadItemData;
const DownloadableItem = @import("org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem.zig").DownloadableItem;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const DownloadableItemView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    downloadableItem: ?*DownloadableItem = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
    }
    

    pub fn create1(downloadableItem: ?*DownloadableItem) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.downloadableItem = downloadableItem;
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PRODUCTSEARCHLOGGING })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("toXmlNode") });
        }
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, self.downloadableItem.?.toHashMap());
        const totalTime: i64 = Inheritance.receiverOf(self.downloadableItem.?.getValidTime().?, "longValue").longValue();
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        const year: i32 = Inheritance.call(calendar.?, "get", .{ Calendar.YEAR });
        const month: i32 = Inheritance.call(calendar.?, "get", .{ Calendar.MONTH });
        const day: i32 = Inheritance.call(calendar.?, "get", .{ Calendar.DAY_OF_MONTH });
        const hour: i32 = Inheritance.call(calendar.?, "get", .{ Calendar.HOUR });
        const minute: i32 = Inheritance.call(calendar.?, "get", .{ Calendar.MINUTE });
        const second: i32 = Inheritance.call(calendar.?, "get", .{ Calendar.SECOND });
        _ = Inheritance.call(calendar.?, "setTimeInMillis", .{ calendar.?.getTimeInMillis() + totalTime });
        const yearDelta: i32 = Inheritance.call(calendar.?, "get", .{ Calendar.YEAR });
        const monthDelta: i32 = Inheritance.call(calendar.?, "get", .{ Calendar.MONTH });
        const dayDelta: i32 = Inheritance.call(calendar.?, "get", .{ Calendar.DAY_OF_MONTH });
        const hourDelta: i32 = Inheritance.call(calendar.?, "get", .{ Calendar.HOUR });
        const minuteDelta: i32 = Inheritance.call(calendar.?, "get", .{ Calendar.MINUTE });
        const secondDelta: i32 = Inheritance.call(calendar.?, "get", .{ Calendar.SECOND });
        _ = Inheritance.call(hashMap.?, "put", .{ DownloadItemData.VALID_TIME_YEARS, Inheritance.callStatic(Integer, "valueOf", .{ yearDelta - year }) });
        _ = Inheritance.call(hashMap.?, "put", .{ DownloadItemData.VALID_TIME_MONTHS, Inheritance.callStatic(Integer, "valueOf", .{ monthDelta - month }) });
        _ = Inheritance.call(hashMap.?, "put", .{ DownloadItemData.VALID_TIME_DAYS, Inheritance.callStatic(Integer, "valueOf", .{ dayDelta - day }) });
        _ = Inheritance.call(hashMap.?, "put", .{ DownloadItemData.VALID_TIME_HOURS, Inheritance.callStatic(Integer, "valueOf", .{ hourDelta - hour }) });
        _ = Inheritance.call(hashMap.?, "put", .{ DownloadItemData.VALID_TIME_MINUTES, Inheritance.callStatic(Integer, "valueOf", .{ minuteDelta - minute }) });
        _ = Inheritance.call(hashMap.?, "put", .{ DownloadItemData.VALID_TIME_SECONDS, Inheritance.callStatic(Integer, "valueOf", .{ secondDelta - second }) });
        const keySet: ?*Set = Inheritance.upcast(?*Set, hashMap.?.keySet());
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ DownloadItemData.NAME }));
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        const nameArray: []?Object = keySet.?.toArray();
        const size: i32 = @as(i32, @intCast(nameArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const name: ?*String = Inheritance.cast(?*String, nameArray[@intCast(index)]);
            var value: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ name }));
            value = Inheritance.upcast(@TypeOf(value), Inheritance.call(stringUtil.?, "getNonNull", .{ value }));
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, name, value }) });
            }
        }
        return node;
    }
    

    pub fn toXmlDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    pub fn view(self: *Self) ?*String {
        _ = self;
        return null;
    }
};


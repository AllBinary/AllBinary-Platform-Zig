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
// package org.allbinary.business.user.commerce.inventory.item

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const BasicItemData = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemData.zig").BasicItemData;
const ItemInterface = @import("org/allbinary/business/user/commerce/inventory/item/ItemInterface.zig").ItemInterface;

pub const BasicItemView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.item.BasicItemView";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    basicItemData: ?*BasicItemData = null,
    itemInterface: ?*ItemInterface = null,
    vector: ?*BasicArrayList = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.basicItemData = Inheritance.upcast(?*BasicItemData, BasicItemData.getInstance());
        
        
    }
    

    pub fn create2(itemInterface: ?*ItemInterface, vector: ?*BasicArrayList) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.itemInterface = itemInterface;
        this.vector = vector;
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.PRODUCTSEARCHLOGGING })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("toXmlNode") });
        }
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiver(self.itemInterface.?, "toHashMap").toHashMap());
        const EMPTY_STRING: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        _ = Inheritance.call(hashMap.?, "put", .{ self.basicItemData.?.IMAGE, EMPTY_STRING });
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        const keySet: ?*Set = Inheritance.upcast(?*Set, hashMap.?.keySet());
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ self.basicItemData.?.ITEM }));
        const nameArray: []?Object = keySet.?.toArray();
        const size2: i32 = @as(i32, @intCast(nameArray.len));
        {
            var index: i32 = 0;
            while (index < size2) : (index += 1) {
            const name: ?*String = Inheritance.cast(?*String, nameArray[@intCast(index)]);
            var value: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ name }));
            value = Inheritance.upcast(@TypeOf(value), Inheritance.call(stringUtil.?, "getNonNull", .{ value }));
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, name, value }) });
            }
        }
        const totalNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, self.basicItemData.?.TOTAL, Object.toString(Object.of(Inheritance.receiver(self.itemInterface.?, "getTotal").getTotal())) }));
        _ = Inheritance.call(node.?, "appendChild", .{ totalNode });
        const size: i32 = self.vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const domNodeInterface: ?*DomNodeInterface = Inheritance.cast(?*DomNodeInterface, Inheritance.call(self.vector.?, "get", .{ index }));
            const customNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(domNodeInterface.?, "toXmlNode", .{ document }));
            _ = Inheritance.call(node.?, "appendChild", .{ customNode });
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


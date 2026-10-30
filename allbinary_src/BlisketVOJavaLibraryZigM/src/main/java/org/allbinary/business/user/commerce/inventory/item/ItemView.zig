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
const StreetAddressData = @import("org/allbinary/business/user/address/StreetAddressData.zig").StreetAddressData;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const BasicItemView = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemView.zig").BasicItemView;
const ItemData = @import("org/allbinary/business/user/commerce/inventory/item/ItemData.zig").ItemData;
const OrderItemInterface = @import("org/allbinary/business/user/commerce/inventory/item/OrderItemInterface.zig").OrderItemInterface;

pub const ItemView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.item.ItemView";
    itemInterface: ?*OrderItemInterface = null,
    vector: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(itemInterface: ?*OrderItemInterface, vector: ?*BasicArrayList) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.itemInterface = itemInterface;
        this.vector = vector;
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiver(self.itemInterface.?, "toHashMap").toHashMap());
        const keySet: ?*Set = Inheritance.upcast(?*Set, hashMap.?.keySet());
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ ItemData.ITEM }));
        const basicItemView: ?*BasicItemView = Inheritance.callStatic(BasicItemView, "create2", .{ self.itemInterface, self.vector });
        _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(basicItemView.?, "toXmlNode", .{ document }) });
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
        const shippingAddressNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ StreetAddressData.NAME }));
        _ = Inheritance.call(shippingAddressNode.?, "appendChild", .{ Inheritance.call(Inheritance.receiver(self.itemInterface.?, "getShippingAddress").getShippingAddress().?, "toXmlNode", .{ document }) });
        return node;
    }
};


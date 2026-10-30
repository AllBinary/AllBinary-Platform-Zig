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
// package org.allbinary.business.user.commerce.inventory.basket

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const HashSet = @import("java/util/HashSet.zig").HashSet;
// const Set = @import("java/util/Set.zig").Set;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Item = @import("org/allbinary/business/user/commerce/inventory/item/Item.zig").Item;
const ItemView = @import("org/allbinary/business/user/commerce/inventory/item/ItemView.zig").ItemView;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const BasketData = @import("org/allbinary/business/user/commerce/inventory/basket/BasketData.zig").BasketData;
const Integer = @import("java/lang/Integer.zig").Integer;
const Float = @import("java/lang/Float.zig").Float;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const BasketReview = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.basket.BasketReview";
    items: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.items = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        _ = self;
        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
    }
    

    pub fn addItem(self: *Self, item: ?*Item) void {
        _ = Inheritance.call(self.items.?, "add", .{ item });
    }
    

    pub fn getItems(self: *Self) ?*BasicArrayList {
        return self.items;
    }
    

    pub fn removeItem(self: *Self, id: ?*String) void {
        const itemArray: []?Object = self.items.?.toArray();
        const size: i32 = @as(i32, @intCast(itemArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const item: ?*Item = Inheritance.cast(?*Item, itemArray[@intCast(index)]);
            if (Inheritance.call(Inheritance.receiver(item.?, "getId").getId().?, "compareTo", .{ id }) == 0) {
                _ = Inheritance.call(self.items.?, "remove", .{ item });
            }
            }
        }
    }
    

    pub fn adjustItem(self: *Self, id: ?*String, num: ?*String) void {
        const itemArray: []?Object = self.items.?.toArray();
        const size: i32 = @as(i32, @intCast(itemArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const item: ?*Item = Inheritance.cast(?*Item, itemArray[@intCast(index)]);
            if (Inheritance.call(Inheritance.receiver(item.?, "getId").getId().?, "compareTo", .{ id }) == 0) {
                _ = Inheritance.call(item.?, "setNumber", .{ num });
            }
            }
        }
    }
    

    pub fn getTotalWeight(self: *Self) ?*String {
        var weightFloat: f32 = 0.0;
        const itemArray: []?Object = self.items.?.toArray();
        const size: i32 = @as(i32, @intCast(itemArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const item: ?*Item = Inheritance.cast(?*Item, itemArray[@intCast(index)]);
            weightFloat += Inheritance.callStatic(Float, "create1", .{ Inheritance.receiver(item.?, "getWeight").getWeight() }).floatValue();
            }
        }
        return Inheritance.upcast(?*String, String.valueOf(Inheritance.callStatic(Float, "create1", .{ weightFloat }).?));
    }
    

    pub fn getNumberOfItems(self: *Self) ?*Integer {
        return Inheritance.callStatic(Integer, "create1", .{ self.items.?.size() });
    }
    

    pub fn getIds(self: *Self) ?*Set {
        const idSet: ?*HashSet = HashSet.create();
        const itemArray: []?Object = self.items.?.toArray();
        const size: i32 = @as(i32, @intCast(itemArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const item: ?*Item = Inheritance.cast(?*Item, itemArray[@intCast(index)]);
            _ = Inheritance.call(idSet.?, "add", .{ Inheritance.receiver(item.?, "getId").getId() });
            }
        }
        return Inheritance.cast(?*Set, idSet);
    }
    

    pub fn getNumberOf(self: *Self, id: ?*String) ?*Integer {
        const itemArray: []?Object = self.items.?.toArray();
        const size: i32 = @as(i32, @intCast(itemArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const item: ?*Item = Inheritance.cast(?*Item, itemArray[@intCast(index)]);
            if (Inheritance.call(Inheritance.receiver(item.?, "getId").getId().?, "compareTo", .{ id }) == 0) {
                return Inheritance.callStatic(Integer, "create1", .{ Inheritance.receiver(item.?, "getNumber").getNumber() });
            }
            }
        }
        return Inheritance.callStatic(Integer, "create1", .{ 0 });
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ BasketData.BASKET }));
        const itemArray: []?Object = self.items.?.toArray();
        const size: i32 = @as(i32, @intCast(itemArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const item: ?*Item = Inheritance.cast(?*Item, itemArray[@intCast(index)]);
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(Inheritance.callStatic(ItemView, "create2", .{ item, BasicArrayListD.create() }), "toXmlNode", .{ document }) });
            }
        }
        return node;
    }
};


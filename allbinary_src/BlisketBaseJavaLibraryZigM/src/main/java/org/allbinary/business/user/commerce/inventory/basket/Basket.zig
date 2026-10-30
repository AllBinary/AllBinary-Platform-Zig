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
// const Serializable = @import("java/io/Serializable.zig").Serializable;
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
const ItemInterface = @import("org/allbinary/business/user/commerce/inventory/item/ItemInterface.zig").ItemInterface;
const Money = @import("org/allbinary/business/user/commerce/money/Money.zig").Money;
const MoneyException = @import("org/allbinary/business/user/commerce/money/MoneyException.zig").MoneyException;
const InventoryEntity = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntity.zig").InventoryEntity;
const InventoryEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory.zig").InventoryEntityFactory;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const BasketInterface = @import("org/allbinary/business/user/commerce/inventory/basket/BasketInterface.zig").BasketInterface;
const Integer = @import("java/lang/Integer.zig").Integer;
const Float = @import("java/lang/Float.zig").Float;

pub const Basket = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.basket.Basket";
    pub const java_interfaces = .{ BasketInterface };
    items: ?*HashMap = null,
    // Implements BasketInterface
    // Implements Serializable

    fn initFields(this: *Self) void {
        this.items = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn addItem(self: *Self, id: ?*String, num: ?*String) void {
        if (Inheritance.call(self.items.?, "containsKey", .{ id })) {
            const oldNumStr: ?*String = Inheritance.callStatic(String, "create1", .{ Inheritance.cast(?*String, Inheritance.call(self.items.?, "get", .{ id })) });
            const oldNumInt: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.callStatic(Integer, "valueOf", .{ oldNumStr }));
            const numInt: ?*Integer = Inheritance.upcast(?*Integer, Inheritance.callStatic(Integer, "valueOf", .{ num }));
            const newNumInt: ?*Integer = Inheritance.callStatic(Integer, "create1", .{ oldNumInt.?.intValue() + numInt.?.intValue() });
            _ = Inheritance.call(self.items.?, "put", .{ id, String.valueOf(newNumInt.?) });
        } else {
            _ = Inheritance.call(self.items.?, "put", .{ id, num });
        }
    }
    

    pub fn removeItem(self: *Self, id: ?*String) void {
        _ = Inheritance.call(self.items.?, "remove", .{ id });
    }
    

    pub fn adjustItem(self: *Self, id: ?*String, num: ?*String) void {
        if (Inheritance.receiverOf(Inheritance.callStatic(Integer, "valueOf", .{ num }).?, "intValue").intValue() > 0) {
            _ = Inheritance.call(self.items.?, "put", .{ id, num });
        } else {
            _ = Inheritance.call(self.items.?, "remove", .{ id });
        }
    }
    

    pub fn getTotalWeight(self: *Self) ?*String {
        const itemsAndNumberInBasket: ?*HashMap = Inheritance.upcast(?*HashMap, self.getItems());
        const totalWeight: ?*Money = Money.create();
        if (itemsAndNumberInBasket.?.size() > 0) {
            const items: ?*Set = Inheritance.upcast(?*Set, itemsAndNumberInBasket.?.keySet());
            var product: ?*String = null;
            var weightFloat: ?*Float = null;
            const itemArray: []?Object = items.?.toArray();
            const size: i32 = @as(i32, @intCast(itemArray.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                product = Inheritance.callStatic(String, "create1", .{ Inheritance.cast(?*String, itemArray[@intCast(index)]) });
                weightFloat = Inheritance.callStatic(Float, "create1", .{ Inheritance.call(InventoryEntity.create(), "getWeight", .{ product }) });
                weightFloat = Inheritance.callStatic(Float, "create1", .{ Inheritance.receiverOf(Inheritance.call(self, "getNumberOf", .{ product }).?, "floatValue").floatValue() * weightFloat.?.floatValue() });
                _ = Inheritance.call(totalWeight.?, "add", .{ String.valueOf(weightFloat.?) });
                }
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(totalWeight)));
    }
    

    pub fn getNumberOfItems(self: *Self) ?*Integer {
        return Inheritance.callStatic(Integer, "create1", .{ self.items.?.size() });
    }
    

    pub fn getIds(self: *Self) ?*Set {
        const set: ?*Set = Inheritance.upcast(?*Set, self.items.?.keySet());
        return set;
    }
    

    pub fn getItems(self: *Self) ?*HashMap {
        return self.items;
    }
    

    pub fn getNumberOf(self: *Self, product: ?*String) ?*Integer {
        const numStr: ?*String = Inheritance.cast(?*String, Inheritance.call(self.items.?, "get", .{ product }));
        return Inheritance.upcast(?*Integer, Inheritance.callStatic(Integer, "valueOf", .{ numStr }));
    }
    

    // throws MoneyException
    pub fn getSubTotal(self: *Self) ?*Money {
        const itemsAndNumberInBasket: ?*HashMap = Inheritance.upcast(?*HashMap, self.getItems());
        const subTotal: ?*Money = Money.create();
        if (itemsAndNumberInBasket.?.size() > 0) {
            const items: ?*Set = Inheritance.upcast(?*Set, itemsAndNumberInBasket.?.keySet());
            const inventoryEntityFactory: ?*InventoryEntityFactory = Inheritance.upcast(?*InventoryEntityFactory, InventoryEntityFactory.getInstance());
            const inventoryEntity: ?*InventoryEntity = Inheritance.cast(?*InventoryEntity, inventoryEntityFactory.?.getInventoryEntityInstance());
            const itemArray: []?Object = items.?.toArray();
            const size: i32 = @as(i32, @intCast(itemArray.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const product: ?*String = Inheritance.callStatic(String, "create1", .{ Inheritance.cast(?*String, itemArray[@intCast(index)]) });
                const itemInterface: ?*ItemInterface = Inheritance.upcast(?*ItemInterface, Inheritance.call(inventoryEntity.?, "getItem", .{ product }));
                const productTotal: ?*Money = Inheritance.upcast(?*Money, Inheritance.receiver(itemInterface.?, "getPrice").getPrice());
                _ = Inheritance.call(productTotal.?, "multiply", .{ Inheritance.receiverOf(Inheritance.call(self, "getNumberOf", .{ product }).?, "intValue").intValue() });
                _ = Inheritance.call(subTotal.?, "add", .{ Object.toString(Object.of(productTotal)) });
                }
            }
        }
        return subTotal;
    }
};


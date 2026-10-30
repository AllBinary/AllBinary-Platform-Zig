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
// package org.allbinary.business.user.commerce.inventory.order

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasketInterface = @import("org/allbinary/business/user/commerce/inventory/basket/BasketInterface.zig").BasketInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const OrderInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.order.OrderInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setShippingMethodFn: *const fn (pointer: *anyopaque, shippingType: ?*String) void,
    setPaymentMethodFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setSpecialFn: *const fn (pointer: *anyopaque, special: ?*String) void,
    setStoreNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setUserCommentsFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setUserCancelCommentsFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setStoreCommentsFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setStoreCancelCommentsFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    getBasketFn: *const fn (pointer: *anyopaque) ?*BasketInterface,
    getShippingMethodFn: *const fn (pointer: *anyopaque) ?*String,
    getPaymentMethodFn: *const fn (pointer: *anyopaque) ?*String,
    getSpecialFn: *const fn (pointer: *anyopaque) ?*String,
    getIdFn: *const fn (pointer: *anyopaque) ?*String,
    getStoreNameFn: *const fn (pointer: *anyopaque) ?*String,
    getUserCommentsFn: *const fn (pointer: *anyopaque) ?*String,
    getUserCancelCommentsFn: *const fn (pointer: *anyopaque) ?*String,
    getStoreCommentsFn: *const fn (pointer: *anyopaque) ?*String,
    getStoreCancelCommentsFn: *const fn (pointer: *anyopaque) ?*String,

    pub fn setShippingMethod(self: *Self, shippingType: ?*String) void {
        return self.setShippingMethodFn(self.pointer, shippingType);
    }

    pub fn setPaymentMethod(self: *Self, value: ?*String) void {
        return self.setPaymentMethodFn(self.pointer, value);
    }

    pub fn setSpecial(self: *Self, special: ?*String) void {
        return self.setSpecialFn(self.pointer, special);
    }

    pub fn setStoreName(self: *Self, value: ?*String) void {
        return self.setStoreNameFn(self.pointer, value);
    }

    pub fn setUserComments(self: *Self, value: ?*String) void {
        return self.setUserCommentsFn(self.pointer, value);
    }

    pub fn setUserCancelComments(self: *Self, value: ?*String) void {
        return self.setUserCancelCommentsFn(self.pointer, value);
    }

    pub fn setStoreComments(self: *Self, value: ?*String) void {
        return self.setStoreCommentsFn(self.pointer, value);
    }

    pub fn setStoreCancelComments(self: *Self, value: ?*String) void {
        return self.setStoreCancelCommentsFn(self.pointer, value);
    }

    pub fn getBasket(self: *Self) ?*BasketInterface {
        return self.getBasketFn(self.pointer);
    }

    pub fn getShippingMethod(self: *Self) ?*String {
        return self.getShippingMethodFn(self.pointer);
    }

    pub fn getPaymentMethod(self: *Self) ?*String {
        return self.getPaymentMethodFn(self.pointer);
    }

    pub fn getSpecial(self: *Self) ?*String {
        return self.getSpecialFn(self.pointer);
    }

    pub fn getId(self: *Self) ?*String {
        return self.getIdFn(self.pointer);
    }

    pub fn getStoreName(self: *Self) ?*String {
        return self.getStoreNameFn(self.pointer);
    }

    pub fn getUserComments(self: *Self) ?*String {
        return self.getUserCommentsFn(self.pointer);
    }

    pub fn getUserCancelComments(self: *Self) ?*String {
        return self.getUserCancelCommentsFn(self.pointer);
    }

    pub fn getStoreComments(self: *Self) ?*String {
        return self.getStoreCommentsFn(self.pointer);
    }

    pub fn getStoreCancelComments(self: *Self) ?*String {
        return self.getStoreCancelCommentsFn(self.pointer);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn setShippingMethod(pointer: *anyopaque, shippingType: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setShippingMethod").setShippingMethod(shippingType);
            }
            fn setPaymentMethod(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setPaymentMethod").setPaymentMethod(value);
            }
            fn setSpecial(pointer: *anyopaque, special: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setSpecial").setSpecial(special);
            }
            fn setStoreName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setStoreName").setStoreName(value);
            }
            fn setUserComments(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setUserComments").setUserComments(value);
            }
            fn setUserCancelComments(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setUserCancelComments").setUserCancelComments(value);
            }
            fn setStoreComments(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setStoreComments").setStoreComments(value);
            }
            fn setStoreCancelComments(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setStoreCancelComments").setStoreCancelComments(value);
            }
            fn getBasket(pointer: *anyopaque) ?*BasketInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasketInterface, Inheritance.receiver(implementation, "getBasket").getBasket());
            }
            fn getShippingMethod(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getShippingMethod").getShippingMethod());
            }
            fn getPaymentMethod(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPaymentMethod").getPaymentMethod());
            }
            fn getSpecial(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getSpecial").getSpecial());
            }
            fn getId(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getId").getId());
            }
            fn getStoreName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getStoreName").getStoreName());
            }
            fn getUserComments(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getUserComments").getUserComments());
            }
            fn getUserCancelComments(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getUserCancelComments").getUserCancelComments());
            }
            fn getStoreComments(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getStoreComments").getStoreComments());
            }
            fn getStoreCancelComments(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getStoreCancelComments").getStoreCancelComments());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .setShippingMethodFn = Methods.setShippingMethod, .setPaymentMethodFn = Methods.setPaymentMethod, .setSpecialFn = Methods.setSpecial, .setStoreNameFn = Methods.setStoreName, .setUserCommentsFn = Methods.setUserComments, .setUserCancelCommentsFn = Methods.setUserCancelComments, .setStoreCommentsFn = Methods.setStoreComments, .setStoreCancelCommentsFn = Methods.setStoreCancelComments, .getBasketFn = Methods.getBasket, .getShippingMethodFn = Methods.getShippingMethod, .getPaymentMethodFn = Methods.getPaymentMethod, .getSpecialFn = Methods.getSpecial, .getIdFn = Methods.getId, .getStoreNameFn = Methods.getStoreName, .getUserCommentsFn = Methods.getUserComments, .getUserCancelCommentsFn = Methods.getUserCancelComments, .getStoreCommentsFn = Methods.getStoreComments, .getStoreCancelCommentsFn = Methods.getStoreCancelComments };
        return this;
    }
};


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
// package org.allbinary.logic.communication.http.request.session

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const HttpSession = @import("javax/servlet/http/HttpSession.zig").HttpSession;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const Basket = @import("org/allbinary/business/user/commerce/inventory/basket/Basket.zig").Basket;
const Order = @import("org/allbinary/business/user/commerce/inventory/order/Order.zig").Order;
const OrderInterface = @import("org/allbinary/business/user/commerce/inventory/order/OrderInterface.zig").OrderInterface;
const PaymentGatewayData = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData.zig").PaymentGatewayData;
const UserRole = @import("org/allbinary/business/user/role/UserRole.zig").UserRole;
const UserRoleB = @import("org/allbinary/business/user/role/UserRoleB.zig").UserRoleB;
const UserRoleData = @import("org/allbinary/business/user/role/UserRoleData.zig").UserRoleData;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const WeblisketSessionData = @import("org/allbinary/logic/communication/http/request/session/WeblisketSessionData.zig").WeblisketSessionData;
const WeblisketSessionInterface = @import("org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface.zig").WeblisketSessionInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const WeblisketSession = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.request.session.WeblisketSession";
    pub const java_interfaces = .{ WeblisketSessionInterface };
    session: ?*HttpSession = null,
    // Implements WeblisketSessionInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.* = Inheritance.callStatic(WeblisketSession, "create2", .{ hashMap, Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest()) }).*;
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create2(hashMap: ?*HashMap, httpServletRequest: ?*HttpServletRequest) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const propertiesHashMap: ?*HashMap = hashMap;
        const request: ?*HttpServletRequest = httpServletRequest;
        this.session = Inheritance.upcast(@TypeOf(this.session), Inheritance.call(request.?, "getSession", .{ true }));
        if (this.getStoreName() == null) {
            _ = Inheritance.call(this, "setStoreName", .{ Inheritance.cast(?*String, Inheritance.call(propertiesHashMap.?, "get", .{ StoreFrontData.getInstance().?.NAME })) });
        }
        return this;
    }
    

    pub fn getId(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.session.?.getId());
    }
    

    pub fn setPassword(self: *Self, password: ?*String) void {
        _ = Inheritance.call(self.session.?, "setAttribute", .{ UserData.PASSWORD, password });
    }
    

    pub fn setUserName(self: *Self, userName: ?*String) void {
        _ = Inheritance.call(self.session.?, "setAttribute", .{ UserData.USERNAME, userName });
    }
    

    pub fn setPaymentMethod(self: *Self, value: ?*String) void {
        _ = Inheritance.call(self.session.?, "setAttribute", .{ Object.toString(Object.of(PaymentGatewayData.NAME)), value });
    }
    

    pub fn setAuthenticated(self: *Self) void {
        _ = Inheritance.call(self.session.?, "setAttribute", .{ WeblisketSessionData.AUTHENTICATED, BooleanFactory.getInstance().?.TRUE_STRING });
    }
    

    pub fn setRole(self: *Self, aRole: ?*UserRole) void {
        _ = Inheritance.call(self.session.?, "setAttribute", .{ Object.toString(Object.of(UserRoleData.NAME)), aRole });
    }
    

    pub fn setAttempts(self: *Self, value: ?*Integer) void {
        _ = Inheritance.call(self.session.?, "setAttribute", .{ WeblisketSessionData.ATTEMPTS, value });
    }
    

    pub fn setTimeout(self: *Self, value: ?*String) void {
        _ = Inheritance.call(self.session.?, "setAttribute", .{ WeblisketSessionData.TIMEOUT, value });
    }
    

    pub fn setStoreName(self: *Self, value: ?*String) void {
        _ = Inheritance.call(self.session.?, "setAttribute", .{ StoreFrontData.getInstance().?.NAME, value });
    }
    

    pub fn getWebAppPath(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.session.?, "getAttribute", .{ org.allbinary.?.globals.?.GLOBALS2.?.WEBAPPPATH }));
    }
    

    pub fn getUserName(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.session.?, "getAttribute", .{ UserData.USERNAME }));
    }
    

    pub fn getPassword(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.session.?, "getAttribute", .{ UserData.PASSWORD }));
    }
    

    pub fn getPaymentMethod(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.session.?, "getAttribute", .{ Object.toString(Object.of(PaymentGatewayData.NAME)) }));
    }
    

    pub fn getAuthentication(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.session.?, "getAttribute", .{ WeblisketSessionData.AUTHENTICATED }));
    }
    

    pub fn getAttempts(self: *Self) ?*Integer {
        return Inheritance.cast(?*Integer, Inheritance.call(self.session.?, "getAttribute", .{ WeblisketSessionData.ATTEMPTS }));
    }
    

    pub fn getTimeout(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.session.?, "getAttribute", .{ WeblisketSessionData.TIMEOUT }));
    }
    

    pub fn getStoreName(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.session.?, "getAttribute", .{ StoreFrontData.getInstance().?.NAME }));
    }
    

    // throws Exception
    pub fn getRole(self: *Self) ?*UserRole {
        const userRole: ?*UserRole = Inheritance.cast(?*UserRole, Inheritance.call(self.session.?, "getAttribute", .{ Object.toString(Object.of(UserRoleData.NAME)) }));
        if (userRole != null) {
            return Inheritance.upcast(?*UserRole, Inheritance.callStatic(UserRoleB, "getRole", .{ Inheritance.receiverOf(userRole.?.getBasicUserRole().?, "getRole").getRole() }));
        } else {
            return null;
        }
    }
    

    // throws Exception
    pub fn getOrder(self: *Self) ?*OrderInterface {
        const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ self.getStoreName() }));
        const basketName: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(storeFrontInterface.?, "getBasketName").getBasketName());
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ basketName })) {
            var orderInterface: ?*OrderInterface = Inheritance.cast(?*OrderInterface, Inheritance.call(self.session.?, "getAttribute", .{ basketName }));
            if (orderInterface == null) {
                orderInterface = Inheritance.cast(?*OrderInterface, Inheritance.callStatic(Order, "create1", .{ Basket.create() }));
            }
            _ = Inheritance.call(self.session.?, "setAttribute", .{ basketName, orderInterface });
            return orderInterface;
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Basket Name Not Found"); break :exception error.Exception; }});
        }
    }
    

    pub fn setAuthenticated1(self: *Self, value: bool) void {
        _ = value;
        _ = Inheritance.call(self.session.?, "setAttribute", .{ WeblisketSessionData.AUTHENTICATED, BooleanFactory.getInstance().?.FALSE_STRING });
    }
    

    pub fn clear(self: *Self) void {
        _ = Inheritance.call(self.session.?, "removeAttribute", .{ WeblisketSessionData.AUTHENTICATED });
        _ = Inheritance.call(self.session.?, "removeAttribute", .{ WeblisketSessionData.TIMEOUT });
        _ = Inheritance.call(self.session.?, "removeAttribute", .{ Object.toString(Object.of(UserRoleData.NAME)) });
        _ = Inheritance.call(self.session.?, "removeAttribute", .{ UserData.USERNAME });
    }
    

    pub fn getCreationTime(self: *Self) i64 {
        return self.session.?.getCreationTime();
    }
    

    pub fn getLastAccessedTime(self: *Self) i64 {
        return self.session.?.getLastAccessedTime();
    }
    

    pub fn removeBasket(self: *Self) void {
        const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ self.getStoreName() }));
        const basketName: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(storeFrontInterface.?, "getBasketName").getBasketName());
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ basketName })) {
            _ = Inheritance.call(self.session.?, "removeAttribute", .{ basketName });
        }
    }
};


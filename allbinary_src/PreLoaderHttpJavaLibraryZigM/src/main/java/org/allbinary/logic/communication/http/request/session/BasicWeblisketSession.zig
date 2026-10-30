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
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const HttpSession = @import("javax/servlet/http/HttpSession.zig").HttpSession;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const UserData = @import("org/allbinary/business/user/UserData.zig").UserData;
const PaymentGatewayData = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData.zig").PaymentGatewayData;
const BasicUserRole = @import("org/allbinary/business/user/role/BasicUserRole.zig").BasicUserRole;
const BasicUserRoleData = @import("org/allbinary/business/user/role/BasicUserRoleData.zig").BasicUserRoleData;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;
const WeblisketSessionData = @import("org/allbinary/logic/communication/http/request/session/WeblisketSessionData.zig").WeblisketSessionData;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const BasicWeblisketSession = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.request.session.BasicWeblisketSession";
    session: ?*HttpSession = null,
    pageContext: ?*PageContext = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create1(pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.pageContext = pageContext;
        const request: ?*HttpServletRequest = Inheritance.cast(?*HttpServletRequest, pageContext.?.getRequest());
        this.session = Inheritance.upcast(@TypeOf(this.session), Inheritance.call(request.?, "getSession", .{ true }));
        return this;
    }
    

    pub fn setRole(self: *Self, aRole: ?*BasicUserRole) void {
        _ = Inheritance.call(self.session.?, "setAttribute", .{ Object.toString(Object.of(BasicUserRoleData.NAME)), aRole });
    }
    

    pub fn getRole(self: *Self) ?*BasicUserRole {
        return Inheritance.cast(?*BasicUserRole, Inheritance.call(self.session.?, "getAttribute", .{ Object.toString(Object.of(BasicUserRoleData.NAME)) }));
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
    

    pub fn setAuthenticated1(self: *Self, value: bool) void {
        _ = value;
        _ = Inheritance.call(self.session.?, "setAttribute", .{ WeblisketSessionData.AUTHENTICATED, BooleanFactory.getInstance().?.FALSE_STRING });
    }
    

    pub fn clear(self: *Self) void {
        _ = Inheritance.call(self.session.?, "removeAttribute", .{ WeblisketSessionData.AUTHENTICATED });
        _ = Inheritance.call(self.session.?, "removeAttribute", .{ WeblisketSessionData.TIMEOUT });
        _ = Inheritance.call(self.session.?, "removeAttribute", .{ Object.toString(Object.of(BasicUserRoleData.NAME)) });
        _ = Inheritance.call(self.session.?, "removeAttribute", .{ UserData.USERNAME });
    }
    

    pub fn getCreationTime(self: *Self) i64 {
        return self.session.?.getCreationTime();
    }
    

    pub fn getLastAccessedTime(self: *Self) i64 {
        const lastAccessedTime: i64 = self.session.?.getLastAccessedTime();
        return lastAccessedTime;
    }
};


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
// package org.allbinary.business.user.role

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicUserRole = @import("org/allbinary/business/user/role/BasicUserRole.zig").BasicUserRole;

pub const BasicUserRoleFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.role.BasicUserRoleFactory";
    INACTIVITYTIMEOUT: i64 = 0,
    CUSTOMERTIMEOUT: i64 = 0,
    CUSTOMERMAXSESSIONTIME: i64 = 0,
    MAXSESSIONTIME: i64 = 0,
    INSTALLER: ?*BasicUserRole = null,
    ADMINISTRATOR: ?*BasicUserRole = null,
    CUSTOMER: ?*BasicUserRole = null,
    SUBSCRIBERCUSTOMER: ?*BasicUserRole = null,
    WHOLESALECUSTOMER: ?*BasicUserRole = null,
    STOREMANAGER: ?*BasicUserRole = null,
    PRODUCTMANAGER: ?*BasicUserRole = null,
    CUSTOMERMANAGER: ?*BasicUserRole = null,
    PAYMENTMANAGER: ?*BasicUserRole = null,
    ORDERMANAGER: ?*BasicUserRole = null,
    WEBMANAGER: ?*BasicUserRole = null,
    REVIEWER: ?*BasicUserRole = null,
    SHIPPING: ?*BasicUserRole = null,
    ADJUSTER: ?*BasicUserRole = null,
    WORKFLOWEDITOR: ?*BasicUserRole = null,
    WIZARD: ?*BasicUserRole = null,
    VIEWEDITOR: ?*BasicUserRole = null,
    var instance: ?*BasicUserRoleFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BasicUserRoleFactory.create();
    }

    fn initFields(this: *Self) void {
        this.INACTIVITYTIMEOUT = 360000000;
        this.CUSTOMERTIMEOUT = 360000000;
        this.CUSTOMERMAXSESSIONTIME = 360000000;
        this.MAXSESSIONTIME = 360000000;
        this.INSTALLER = Inheritance.callStatic(BasicUserRole, "create4", .{ String.literal("Installer"), 16, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT });
        this.ADMINISTRATOR = Inheritance.callStatic(BasicUserRole, "create4", .{ String.literal("Administrator"), 0, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT });
        this.CUSTOMER = Inheritance.callStatic(BasicUserRole, "create5", .{ String.literal("CustomerUser"), String.literal("Customer User"), 1, this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME });
        this.SUBSCRIBERCUSTOMER = Inheritance.callStatic(BasicUserRole, "create5", .{ String.literal("SubscriberUser"), String.literal("Subscriber User"), 2, this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME });
        this.WHOLESALECUSTOMER = Inheritance.callStatic(BasicUserRole, "create5", .{ String.literal("WholesaleUser"), String.literal("Wholesale User"), 3, this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME });
        this.STOREMANAGER = Inheritance.callStatic(BasicUserRole, "create5", .{ String.literal("StoreManager"), String.literal("Store Manager"), 4, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT });
        this.PRODUCTMANAGER = Inheritance.callStatic(BasicUserRole, "create5", .{ String.literal("ProductManager"), String.literal("Product Manager"), 5, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT });
        this.CUSTOMERMANAGER = Inheritance.callStatic(BasicUserRole, "create5", .{ String.literal("UserManager"), String.literal("User Manager"), 6, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT });
        this.PAYMENTMANAGER = Inheritance.callStatic(BasicUserRole, "create5", .{ String.literal("PaymentManager"), String.literal("Payment Manager"), 7, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT });
        this.ORDERMANAGER = Inheritance.callStatic(BasicUserRole, "create5", .{ String.literal("OrderManager"), String.literal("Order Manager"), 8, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT });
        this.WEBMANAGER = Inheritance.callStatic(BasicUserRole, "create5", .{ String.literal("WebManager"), String.literal("Web Manager"), 9, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT });
        this.REVIEWER = Inheritance.callStatic(BasicUserRole, "create4", .{ String.literal("Reviewer"), 10, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT });
        this.SHIPPING = Inheritance.callStatic(BasicUserRole, "create4", .{ String.literal("Shipping"), 11, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT });
        this.ADJUSTER = Inheritance.callStatic(BasicUserRole, "create4", .{ String.literal("Adjuster"), 12, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT });
        this.WORKFLOWEDITOR = Inheritance.callStatic(BasicUserRole, "create5", .{ String.literal("WorkFlowEditor"), String.literal("WorkFlow Editor"), 13, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT });
        this.WIZARD = Inheritance.callStatic(BasicUserRole, "create5", .{ String.literal("WizardUser"), String.literal("Wizard User"), 14, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT });
        this.VIEWEDITOR = Inheritance.callStatic(BasicUserRole, "create5", .{ String.literal("ViewEditor"), String.literal("View Editor"), 15, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*BasicUserRoleFactory {
        return Inheritance.upcast(?*BasicUserRoleFactory, BasicUserRoleFactory.instance);
    }
};


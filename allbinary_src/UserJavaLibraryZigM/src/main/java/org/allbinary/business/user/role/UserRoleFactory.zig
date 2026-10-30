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
const UserFactory = @import("org/allbinary/business/user/modules/UserFactory.zig").UserFactory;
const AdminUserFactory = @import("org/allbinary/business/user/modules/admin/AdminUserFactory.zig").AdminUserFactory;
const StoreAdminUserFactory = @import("org/allbinary/business/user/modules/admin/store/StoreAdminUserFactory.zig").StoreAdminUserFactory;
const CustomerStoreAdminUserFactory = @import("org/allbinary/business/user/modules/admin/store/customer/CustomerStoreAdminUserFactory.zig").CustomerStoreAdminUserFactory;
const OrderStoreAdminUserFactory = @import("org/allbinary/business/user/modules/admin/store/order/OrderStoreAdminUserFactory.zig").OrderStoreAdminUserFactory;
const AdjustOrderStoreAdminUserFactory = @import("org/allbinary/business/user/modules/admin/store/order/adjust/AdjustOrderStoreAdminUserFactory.zig").AdjustOrderStoreAdminUserFactory;
const ReviewOrderStoreAdminUserFactory = @import("org/allbinary/business/user/modules/admin/store/order/review/ReviewOrderStoreAdminUserFactory.zig").ReviewOrderStoreAdminUserFactory;
const ShipOrderStoreAdminUserFactory = @import("org/allbinary/business/user/modules/admin/store/order/ship/ShipOrderStoreAdminUserFactory.zig").ShipOrderStoreAdminUserFactory;
const PaymentStoreAdminUserFactory = @import("org/allbinary/business/user/modules/admin/store/payment/PaymentStoreAdminUserFactory.zig").PaymentStoreAdminUserFactory;
const ProductStoreAdminUserFactory = @import("org/allbinary/business/user/modules/admin/store/product/ProductStoreAdminUserFactory.zig").ProductStoreAdminUserFactory;
const WebStoreAdminUserFactory = @import("org/allbinary/business/user/modules/admin/store/web/WebStoreAdminUserFactory.zig").WebStoreAdminUserFactory;
const ViewEditorWebStoreAdminUserFactory = @import("org/allbinary/business/user/modules/admin/store/web/view/editor/ViewEditorWebStoreAdminUserFactory.zig").ViewEditorWebStoreAdminUserFactory;
const WizardWebStoreAdminUserFactory = @import("org/allbinary/business/user/modules/admin/store/web/wizard/WizardWebStoreAdminUserFactory.zig").WizardWebStoreAdminUserFactory;
const WorkflowEditorWebStoreAdminUserFactory = @import("org/allbinary/business/user/modules/admin/store/web/workflow/editor/WorkflowEditorWebStoreAdminUserFactory.zig").WorkflowEditorWebStoreAdminUserFactory;
const SubscriberUserFactory = @import("org/allbinary/business/user/modules/customer/subscriber/SubscriberUserFactory.zig").SubscriberUserFactory;
const WholesaleUserFactory = @import("org/allbinary/business/user/modules/customer/wholesale/WholesaleUserFactory.zig").WholesaleUserFactory;
const BasicUserRoleFactory = @import("org/allbinary/business/user/role/BasicUserRoleFactory.zig").BasicUserRoleFactory;
const UserRole = @import("org/allbinary/business/user/role/UserRole.zig").UserRole;
const UserRoleB = @import("org/allbinary/business/user/role/UserRoleB.zig").UserRoleB;

pub const UserRoleFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.role.UserRoleFactory";
    basicUserRoleFactory: ?*BasicUserRoleFactory = null,
    INSTALLER: ?*UserRole = null,
    ADMINISTRATOR: ?*UserRole = null,
    CUSTOMER: ?*UserRole = null,
    SUBSCRIBERCUSTOMER: ?*UserRole = null,
    WHOLESALECUSTOMER: ?*UserRole = null,
    STOREMANAGER: ?*UserRole = null,
    PRODUCTMANAGER: ?*UserRole = null,
    CUSTOMERMANAGER: ?*UserRole = null,
    PAYMENTMANAGER: ?*UserRole = null,
    ORDERMANAGER: ?*UserRole = null,
    WEBMANAGER: ?*UserRole = null,
    REVIEWER: ?*UserRole = null,
    SHIPPING: ?*UserRole = null,
    ADJUSTER: ?*UserRole = null,
    WORKFLOWEDITOR: ?*UserRole = null,
    WIZARD: ?*UserRole = null,
    VIEWEDITOR: ?*UserRole = null,
    var instance: ?*UserRoleFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = UserRoleFactory.create();
    }

    fn initFields(this: *Self) void {
        this.basicUserRoleFactory = Inheritance.upcast(?*BasicUserRoleFactory, BasicUserRoleFactory.getInstance());
        this.INSTALLER = Inheritance.upcast(?*UserRole, Inheritance.callStatic(UserRoleB, "create2", .{ this.basicUserRoleFactory.?.INSTALLER, null }));
        this.ADMINISTRATOR = Inheritance.upcast(?*UserRole, Inheritance.callStatic(UserRoleB, "create2", .{ this.basicUserRoleFactory.?.ADMINISTRATOR, AdminUserFactory.create() }));
        this.CUSTOMER = Inheritance.upcast(?*UserRole, Inheritance.callStatic(UserRoleB, "create2", .{ this.basicUserRoleFactory.?.CUSTOMER, UserFactory.create() }));
        this.SUBSCRIBERCUSTOMER = Inheritance.upcast(?*UserRole, Inheritance.callStatic(UserRoleB, "create2", .{ this.basicUserRoleFactory.?.SUBSCRIBERCUSTOMER, SubscriberUserFactory.create() }));
        this.WHOLESALECUSTOMER = Inheritance.upcast(?*UserRole, Inheritance.callStatic(UserRoleB, "create2", .{ this.basicUserRoleFactory.?.WHOLESALECUSTOMER, WholesaleUserFactory.create() }));
        this.STOREMANAGER = Inheritance.upcast(?*UserRole, Inheritance.callStatic(UserRoleB, "create2", .{ this.basicUserRoleFactory.?.STOREMANAGER, StoreAdminUserFactory.create() }));
        this.PRODUCTMANAGER = Inheritance.upcast(?*UserRole, Inheritance.callStatic(UserRoleB, "create2", .{ this.basicUserRoleFactory.?.PRODUCTMANAGER, ProductStoreAdminUserFactory.create() }));
        this.CUSTOMERMANAGER = Inheritance.upcast(?*UserRole, Inheritance.callStatic(UserRoleB, "create2", .{ this.basicUserRoleFactory.?.CUSTOMERMANAGER, CustomerStoreAdminUserFactory.create() }));
        this.PAYMENTMANAGER = Inheritance.upcast(?*UserRole, Inheritance.callStatic(UserRoleB, "create2", .{ this.basicUserRoleFactory.?.PAYMENTMANAGER, PaymentStoreAdminUserFactory.create() }));
        this.ORDERMANAGER = Inheritance.upcast(?*UserRole, Inheritance.callStatic(UserRoleB, "create2", .{ this.basicUserRoleFactory.?.ORDERMANAGER, OrderStoreAdminUserFactory.create() }));
        this.WEBMANAGER = Inheritance.upcast(?*UserRole, Inheritance.callStatic(UserRoleB, "create2", .{ this.basicUserRoleFactory.?.WEBMANAGER, WebStoreAdminUserFactory.create() }));
        this.REVIEWER = Inheritance.upcast(?*UserRole, Inheritance.callStatic(UserRoleB, "create2", .{ this.basicUserRoleFactory.?.REVIEWER, ReviewOrderStoreAdminUserFactory.create() }));
        this.SHIPPING = Inheritance.upcast(?*UserRole, Inheritance.callStatic(UserRoleB, "create2", .{ this.basicUserRoleFactory.?.SHIPPING, ShipOrderStoreAdminUserFactory.create() }));
        this.ADJUSTER = Inheritance.upcast(?*UserRole, Inheritance.callStatic(UserRoleB, "create2", .{ this.basicUserRoleFactory.?.ADJUSTER, AdjustOrderStoreAdminUserFactory.create() }));
        this.WORKFLOWEDITOR = Inheritance.upcast(?*UserRole, Inheritance.callStatic(UserRoleB, "create2", .{ this.basicUserRoleFactory.?.WORKFLOWEDITOR, WorkflowEditorWebStoreAdminUserFactory.create() }));
        this.WIZARD = Inheritance.upcast(?*UserRole, Inheritance.callStatic(UserRoleB, "create2", .{ this.basicUserRoleFactory.?.WIZARD, WizardWebStoreAdminUserFactory.create() }));
        this.VIEWEDITOR = Inheritance.upcast(?*UserRole, Inheritance.callStatic(UserRoleB, "create2", .{ this.basicUserRoleFactory.?.VIEWEDITOR, ViewEditorWebStoreAdminUserFactory.create() }));
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*UserRoleFactory {
        return Inheritance.upcast(?*UserRoleFactory, UserRoleFactory.instance);
    }
};


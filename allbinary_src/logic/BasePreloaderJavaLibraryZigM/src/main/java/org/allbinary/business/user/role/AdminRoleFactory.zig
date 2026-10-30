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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicUserRoleFactory = @import("org/allbinary/business/user/role/BasicUserRoleFactory.zig").BasicUserRoleFactory;

pub const AdminRoleFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.role.AdminRoleFactory";
    adminRoles: ?*BasicArrayList = null,
    storeAdminRoles: ?*BasicArrayList = null,
    storeManagementRoles: ?*BasicArrayList = null,
    productManagementRoles: ?*BasicArrayList = null,
    reviewManagementRoles: ?*BasicArrayList = null,
    customerManagementRoles: ?*BasicArrayList = null,
    workflowManagementRoles: ?*BasicArrayList = null,
    orderManagementRoles: ?*BasicArrayList = null,
    adjusterManagementRoles: ?*BasicArrayList = null,
    shippingManagementRoles: ?*BasicArrayList = null,
    webManagementRoles: ?*BasicArrayList = null,
    var instance: ?*AdminRoleFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AdminRoleFactory.create();
    }

    fn initFields(this: *Self) void {
        this.adminRoles = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.storeAdminRoles = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.storeManagementRoles = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.productManagementRoles = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.reviewManagementRoles = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.customerManagementRoles = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.workflowManagementRoles = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.orderManagementRoles = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.adjusterManagementRoles = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.shippingManagementRoles = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.webManagementRoles = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn getInstance() ?*AdminRoleFactory {
        return Inheritance.upcast(?*AdminRoleFactory, AdminRoleFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const basicUserRoleFactory: ?*BasicUserRoleFactory = Inheritance.upcast(?*BasicUserRoleFactory, BasicUserRoleFactory.getInstance());
        _ = Inheritance.call(this.adminRoles.?, "add", .{ basicUserRoleFactory.?.ADMINISTRATOR });
        _ = Inheritance.call(this.storeAdminRoles.?, "add", .{ basicUserRoleFactory.?.ADMINISTRATOR });
        _ = Inheritance.call(this.storeAdminRoles.?, "add", .{ basicUserRoleFactory.?.STOREMANAGER });
        _ = Inheritance.call(this.storeManagementRoles.?, "add", .{ basicUserRoleFactory.?.ADMINISTRATOR });
        _ = Inheritance.call(this.storeManagementRoles.?, "add", .{ basicUserRoleFactory.?.STOREMANAGER });
        _ = Inheritance.call(this.storeManagementRoles.?, "add", .{ basicUserRoleFactory.?.CUSTOMERMANAGER });
        _ = Inheritance.call(this.storeManagementRoles.?, "add", .{ basicUserRoleFactory.?.ADJUSTER });
        _ = Inheritance.call(this.storeManagementRoles.?, "add", .{ basicUserRoleFactory.?.PRODUCTMANAGER });
        _ = Inheritance.call(this.storeManagementRoles.?, "add", .{ basicUserRoleFactory.?.REVIEWER });
        _ = Inheritance.call(this.storeManagementRoles.?, "add", .{ basicUserRoleFactory.?.SHIPPING });
        _ = Inheritance.call(this.productManagementRoles.?, "add", .{ basicUserRoleFactory.?.ADMINISTRATOR });
        _ = Inheritance.call(this.productManagementRoles.?, "add", .{ basicUserRoleFactory.?.STOREMANAGER });
        _ = Inheritance.call(this.productManagementRoles.?, "add", .{ basicUserRoleFactory.?.PRODUCTMANAGER });
        _ = Inheritance.call(this.reviewManagementRoles.?, "add", .{ basicUserRoleFactory.?.ADMINISTRATOR });
        _ = Inheritance.call(this.reviewManagementRoles.?, "add", .{ basicUserRoleFactory.?.STOREMANAGER });
        _ = Inheritance.call(this.reviewManagementRoles.?, "add", .{ basicUserRoleFactory.?.REVIEWER });
        _ = Inheritance.call(this.customerManagementRoles.?, "add", .{ basicUserRoleFactory.?.ADMINISTRATOR });
        _ = Inheritance.call(this.customerManagementRoles.?, "add", .{ basicUserRoleFactory.?.STOREMANAGER });
        _ = Inheritance.call(this.customerManagementRoles.?, "add", .{ basicUserRoleFactory.?.CUSTOMERMANAGER });
        _ = Inheritance.call(this.workflowManagementRoles.?, "add", .{ basicUserRoleFactory.?.ADMINISTRATOR });
        _ = Inheritance.call(this.workflowManagementRoles.?, "add", .{ basicUserRoleFactory.?.STOREMANAGER });
        _ = Inheritance.call(this.workflowManagementRoles.?, "add", .{ basicUserRoleFactory.?.WORKFLOWEDITOR });
        _ = Inheritance.call(this.orderManagementRoles.?, "add", .{ basicUserRoleFactory.?.ADMINISTRATOR });
        _ = Inheritance.call(this.orderManagementRoles.?, "add", .{ basicUserRoleFactory.?.STOREMANAGER });
        _ = Inheritance.call(this.adjusterManagementRoles.?, "add", .{ basicUserRoleFactory.?.ADMINISTRATOR });
        _ = Inheritance.call(this.adjusterManagementRoles.?, "add", .{ basicUserRoleFactory.?.STOREMANAGER });
        _ = Inheritance.call(this.adjusterManagementRoles.?, "add", .{ basicUserRoleFactory.?.ADJUSTER });
        _ = Inheritance.call(this.shippingManagementRoles.?, "add", .{ basicUserRoleFactory.?.ADMINISTRATOR });
        _ = Inheritance.call(this.shippingManagementRoles.?, "add", .{ basicUserRoleFactory.?.STOREMANAGER });
        _ = Inheritance.call(this.shippingManagementRoles.?, "add", .{ basicUserRoleFactory.?.SHIPPING });
        _ = Inheritance.call(this.webManagementRoles.?, "add", .{ basicUserRoleFactory.?.ADMINISTRATOR });
        _ = Inheritance.call(this.webManagementRoles.?, "add", .{ basicUserRoleFactory.?.STOREMANAGER });
        _ = Inheritance.call(this.webManagementRoles.?, "add", .{ basicUserRoleFactory.?.WEBMANAGER });
        _ = Inheritance.call(this.webManagementRoles.?, "add", .{ basicUserRoleFactory.?.WORKFLOWEDITOR });
        _ = Inheritance.call(this.webManagementRoles.?, "add", .{ basicUserRoleFactory.?.VIEWEDITOR });
        return this;
    }
    

    pub fn getProductManagementRoles(self: *Self) ?*BasicArrayList {
        return self.productManagementRoles;
    }
    

    pub fn getAdminRoles(self: *Self) ?*BasicArrayList {
        return self.adminRoles;
    }
    

    pub fn getStoreAdminRoles(self: *Self) ?*BasicArrayList {
        return self.storeAdminRoles;
    }
    

    pub fn getStoreManagementRoles(self: *Self) ?*BasicArrayList {
        return self.storeManagementRoles;
    }
    

    pub fn getReviewManagementRoles(self: *Self) ?*BasicArrayList {
        return self.reviewManagementRoles;
    }
    

    pub fn getCustomerManagementRoles(self: *Self) ?*BasicArrayList {
        return self.customerManagementRoles;
    }
    

    pub fn getWorkflowManagementRoles(self: *Self) ?*BasicArrayList {
        return self.workflowManagementRoles;
    }
    

    pub fn getWebManagementRoles(self: *Self) ?*BasicArrayList {
        return self.webManagementRoles;
    }
    

    pub fn getShippingManagementRoles(self: *Self) ?*BasicArrayList {
        return self.shippingManagementRoles;
    }
    

    pub fn getAdjusterManagementRoles(self: *Self) ?*BasicArrayList {
        return self.adjusterManagementRoles;
    }
    

    pub fn getOrderManagementRoles(self: *Self) ?*BasicArrayList {
        return self.orderManagementRoles;
    }
};


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

pub const StoreRoleFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.role.StoreRoleFactory";
    roles: ?*BasicArrayList = null,
    subscriberRoles: ?*BasicArrayList = null,
    wholesaleRoles: ?*BasicArrayList = null,
    var instance: ?*StoreRoleFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = StoreRoleFactory.create();
    }

    fn initFields(this: *Self) void {
        this.roles = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.subscriberRoles = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.wholesaleRoles = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn getInstance() ?*StoreRoleFactory {
        return Inheritance.upcast(?*StoreRoleFactory, StoreRoleFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const basicUserRoleFactory: ?*BasicUserRoleFactory = Inheritance.upcast(?*BasicUserRoleFactory, BasicUserRoleFactory.getInstance());
        _ = Inheritance.call(this.roles.?, "add", .{ basicUserRoleFactory.?.CUSTOMER });
        _ = Inheritance.call(this.roles.?, "add", .{ basicUserRoleFactory.?.SUBSCRIBERCUSTOMER });
        _ = Inheritance.call(this.roles.?, "add", .{ basicUserRoleFactory.?.WHOLESALECUSTOMER });
        _ = Inheritance.call(this.subscriberRoles.?, "add", .{ basicUserRoleFactory.?.SUBSCRIBERCUSTOMER });
        _ = Inheritance.call(this.wholesaleRoles.?, "add", .{ basicUserRoleFactory.?.WHOLESALECUSTOMER });
        return this;
    }
    

    pub fn getRoles(self: *Self) ?*BasicArrayList {
        return self.roles;
    }
    

    pub fn getSubscriberRoles(self: *Self) ?*BasicArrayList {
        return self.subscriberRoles;
    }
    

    pub fn getWholesaleRoles(self: *Self) ?*BasicArrayList {
        return self.wholesaleRoles;
    }
};


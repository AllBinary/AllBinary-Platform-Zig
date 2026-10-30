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
// package org.allbinary.business.user.modules.admin.store

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const UserFactoryInterface = @import("org/allbinary/business/user/UserFactoryInterface.zig").UserFactoryInterface;
const UserInterface = @import("org/allbinary/business/user/UserInterface.zig").UserInterface;
const StoreAdminUser = @import("org/allbinary/business/user/modules/admin/store/StoreAdminUser.zig").StoreAdminUser;

pub const StoreAdminUserFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.modules.admin.store.StoreAdminUserFactory";
    // Implements UserFactoryInterface
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self) ?*UserInterface {
        _ = self;
        return Inheritance.upcast(?*UserInterface, StoreAdminUser.create());
    }
    

    // throws Exception
    pub fn getInstance1(self: *Self, hashMap: ?*HashMap) ?*UserInterface {
        _ = self;
        return Inheritance.upcast(?*UserInterface, Inheritance.callStatic(StoreAdminUser, "create1", .{ hashMap }));
    }
};


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
// const Serializable = @import("java/io/Serializable.zig").Serializable;
const UserFactoryInterface = @import("org/allbinary/business/user/UserFactoryInterface.zig").UserFactoryInterface;
const BasicUserRole = @import("org/allbinary/business/user/role/BasicUserRole.zig").BasicUserRole;

pub const UserRole = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.role.UserRole";
    basicUserRole: ?*BasicUserRole = null,
    userFactoryInterface: ?*UserFactoryInterface = null,
    // Implements Serializable

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(aBasicUserRole: ?*BasicUserRole, aUserFactoryInterface: ?*UserFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.basicUserRole = aBasicUserRole;
        this.userFactoryInterface = aUserFactoryInterface;
        return this;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Object.toString(Object.of(self.basicUserRole)));
    }
    

    pub fn getBasicUserRole(self: *Self) ?*BasicUserRole {
        return self.basicUserRole;
    }
    

    // throws Exception
    pub fn getUserFactory(self: *Self) ?*UserFactoryInterface {
        return self.userFactoryInterface;
    }
    

    pub fn getSessionTimeout(self: *Self) i64 {
        return self.basicUserRole.?.getSessionTimeout();
    }
    

    pub fn getSessionInactivityTimeout(self: *Self) i64 {
        return self.basicUserRole.?.getSessionInactivityTimeout();
    }
};


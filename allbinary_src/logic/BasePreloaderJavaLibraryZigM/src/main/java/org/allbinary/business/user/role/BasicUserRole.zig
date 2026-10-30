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
const BasicUserRoles = @import("org/allbinary/business/user/role/BasicUserRoles.zig").BasicUserRoles;

pub const BasicUserRole = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.role.BasicUserRole";
    m_int_RoleId: i32 = 0,
    role: ?*String = null,
    displayValue: ?*String = null,
    sessionTimeout: i64 = 0,
    sessionInactivityTimeout: i64 = 0,
    // Implements Serializable

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
    }
    

    pub fn create4(aRole: ?*String, a_int_RoleId: i32, aSessionTimeout: i64, aSessionInactivityTimeout: i64) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.* = Inheritance.callStatic(BasicUserRole, "create5", .{ aRole, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout }).*;
        return this;
    }
    

    pub fn create5(aRole: ?*String, aDisplayValue: ?*String, a_int_RoleId: i32, aSessionTimeout: i64, aSessionInactivityTimeout: i64) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.m_int_RoleId = a_int_RoleId;
        this.role = aRole;
        this.displayValue = aDisplayValue;
        this.sessionTimeout = aSessionTimeout;
        this.sessionInactivityTimeout = aSessionInactivityTimeout;
        _ = Inheritance.call(BasicUserRoles.getInstance().?.roleVector.?, "add", .{ this });
        return this;
    }
    

    pub fn getRoleId(self: *Self) i32 {
        return self.m_int_RoleId;
    }
    

    pub fn getRole(self: *Self) ?*String {
        return self.role;
    }
    

    pub fn getSessionTimeout(self: *Self) i64 {
        return self.sessionTimeout;
    }
    

    pub fn getSessionInactivityTimeout(self: *Self) i64 {
        return self.sessionInactivityTimeout;
    }
    

    pub fn equals(self: *Self, basicUserRole: ?*BasicUserRole) bool {
        if (self.getRoleId() == basicUserRole.?.getRoleId()) {
            return true;
        }
        return false;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.getRole());
    }
};


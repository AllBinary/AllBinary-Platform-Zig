// 
// AllBinary Open License Version 1 
// Copyright (c) 2026 AllBinary 
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
const BasicUserRole = @import("org/allbinary/business/user/role/BasicUserRole.zig").BasicUserRole;

pub const BasicUserRoles = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.role.BasicUserRoles";
    roleVector: ?*BasicArrayList = null,
    var instance: ?*BasicUserRoles = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BasicUserRoles.create();
    }

    fn initFields(this: *Self) void {
        this.roleVector = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*BasicUserRoles {
        return Inheritance.upcast(?*BasicUserRoles, BasicUserRoles.instance);
    }
    

    // throws Exception
    pub fn getRole(self: *Self, role: ?*String) ?*BasicUserRole {
        const roleVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.getAll());
        const size: i32 = roleVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const userRole: ?*BasicUserRole = Inheritance.cast(?*BasicUserRole, Inheritance.call(roleVector.?, "get", .{ index }));
            if (Inheritance.call(role.?, "compareTo", .{ Object.toString(Object.of(userRole)) }) == 0) {
                return userRole;
            }
            }
        }
        std.debug.panic("{any}", .{exception: { _ = String.literal("Unable to get role - Unknown Role"); break :exception error.Exception; }});
    }
    

    pub fn getAll(self: *Self) ?*BasicArrayList {
        return self.roleVector;
    }
};


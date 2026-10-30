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
const UserFactoryInterface = @import("org/allbinary/business/user/UserFactoryInterface.zig").UserFactoryInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const BasicUserRole = @import("org/allbinary/business/user/role/BasicUserRole.zig").BasicUserRole;
const UserRole = @import("org/allbinary/business/user/role/UserRole.zig").UserRole;
const UserRoleFactory = @import("org/allbinary/business/user/role/UserRoleFactory.zig").UserRoleFactory;

pub const UserRoleB = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.role.UserRoleB";
    base: UserRole = undefined,
    pub var roleVector: ?*BasicArrayList = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        roleVector = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create2(aBasicUserRole: ?*BasicUserRole, aUserFactoryInterface: ?*UserFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(UserRole, "create2", .{ aBasicUserRole, aUserFactoryInterface }).*;
        _ = Inheritance.call(UserRoleB.roleVector.?, "add", .{ this });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getRole(role: ?*String) ?*UserRole {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        _ = UserRoleFactory.getInstance();
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ role })) {
            const roleVector_: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, UserRoleB.getAll());
            const size: i32 = roleVector_.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const userRole: ?*UserRole = Inheritance.cast(?*UserRole, Inheritance.call(roleVector_.?, "get", .{ index }));
                if (Inheritance.call(role.?, "compareTo", .{ Object.toString(Object.of(userRole)) }) == 0) {
                    return userRole;
                }
                }
            }
        }
        std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Unable to get role - Unknown Role = "), role); break :exception error.Exception; }});
    }
    

    pub fn getAll() ?*BasicArrayList {
        _ = UserRoleFactory.getInstance();
        return Inheritance.upcast(?*BasicArrayList, UserRoleB.roleVector);
    }
};


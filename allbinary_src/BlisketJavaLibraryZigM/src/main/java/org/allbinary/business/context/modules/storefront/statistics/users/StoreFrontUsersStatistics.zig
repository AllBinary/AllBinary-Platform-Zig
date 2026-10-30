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
// package org.allbinary.business.context.modules.storefront.statistics.users

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const UserInterface = @import("org/allbinary/business/user/UserInterface.zig").UserInterface;
const UserRole = @import("org/allbinary/business/user/role/UserRole.zig").UserRole;
const UserEntityFactory = @import("org/allbinary/data/tables/user/UserEntityFactory.zig").UserEntityFactory;
const UserEntityInterface = @import("org/allbinary/data/tables/user/UserEntityInterface.zig").UserEntityInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StoreFrontUsersStatisticsData = @import("org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatisticsData.zig").StoreFrontUsersStatisticsData;
const StoreFrontUsersStatisticsInterface = @import("org/allbinary/business/context/modules/storefront/statistics/users/StoreFrontUsersStatisticsInterface.zig").StoreFrontUsersStatisticsInterface;
const Long = @import("java/lang/Long.zig").Long;

pub const StoreFrontUsersStatistics = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics";
    pub const java_interfaces = .{ StoreFrontUsersStatisticsInterface };
    totalNumberOfUsers: ?*Long = null,
    totalUsersByRoleHashMap: ?*HashMap = null,
    // Implements StoreFrontUsersStatisticsInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create1(storeFrontInterface: ?*StoreFrontInterface) *Self {
        _ = storeFrontInterface;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.totalUsersByRoleHashMap = Inheritance.upcast(@TypeOf(this.totalUsersByRoleHashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const userEntityInterface: ?*UserEntityInterface = Inheritance.upcast(?*UserEntityInterface, UserEntityFactory.getInstance());
        const userVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(userEntityInterface.?, "getCustomers").getCustomers());
        this.totalNumberOfUsers = Inheritance.callStatic(Long, "create1", .{ userVector.?.size() });
        const size: i32 = userVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const userInterface: ?*UserInterface = Inheritance.cast(?*UserInterface, Inheritance.call(userVector.?, "get", .{ index }));
            const nextUserRole: ?*UserRole = Inheritance.upcast(?*UserRole, Inheritance.receiver(userInterface.?, "getRole").getRole());
            const currentNumberOfUsersForRole: ?*Long = Inheritance.upcast(?*Long, Inheritance.call(this, "getNewTotal", .{ nextUserRole }));
            _ = Inheritance.call(this.totalUsersByRoleHashMap.?, "put", .{ nextUserRole, currentNumberOfUsersForRole });
            }
        }
        return this;
    }
    

    pub fn getNewTotal(self: *Self, userRole: ?*UserRole) ?*Long {
        var numberOfUsersForRoleLong: ?*Long = Inheritance.cast(?*Long, Inheritance.call(self.totalUsersByRoleHashMap.?, "get", .{ userRole }));
        if (numberOfUsersForRoleLong == null) {
            numberOfUsersForRoleLong = Inheritance.callStatic(Long, "create1", .{ 0 });
        }
        return Inheritance.callStatic(Long, "create1", .{ numberOfUsersForRoleLong.?.longValue() + 1 });
    }
    

    pub fn getNumberOfUsers(self: *Self) ?*Long {
        return self.totalNumberOfUsers;
    }
    

    pub fn getNumberOfUsersByRole(self: *Self, role: ?*String) ?*Long {
        const totalForRole: ?*Long = Inheritance.cast(?*Long, Inheritance.call(self.totalUsersByRoleHashMap.?, "get", .{ role }));
        return totalForRole;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ StoreFrontUsersStatisticsData.getInstance().?.NUMBEROFUSERS, Object.toString(Object.of(self.getNumberOfUsers())) });
        const setOfUserRoles: ?*Set = Inheritance.upcast(?*Set, self.totalUsersByRoleHashMap.?.keySet());
        var nextUserRole: ?*UserRole = null;
        const userRoleArray: []?Object = setOfUserRoles.?.toArray();
        const size: i32 = @as(i32, @intCast(userRoleArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            nextUserRole = Inheritance.cast(?*UserRole, userRoleArray[@intCast(index)]);
            const totalForRole: ?*Long = Inheritance.cast(?*Long, Inheritance.call(self.totalUsersByRoleHashMap.?, "get", .{ nextUserRole }));
            _ = Inheritance.call(hashMap.?, "put", .{ Object.toString(Object.of(nextUserRole)), String.valueOf(totalForRole.?) });
            }
        }
        return hashMap;
    }
    

    pub fn toVector(self: *Self) ?*BasicArrayList {
        _ = self;
        return null;
    }
    

    pub fn getKey(self: *Self) ?Object {
        _ = self;
        return null;
    }
};


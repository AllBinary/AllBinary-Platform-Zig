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
// package org.allbinary.logic.communication.smtp.configuration.user.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const TableMappingInterface = @import("org/allbinary/data/tables/TableMappingInterface.zig").TableMappingInterface;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const UserEmailEventConfigurationData = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationData.zig").UserEmailEventConfigurationData;
const UserEmailEventConfigurationInterface = @import("org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface.zig").UserEmailEventConfigurationInterface;

pub const UserEmailEventConfigurationMapping = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping";
    userEmailEventConfigurationInterface: ?*UserEmailEventConfigurationInterface = null,
    // Implements TableMappingInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(userEmailEventConfigurationInterface: ?*UserEmailEventConfigurationInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.userEmailEventConfigurationInterface = userEmailEventConfigurationInterface;
        return this;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ UserEmailEventConfigurationData.NAME, self.userEmailEventConfigurationInterface.?.getName() });
        _ = Inheritance.call(hashMap.?, "put", .{ UserEmailEventConfigurationData.LISTENER_CLASSPATH, self.userEmailEventConfigurationInterface.?.getEventListenerClassPath() });
        return hashMap;
    }
    

    // throws Exception
    pub fn getKey(self: *Self) ?Object {
        _ = self;
        return Inheritance.upcast(?Object, UserEmailEventConfigurationData.NAME);
    }
    

    // throws Exception
    pub fn toVector(self: *Self) ?*BasicArrayList {
        const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(vector.?, "add", .{ self.userEmailEventConfigurationInterface.?.getName() });
        _ = Inheritance.call(vector.?, "add", .{ self.userEmailEventConfigurationInterface.?.getEventListenerClassPath() });
        return vector;
    }
};


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
// package org.allbinary.thirdparty.store

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NoThirdPartyStore = @import("org/allbinary/thirdparty/store/NoThirdPartyStore.zig").NoThirdPartyStore;
const ThirdPartyStore = @import("org/allbinary/thirdparty/store/ThirdPartyStore.zig").ThirdPartyStore;

pub const ThirdPartyStoreFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.thirdparty.store.ThirdPartyStoreFactory";
    var instance: ?*NoThirdPartyStore = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = NoThirdPartyStore.create();
    }
    

    pub fn getInstance() ?*ThirdPartyStore {
        return Inheritance.upcast(?*ThirdPartyStore, ThirdPartyStoreFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};


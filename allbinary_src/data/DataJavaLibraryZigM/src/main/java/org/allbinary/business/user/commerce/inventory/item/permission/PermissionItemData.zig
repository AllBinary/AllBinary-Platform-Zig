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
// package org.allbinary.business.user.commerce.inventory.item.permission

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const PermissionItemData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData";
    pub const WHO: ?*String = String.literal("PERMISSIONSITEM_WHO");
    pub const WHAT: ?*String = String.literal("PERMISSIONSITEM_WHAT");
    pub const TYPE: ?*String = String.literal("PERMISSIONSITEM_TYPE");
    pub const START_TIME: ?*String = String.literal("PERMISSIONSITEM_START_TIME");
    pub const END_TIME: ?*String = String.literal("PERMISSIONSITEM_END_TIME");
    pub const REMOTE_ADDR: ?*String = String.literal("PERMISSIONSITEM_REMOTE_ADDR");

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};


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
// package org.allbinary.logic.communication.sql

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DbConnectionInfo = @import("org/allbinary/business/init/db/DbConnectionInfo.zig").DbConnectionInfo;
const AbSqlBasic = @import("org/allbinary/logic/communication/sql/AbSqlBasic.zig").AbSqlBasic;

pub const AbSqlTablePresentation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.sql.AbSqlTablePresentation";
    base: AbSqlBasic = undefined,
    

    pub fn create1(databaseConnectionInfoInterface: ?*DbConnectionInfo) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbSqlBasic, "create1", .{ databaseConnectionInfoInterface }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};


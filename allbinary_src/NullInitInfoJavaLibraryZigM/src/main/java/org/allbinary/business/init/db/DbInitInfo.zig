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
// package org.allbinary.business.init.db

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const DbConnectionInfo = @import("org/allbinary/business/init/db/DbConnectionInfo.zig").DbConnectionInfo;

//import org.allbinary.logic.communication.log.config.type.LogConfigTypes;
pub const DbInitInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.init.db.DbInitInfo";
    base: DbConnectionInfo = undefined,
    

    pub fn create2(initFileName: ?*String, read: bool) *Self {
        _ = initFileName;
        _ = read;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(DbConnectionInfo, "create", .{  }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getUrl(self: *Self) ?*String {
        const url: ?*String = Inheritance.upcast(?*String, self.base.getUrl());
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.literal("Url: "), url), self, String.literal("getUrl") });
        return url;
    }
    

    // throws Exception
    pub fn write(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
    }
    

    // throws Exception
    pub fn load(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
    }
    

    pub fn setHasRead(self: *Self, value: bool) void {
        _ = value;
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
    }
};


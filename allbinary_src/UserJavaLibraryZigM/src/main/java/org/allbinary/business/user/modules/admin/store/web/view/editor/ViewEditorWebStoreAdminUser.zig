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
// package org.allbinary.business.user.modules.admin.store.web.view.editor

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const User = @import("org/allbinary/business/user/modules/User.zig").User;
const WeblisketSessionInterface = @import("org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface.zig").WeblisketSessionInterface;

pub const ViewEditorWebStoreAdminUser = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.modules.admin.store.web.view.editor.ViewEditorWebStoreAdminUser";
    base: User = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(User, "create", .{  }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create1(userHashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(User, "create1", .{ userHashMap }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn validateSession(self: *Self, weblisketSession: ?*WeblisketSessionInterface) void {
        _ = Inheritance.call(&self.base, "validateSession", .{ weblisketSession });
        _ = Inheritance.call(self, "updateSession", .{ weblisketSession });
    }
    

    pub fn updateSession(self: *Self, weblisketSession: ?*WeblisketSessionInterface) void {
        _ = Inheritance.call(weblisketSession.?, "setStoreName", .{ Inheritance.receiver(self, "getPermissions").getPermissions() });
    }
};


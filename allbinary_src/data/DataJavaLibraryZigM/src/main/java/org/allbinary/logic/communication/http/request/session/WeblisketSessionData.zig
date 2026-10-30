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
// package org.allbinary.logic.communication.http.request.session

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const WeblisketSessionData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.request.session.WeblisketSessionData";
    pub const INVALIDATESESSION: ?*String = String.literal("SESSION_INVALIDATE_SESSION");
    pub const ATTEMPTS: ?*String = String.literal("SESSION_ATTEMPTS");
    pub const TIMEOUT: ?*String = String.literal("SESSION_TIMEOUT");
    pub const REMOVABLEUSERNAME: ?*String = String.literal("SESSION_REMOVABLE_USER_NAME");
    pub const REMOVABLEPASSWORD: ?*String = String.literal("SESSION_REMOVABLE_PASSWORD");
    pub const REMOVABLENEWPASSWORD: ?*String = String.literal("SESSION_REMOVABLE_NEW_PASSWORD");
    pub const REMOVABLEREENTERNEWPASSWORD: ?*String = String.literal("SESSION_REMOVABLE_REENTER_NEW_PASSWORD");
    pub const AUTHENTICATED: ?*String = String.literal("SESSION_AUTHENTICATED");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};


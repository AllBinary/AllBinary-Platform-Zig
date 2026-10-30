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
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;

pub const ThirdPartyStore = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.thirdparty.store.ThirdPartyStore";
    authorized: bool = false,
    name: ?*String = null,

    fn initFields(this: *Self) void {
        this.authorized = false;
        
    }
    

    pub fn create1(name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        return this;
    }
    

    pub fn authorize(self: *Self, clientInformationInterface: ?*AbeClientInformationInterface) void {
        _ = clientInformationInterface;
        _ = self;
    }
    

    pub fn isAuthorized(self: *Self) bool {
        return self.authorized;
    }
    

    pub fn setAuthorized(self: *Self, authorized: bool) void {
        self.authorized = authorized;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
};


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
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const ThirdPartyStore = @import("org/allbinary/thirdparty/store/ThirdPartyStore.zig").ThirdPartyStore;

pub const NoThirdPartyStore = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.thirdparty.store.NoThirdPartyStore";
    base: ThirdPartyStore = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ThirdPartyStore, "create1", .{ StringUtil.getInstance().?.EMPTY_STRING }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn authorize(self: *Self, clientInformationInterface: ?*AbeClientInformationInterface) void {
        _ = clientInformationInterface;
        _ = Inheritance.call(self, "setAuthorized", .{ true });
    }
};


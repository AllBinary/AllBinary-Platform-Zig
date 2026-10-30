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
// package org.allbinary.logic.system.security.licensing

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LongArrayIdentifierInterface = @import("org/allbinary/thirdparty/store/LongArrayIdentifierInterface.zig").LongArrayIdentifierInterface;
const AbeClientInformation = @import("org/allbinary/logic/system/security/licensing/AbeClientInformation.zig").AbeClientInformation;

pub const StoreAppClientInformation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.StoreAppClientInformation";
    base: AbeClientInformation = undefined,
    longArrayIdentifier: []i64 = &.{},
    // Implements LongArrayIdentifierInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create5(name: ?*String, version: ?*String, specialName: ?*String, shortName: ?*String, longArrayIdentifier: []i64) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbeClientInformation, "create4", .{ name, version, specialName, shortName }).*;
        this.initFields();
        this.longArrayIdentifier = longArrayIdentifier;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getLongArrayIdentifier(self: *Self) []i64 {
        return self.longArrayIdentifier;
    }
};


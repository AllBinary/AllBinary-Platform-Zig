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
const AbeClientInformation = @import("org/allbinary/logic/system/security/licensing/AbeClientInformation.zig").AbeClientInformation;

pub const InputAutomationClientInformation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.InputAutomationClientInformation";
    base: AbeClientInformation = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbeClientInformation, "create4", .{ String.literal("InputAutomationTool"), String.literal("0.0.1"), String.literal("InputAutomationTool 0.0.1"), String.literal("IA") }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};


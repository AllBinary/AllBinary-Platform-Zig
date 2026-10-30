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
// package org.allbinary.logic.system.os.linux

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GenericOperatingSystem = @import("org/allbinary/logic/system/os/GenericOperatingSystem.zig").GenericOperatingSystem;

pub const LinuxOS = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.os.linux.LinuxOS";
    base: GenericOperatingSystem = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = GenericOperatingSystem.create().*;
        Inheritance.fieldPointer(this, "scalable").* = true;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isAutoHide(self: *Self) bool {
        _ = self;
        return true;
    }
};


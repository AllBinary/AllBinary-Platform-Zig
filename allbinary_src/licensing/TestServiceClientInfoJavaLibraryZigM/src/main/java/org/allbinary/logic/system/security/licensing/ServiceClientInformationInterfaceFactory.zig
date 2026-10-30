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
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const TestClientInformation = @import("org/allbinary/logic/system/security/licensing/TestClientInformation.zig").TestClientInformation;

pub const ServiceClientInformationInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory";
    var instance: ?*TestClientInformation = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TestClientInformation.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*AbeClientInformationInterface {
        return Inheritance.upcast(?*AbeClientInformationInterface, ServiceClientInformationInterfaceFactory.instance);
    }
};


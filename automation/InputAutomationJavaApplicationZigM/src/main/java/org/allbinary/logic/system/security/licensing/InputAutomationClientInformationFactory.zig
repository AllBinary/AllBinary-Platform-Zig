// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
const InputAutomationClientInformation = @import("org/allbinary/logic/system/security/licensing/InputAutomationClientInformation.zig").InputAutomationClientInformation;

pub const InputAutomationClientInformationFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory";
    var instance: ?*InputAutomationClientInformation = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = InputAutomationClientInformation.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*InputAutomationClientInformation {
        return Inheritance.upcast(?*InputAutomationClientInformation, InputAutomationClientInformationFactory.instance);
    }
};


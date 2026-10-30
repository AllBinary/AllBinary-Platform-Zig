// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic.system.hardware.components.interfaces

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const HardwareComponentInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface.zig").HardwareComponentInterface;

pub const NoHardwareComponent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent";
    pub const java_interfaces = .{ HardwareComponentInterface };
    // Implements HardwareComponentInterface
    var instance: ?*NoHardwareComponent = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = NoHardwareComponent.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*NoHardwareComponent {
        return Inheritance.upcast(?*NoHardwareComponent, NoHardwareComponent.instance);
    }
    

    pub fn compareTo(self: *Self, componentInterface: ?*HardwareComponentInterface) bool {
        if (Object.same(self, componentInterface)) {
            return true;
        }
        return false;
    }
    

    pub fn toString(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.NULL_STRING);
    }
};


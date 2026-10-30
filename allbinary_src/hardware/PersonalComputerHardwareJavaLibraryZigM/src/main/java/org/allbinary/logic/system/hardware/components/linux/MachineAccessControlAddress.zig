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
// package org.allbinary.logic.system.hardware.components.linux

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const HardwareComponentInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface.zig").HardwareComponentInterface;
const MachineAccessControlAddressInterface = @import("org/allbinary/logic/system/hardware/components/interfaces/MachineAccessControlAddressInterface.zig").MachineAccessControlAddressInterface;

pub const MachineAccessControlAddress = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.hardware.components.linux.MachineAccessControlAddress";
    // Implements HardwareComponentInterface
    // Implements MachineAccessControlAddressInterface
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn compareTo(self: *Self, componentInterface: ?*HardwareComponentInterface) bool {
        _ = componentInterface;
        _ = self;
        return true;
    }
    

    pub fn toString(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
};


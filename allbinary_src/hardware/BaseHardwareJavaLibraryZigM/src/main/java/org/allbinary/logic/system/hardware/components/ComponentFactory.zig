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
// package org.allbinary.logic.system.hardware.components

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Component = @import("org/allbinary/logic/system/hardware/components/Component.zig").Component;

pub const ComponentFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.hardware.components.ComponentFactory";
    VGA: ?*Component = null,
    IDE: ?*Component = null,
    SCSI: ?*Component = null,
    BRIDGE: ?*Component = null,
    ETHERNET: ?*Component = null,
    USB: ?*Component = null,
    MULTIMEDIA: ?*Component = null,
    PCI: ?*Component = null,
    RAID: ?*Component = null,
    SMBUS: ?*Component = null,
    PIC: ?*Component = null,
    Class: ?*Component = null,
    UNKNOWN: ?*Component = null,
    var instance: ?*ComponentFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ComponentFactory.create();
    }

    fn initFields(this: *Self) void {
        this.VGA = Inheritance.callStatic(Component, "create1", .{ String.literal("VGA") });
        this.IDE = Inheritance.callStatic(Component, "create1", .{ String.literal("IDE") });
        this.SCSI = Inheritance.callStatic(Component, "create1", .{ String.literal("SCSI") });
        this.BRIDGE = Inheritance.callStatic(Component, "create1", .{ String.literal("bridge") });
        this.ETHERNET = Inheritance.callStatic(Component, "create1", .{ String.literal("Ethernet") });
        this.USB = Inheritance.callStatic(Component, "create1", .{ String.literal("USB") });
        this.MULTIMEDIA = Inheritance.callStatic(Component, "create1", .{ String.literal("Multimedia") });
        this.PCI = Inheritance.callStatic(Component, "create1", .{ String.literal("PCI") });
        this.RAID = Inheritance.callStatic(Component, "create1", .{ String.literal("RAID") });
        this.SMBUS = Inheritance.callStatic(Component, "create1", .{ String.literal("SMBus") });
        this.PIC = Inheritance.callStatic(Component, "create1", .{ String.literal("PIC") });
        this.Class = Inheritance.callStatic(Component, "create1", .{ String.literal("Class") });
        this.UNKNOWN = Inheritance.callStatic(Component, "create1", .{ CommonStrings.getInstance().?.UNKNOWN });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ComponentFactory {
        return Inheritance.upcast(?*ComponentFactory, ComponentFactory.instance);
    }
};


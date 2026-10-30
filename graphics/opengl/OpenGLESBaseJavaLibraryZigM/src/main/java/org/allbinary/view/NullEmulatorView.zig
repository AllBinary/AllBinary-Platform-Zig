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
// package org.allbinary.view

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Displayable = @import("javax/microedition/lcdui/Displayable.zig").Displayable;
// const MIDlet = @import("javax/microedition/midlet/MIDlet.zig").MIDlet;
const EmulatorViewInterface = @import("org/allbinary/view/EmulatorViewInterface.zig").EmulatorViewInterface;

pub const NullEmulatorView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.view.NullEmulatorView";
    pub const java_interfaces = .{ EmulatorViewInterface };
    // Implements EmulatorViewInterface
    pub var NULL_EMULATOR_VIEW: ?*NullEmulatorView = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_EMULATOR_VIEW = NullEmulatorView.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn setMidlet(self: *Self, midlet: ?*MIDlet) void {
        _ = midlet;
        _ = self;
    }
    

    pub fn onEmulatorInitComplete(self: *Self, midletActivity: ?Object) void {
        _ = midletActivity;
        _ = self;
    }
    

    pub fn onSetDisplayable(self: *Self, displayable: ?*Displayable) void {
        _ = displayable;
        _ = self;
    }
};


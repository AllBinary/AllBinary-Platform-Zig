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
// package org.allbinary.gui.dialog

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CloseJDialogListenerInterface = @import("org/allbinary/gui/dialog/CloseJDialogListenerInterface.zig").CloseJDialogListenerInterface;
const System = @import("java/lang/System.zig").System;

pub const ExitCloseListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.gui.dialog.ExitCloseListener";
    pub const java_interfaces = .{ CloseJDialogListenerInterface };
    // Implements CloseJDialogListenerInterface
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn onClose(self: *Self) void {
        _ = self;
        _ = std.process.exit(@intCast(-1));
    }
};


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
// package org.allbinary.logic.control.contraints.display.browser

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Node = @import("org/w3c/dom/Node.zig").Node;
const DisplayInBrowserContraintsInterface = @import("org/allbinary/logic/control/contraints/display/browser/DisplayInBrowserContraintsInterface.zig").DisplayInBrowserContraintsInterface;

pub const DisplayInBrowserContraints = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraints";
    pub const java_interfaces = .{ DisplayInBrowserContraintsInterface };
    frameable: bool = false,
    mountable: bool = false,
    quickFrameable: bool = false,
    mountedLink: ?*String = null,
    // Implements DisplayInBrowserContraintsInterface

    fn initFields(this: *Self) void {
        this.frameable = false;
        this.mountable = false;
        this.quickFrameable = false;
        this.mountedLink = null;
    }
    

    pub fn create1(node: ?*Node) *Self {
        _ = node;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn isMountable(self: *Self) bool {
        return self.mountable;
    }
    

    pub fn setMountable(self: *Self, mountable: bool) void {
        self.mountable = mountable;
    }
    

    pub fn isFrameable(self: *Self) bool {
        return self.frameable;
    }
    

    pub fn setFrameable(self: *Self, frameable: bool) void {
        self.frameable = frameable;
    }
    

    pub fn isQuickFrameable(self: *Self) bool {
        return self.quickFrameable;
    }
    

    pub fn setQuickFrameable(self: *Self, quickFrameable: bool) void {
        self.quickFrameable = quickFrameable;
    }
    

    pub fn getMountedLink(self: *Self) ?*String {
        return self.mountedLink;
    }
    

    pub fn setMountedLink(self: *Self, mountedLink: ?*String) void {
        self.mountedLink = mountedLink;
    }
};


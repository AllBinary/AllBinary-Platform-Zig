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

pub const DisplayInBrowserContraintsData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsData";
    pub const NAME: ?*String = String.literal("DISPLAYBROWSERCONSTRAINTS_NAME");
    pub const FRAMEABLE: ?*String = String.literal("DISPLAYBROWSERCONSTRAINTS_FRAMEABLE");
    pub const MOUNTABLE: ?*String = String.literal("DISPLAYBROWSERCONSTRAINTS_MOUNTABLE");
    pub const QUICKFRAMEABLE: ?*String = String.literal("DISPLAYBROWSERCONSTRAINTS_QUICKFRAMEABLE");
    pub const MOUNTABLELINK: ?*String = String.literal("DISPLAYBROWSERCONSTRAINTS_MOUNTABLELINK");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};


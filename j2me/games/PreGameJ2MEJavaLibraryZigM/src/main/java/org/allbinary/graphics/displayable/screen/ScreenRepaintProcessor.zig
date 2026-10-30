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
// package org.allbinary.graphics.displayable.screen

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Displayable = @import("javax/microedition/lcdui/Displayable.zig").Displayable;
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;
const ScreenRepaintUtil = @import("org/allbinary/graphics/displayable/screen/ScreenRepaintUtil.zig").ScreenRepaintUtil;

pub const ScreenRepaintProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor";
    base: Processor = undefined,
    displayable: ?*Displayable = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(displayable: ?*Displayable) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Processor.create().*;
        this.initFields();
        this.displayable = displayable;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        _ = Inheritance.callStatic(ScreenRepaintUtil, "repaint", .{ self.displayable });
    }
};


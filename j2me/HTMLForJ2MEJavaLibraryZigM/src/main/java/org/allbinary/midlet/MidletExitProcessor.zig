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
// package org.allbinary.midlet

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const MIDlet = @import("javax/microedition/midlet/MIDlet.zig").MIDlet;
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;

pub const MidletExitProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.midlet.MidletExitProcessor";
    base: Processor = undefined,
    midlet: ?*MIDlet = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(midlet: ?*MIDlet) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Processor.create().*;
        this.initFields();
        this.midlet = midlet;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        _ = self;
    }
};


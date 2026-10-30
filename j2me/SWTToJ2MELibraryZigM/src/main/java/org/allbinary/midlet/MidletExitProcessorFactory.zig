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
const AppletUtil = @import("org/allbinary/AppletUtil.zig").AppletUtil;
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;
const MidletExitProcessor = @import("org/allbinary/midlet/MidletExitProcessor.zig").MidletExitProcessor;

pub const MidletExitProcessorFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.midlet.MidletExitProcessorFactory";
    var instance: ?*MidletExitProcessorFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MidletExitProcessorFactory.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*MidletExitProcessorFactory {
        return Inheritance.upcast(?*MidletExitProcessorFactory, MidletExitProcessorFactory.instance);
    }
    

    pub fn getExitInstance(self: *Self, midlet: ?*MIDlet) ?*Processor {
        _ = self;
        if (Inheritance.callStatic(AppletUtil, "isAppletLoader", .{ midlet }) or J2MEUtil.isJ2ME()) {
            return Inheritance.upcast(?*Processor, Processor.getInstance());
        } else {
            return Inheritance.upcast(?*Processor, Inheritance.callStatic(MidletExitProcessor, "create1", .{ midlet }));
        }
    }
};


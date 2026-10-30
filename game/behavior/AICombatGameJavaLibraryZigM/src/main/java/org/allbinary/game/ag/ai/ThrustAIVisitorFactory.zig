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
// package org.allbinary.game.ag.ai

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ThrustAIVisitor = @import("org/allbinary/game/ag/ai/ThrustAIVisitor.zig").ThrustAIVisitor;

pub const ThrustAIVisitorFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.ThrustAIVisitorFactory";
    var instance: ?*ThrustAIVisitor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ThrustAIVisitor.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*ThrustAIVisitor {
        return Inheritance.upcast(?*ThrustAIVisitor, ThrustAIVisitorFactory.instance);
    }
};


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
// package org.allbinary.ai

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const ArtificialIntelligenceInterface = @import("org/allbinary/ai/ArtificialIntelligenceInterface.zig").ArtificialIntelligenceInterface;

pub const ArtificialIntelligence = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.ai.ArtificialIntelligence";
    pub const java_interfaces = .{ ArtificialIntelligenceInterface };
    // Implements ArtificialIntelligenceInterface
    pub const AI_ID: i32 = 2;
    var instance: ?*ArtificialIntelligence = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ArtificialIntelligence.create();
    }
    

    pub fn getInstance() ?*ArtificialIntelligence {
        return Inheritance.upcast(?*ArtificialIntelligence, ArtificialIntelligence.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn processAI(self: *Self, layerManager: ?*AllBinaryLayerManager) void {
        _ = layerManager;
        _ = self;
    }
    

    pub fn getId(self: *Self) i32 {
        _ = self;
        return 1;
    }
};


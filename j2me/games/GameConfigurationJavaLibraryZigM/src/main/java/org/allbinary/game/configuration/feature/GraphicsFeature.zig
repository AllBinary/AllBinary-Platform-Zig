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
// package org.allbinary.game.configuration.feature

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Feature = @import("org/allbinary/game/configuration/feature/Feature.zig").Feature;

pub const GraphicsFeature = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.feature.GraphicsFeature";
    base: Feature = undefined,
    

    pub fn create1(name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Feature, "create1", .{ name }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
};


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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InputToGameKeyMapping = @import("org/allbinary/game/input/mapping/InputToGameKeyMapping.zig").InputToGameKeyMapping;
const J2MEGameInputMapping = @import("org/allbinary/game/input/J2MEGameInputMapping.zig").J2MEGameInputMapping;
const MotionJ2MEDefaultGameInputMapping = @import("org/allbinary/game/input/MotionJ2MEDefaultGameInputMapping.zig").MotionJ2MEDefaultGameInputMapping;

pub const MotionJ2MEGameInputMapping = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.MotionJ2MEGameInputMapping";
    base: J2MEGameInputMapping = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = J2MEGameInputMapping.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getDefault(self: *Self) ?*InputToGameKeyMapping {
        _ = self;
        return Inheritance.upcast(?*InputToGameKeyMapping, MotionJ2MEDefaultGameInputMapping.create().getInputMapping());
    }
};


// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.midlet

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ABRunnable = @import("org/allbinary/thread/ABRunnable.zig").ABRunnable;
const NullABRunnable = @import("org/allbinary/thread/NullABRunnable.zig").NullABRunnable;
const SpecialDemoGameMidlet = @import("org/allbinary/game/midlet/SpecialDemoGameMidlet.zig").SpecialDemoGameMidlet;

pub const LicenseCheckRunnableFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.midlet.LicenseCheckRunnableFactory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(self: *Self, specialDemoGameMidlet: ?*SpecialDemoGameMidlet) ?*ABRunnable {
        _ = specialDemoGameMidlet;
        _ = self;
        return Inheritance.upcast(?*ABRunnable, NullABRunnable.getInstance());
    }
};


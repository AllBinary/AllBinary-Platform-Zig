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
// package org.allbinary.media

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryVibrationME = @import("org/allbinary/media/AllBinaryVibrationME.zig").AllBinaryVibrationME;

pub const AllBinaryNoVibration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.AllBinaryNoVibration";
    base: AllBinaryVibrationME = undefined,
    pub var NO_VIBRATION: ?*AllBinaryVibrationME = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NO_VIBRATION = Inheritance.upcast(?*AllBinaryVibrationME, AllBinaryNoVibration.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = AllBinaryVibrationME.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn vibrate(self: *Self, duration: i32, @"type": i32, volume: i32) void {
        _ = duration;
        _ = @"type";
        _ = volume;
        _ = self;
    }
};


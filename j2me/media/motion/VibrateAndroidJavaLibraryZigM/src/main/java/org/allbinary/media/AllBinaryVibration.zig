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
const Context = @import("android/content/Context.zig").Context;
const Vibrator = @import("android/os/Vibrator.zig").Vibrator;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const GameConfigurationCentral = @import("org/allbinary/game/configuration/GameConfigurationCentral.zig").GameConfigurationCentral;
const AllBinaryNoVibration = @import("org/allbinary/media/AllBinaryNoVibration.zig").AllBinaryNoVibration;
const AllBinaryVibrationME = @import("org/allbinary/media/AllBinaryVibrationME.zig").AllBinaryVibrationME;

pub const AllBinaryVibration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.AllBinaryVibration";
    base: AllBinaryVibrationME = undefined,
    vibrator: ?*Vibrator = null,
    var VIBRATION: ?*AllBinaryVibrationME = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        VIBRATION = Inheritance.upcast(?*AllBinaryVibrationME, AllBinaryNoVibration.NO_VIBRATION);
    }

    fn initFields(this: *Self) void {
        this.vibrator = Inheritance.cast(?*Vibrator, Inheritance.call(Inheritance.receiverOf(ResourceUtil.getInstance().?, "getContext").getContext().?, "getSystemService", .{ Context.VIBRATOR_SERVICE }));
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = AllBinaryVibrationME.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*AllBinaryVibrationME {
        return Inheritance.upcast(?*AllBinaryVibrationME, AllBinaryVibration.VIBRATION);
    }
    

    pub fn init() void {
        if (Inheritance.receiverOf(Inheritance.receiverOf(GameConfigurationCentral.getInstance().?.VIBRATION.?, "getValue").getValue().?, "intValue").intValue() == 0) {
            AllBinaryVibration.VIBRATION = Inheritance.upcast(@TypeOf(AllBinaryVibration.VIBRATION), AllBinaryNoVibration.NO_VIBRATION);
        } else {
            AllBinaryVibration.VIBRATION = Inheritance.upcast(@TypeOf(AllBinaryVibration.VIBRATION), AllBinaryVibration.create());
        }
    }
    

    pub fn vibrate(self: *Self, duration: i32, @"type": i32, volume: i32) void {
        _ = @"type";
        _ = volume;
        _ = Inheritance.call(self.vibrator.?, "vibrate", .{ @as(i64, @intCast(duration)) });
    }
};


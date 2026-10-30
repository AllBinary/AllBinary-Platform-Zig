// 
// AllBinary Open License Version 1 
// Copyright (c) 2002 AllBinary 
//  
// By agreeing to this license you and any business entity you represent are 
// legally bound to the AllBinary Open License Version 1 legal agreement. 
//  
// You may obtain the AllBinary Open License Version 1 legal agreement from 
// AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
//  
// Created By: Travis Berthelot  
// Generated Code Do Not Modify
// package org.allbinary.media.audio

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CompositeSound = @import("org/allbinary/media/audio/CompositeSound.zig").CompositeSound;
const Sound = @import("org/allbinary/media/audio/Sound.zig").Sound;

pub const UpgradeSound = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.UpgradeSound";
    base: CompositeSound = undefined,
    var soundInterface: ?*Sound = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        soundInterface = Inheritance.upcast(?*Sound, UpgradeSound.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CompositeSound, "create1", .{ String.literal("resource:/wav/upgrade.wav") }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*Sound {
        return Inheritance.upcast(?*Sound, UpgradeSound.soundInterface);
    }
};


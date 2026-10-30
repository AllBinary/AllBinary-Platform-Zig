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
// package org.allbinary.media.audio

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BaseSoundsFactory = @import("org/allbinary/media/audio/BaseSoundsFactory.zig").BaseSoundsFactory;
const ErrorSound = @import("org/allbinary/media/audio/ErrorSound.zig").ErrorSound;
const SelectSound = @import("org/allbinary/media/audio/SelectSound.zig").SelectSound;
const Sound = @import("org/allbinary/media/audio/Sound.zig").Sound;

pub const EarlySoundsFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.EarlySoundsFactory";
    base: BaseSoundsFactory = undefined,
    var instance: ?*EarlySoundsFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = EarlySoundsFactory.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BaseSoundsFactory.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getSoundInterfaceArray(self: *Self) []?*Sound {
        _ = self;
        const soundInterfaceArray: []?*Sound = array_N65660: { const array_N65660_array = allocator.alloc(?*Sound, @intCast(2)) catch unreachable; @memset(array_N65660_array, null); break :array_N65660 array_N65660_array; };
        var index: i32 = 0;
        soundInterfaceArray[@intCast(value_N65741: { const value_N65741_value = index; index += 1; break :value_N65741 value_N65741_value; })] = Inheritance.upcast(@TypeOf(soundInterfaceArray[@intCast(value_N65741: { const value_N65741_value = index; index += 1; break :value_N65741 value_N65741_value; })]), SelectSound.getInstance());
        soundInterfaceArray[@intCast(value_N65791: { const value_N65791_value = index; index += 1; break :value_N65791 value_N65791_value; })] = Inheritance.upcast(@TypeOf(soundInterfaceArray[@intCast(value_N65791: { const value_N65791_value = index; index += 1; break :value_N65791 value_N65791_value; })]), ErrorSound.getInstance());
        return soundInterfaceArray;
    }
    

    pub fn getInstance() ?*EarlySoundsFactory {
        return Inheritance.upcast(?*EarlySoundsFactory, EarlySoundsFactory.instance);
    }
};


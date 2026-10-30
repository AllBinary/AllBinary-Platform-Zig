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
const Sound = @import("org/allbinary/media/audio/Sound.zig").Sound;
const SoundsFactoryInterface = @import("org/allbinary/media/audio/SoundsFactoryInterface.zig").SoundsFactoryInterface;

pub const BaseSoundsFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.BaseSoundsFactory";
    pub const java_interfaces = .{ SoundsFactoryInterface };
    initialized: bool = false,
    // Implements SoundsFactoryInterface

    fn initFields(this: *Self) void {
        this.initialized = false;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn init(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn getSoundInterfaceArray(self: *Self) []?*Sound {
        _ = self;
        return array_N65660: { const array_N65660_array = allocator.alloc(?*Sound, @intCast(0)) catch unreachable; @memset(array_N65660_array, null); break :array_N65660 array_N65660_array; };
    }
    

    pub fn setInitialized(self: *Self, initialized: bool) void {
        self.initialized = initialized;
    }
    

    pub fn isInitialized(self: *Self) bool {
        return self.initialized;
    }
};


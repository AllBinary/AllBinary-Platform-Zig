// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const NoPlayer = @import("org/allbinary/media/audio/NoPlayer.zig").NoPlayer;
const Sound = @import("org/allbinary/media/audio/Sound.zig").Sound;

pub const NoSound = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.NoSound";
    base: Sound = undefined,
    var instance: ?*NoSound = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = NoSound.create();
    }
    

    pub fn getInstance() ?*NoSound {
        return Inheritance.upcast(?*NoSound, NoSound.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Sound, "create1", .{ StringUtil.getInstance().?.EMPTY_STRING }).*;
        _ = Inheritance.call(this, "setPlayerP", .{ NoPlayer.NO_PLAYER });
        Inheritance.bindOverrides(this);
        return this;
    }
};


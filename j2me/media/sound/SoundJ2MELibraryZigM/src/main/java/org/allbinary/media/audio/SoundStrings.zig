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
// package org.allbinary.media.audio

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const SoundStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.SoundStrings";
    STOP_ALL: ?*String = null,
    CLOSE_ALL: ?*String = null,
    SOUND: ?*String = null,
    INIT_SOUND: ?*String = null,
    STOPPING_SOUND: ?*String = null,
    CLOSING_SOUND: ?*String = null,
    var instance: ?*SoundStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SoundStrings.create();
    }

    fn initFields(this: *Self) void {
        this.STOP_ALL = String.literal("stopAll");
        this.CLOSE_ALL = String.literal("closeAll");
        this.SOUND = String.literal(" Sound: ");
        this.INIT_SOUND = String.literal("Initializing Sound: ");
        this.STOPPING_SOUND = String.literal("Stopping Sound: ");
        this.CLOSING_SOUND = String.literal("Closing Sound: ");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*SoundStrings {
        return Inheritance.upcast(?*SoundStrings, SoundStrings.instance);
    }
};


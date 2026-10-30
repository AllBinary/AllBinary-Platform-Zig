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
// package org.allbinary.media.audio.music

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const MusicStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.music.MusicStrings";
    SONG_EXTRA: ?*String = null,
    LEFT_VOLUME: ?*String = null,
    RIGHT_VOLUME: ?*String = null,
    var instance: ?*MusicStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MusicStrings.create();
    }

    fn initFields(this: *Self) void {
        this.SONG_EXTRA = String.literal("SONG");
        this.LEFT_VOLUME = String.literal("LEFT_VOLUME");
        this.RIGHT_VOLUME = String.literal("RIGHT_VOLUME");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*MusicStrings {
        return Inheritance.upcast(?*MusicStrings, MusicStrings.instance);
    }
};


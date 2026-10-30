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
// const AudioFormat = @import("javax/sound/sampled/AudioFormat.zig").AudioFormat;

pub const NullAudioFormat = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.NullAudioFormat";
    pub var NULL_AUDIO_FORMAT: ?*AudioFormat = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_AUDIO_FORMAT = Inheritance.callStatic(AudioFormat, "create7", .{ AudioFormat.Encoding.?.PCM_UNSIGNED, 0.0, 0, 0, 0, 0.0, false });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};


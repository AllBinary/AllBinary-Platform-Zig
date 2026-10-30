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
// package org.allbinary.audio

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AudioContentTypeData = @import("org/allbinary/audio/AudioContentTypeData.zig").AudioContentTypeData;

pub const AudioContentTypeDataFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.audio.AudioContentTypeDataFactory";
    MIME_AUDIO_TONE: ?*AudioContentTypeData = null,
    MIME_AUDIO_AMR: ?*AudioContentTypeData = null,
    MIME_AUDIO_AMR_WB: ?*AudioContentTypeData = null,
    MIME_AUDIO_WAV: ?*AudioContentTypeData = null,
    MIME_AUDIO_MIDI: ?*AudioContentTypeData = null,
    MIME_AUDIO_SP_MIDI: ?*AudioContentTypeData = null,
    var instance: ?*AudioContentTypeDataFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AudioContentTypeDataFactory.create();
    }

    fn initFields(this: *Self) void {
        this.MIME_AUDIO_TONE = Inheritance.callStatic(AudioContentTypeData, "create1", .{ String.literal("audio/x-tone-seq") });
        this.MIME_AUDIO_AMR = Inheritance.callStatic(AudioContentTypeData, "create1", .{ String.literal("audio/amr") });
        this.MIME_AUDIO_AMR_WB = Inheritance.callStatic(AudioContentTypeData, "create1", .{ String.literal("audio/amr-wb") });
        this.MIME_AUDIO_WAV = Inheritance.callStatic(AudioContentTypeData, "create1", .{ String.literal("audio/x-wav") });
        this.MIME_AUDIO_MIDI = Inheritance.callStatic(AudioContentTypeData, "create1", .{ String.literal("audio/midi") });
        this.MIME_AUDIO_SP_MIDI = Inheritance.callStatic(AudioContentTypeData, "create1", .{ String.literal("audio/sp-midi") });
    }
    

    pub fn getInstance() ?*AudioContentTypeDataFactory {
        return Inheritance.upcast(?*AudioContentTypeDataFactory, AudioContentTypeDataFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};


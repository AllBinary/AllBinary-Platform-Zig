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
// const IOException = @import("java/io/IOException.zig").IOException;
// const AudioFormat = @import("javax/sound/sampled/AudioFormat.zig").AudioFormat;
// const AudioInputStream = @import("javax/sound/sampled/AudioInputStream.zig").AudioInputStream;
// const BooleanControl = @import("javax/sound/sampled/BooleanControl.zig").BooleanControl;
// const Clip = @import("javax/sound/sampled/Clip.zig").Clip;
// const Control = @import("javax/sound/sampled/Control.zig").Control;
// const Type = @import("javax/sound/sampled/Control/Type.zig").Type;
// const Info = @import("javax/sound/sampled/Line/Info.zig").Info;
// const LineListener = @import("javax/sound/sampled/LineListener.zig").LineListener;
// const LineUnavailableException = @import("javax/sound/sampled/LineUnavailableException.zig").LineUnavailableException;
const NullAudioFormat = @import("org/allbinary/media/audio/NullAudioFormat.zig").NullAudioFormat;
const NullJ2SEControl = @import("org/allbinary/media/audio/NullJ2SEControl.zig").NullJ2SEControl;

pub const NullClip = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.NullClip";
    // Implements Clip
    pub var NULL_CONTROL: ?*NullJ2SEControl = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_CONTROL = Inheritance.callStatic(NullJ2SEControl, "create1", .{ BooleanControl.Type.?.MUTE });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws LineUnavailableException
    pub fn open4(self: *Self, format: ?*AudioFormat, data: []i8, offset: i32, bufferSize: i32) void {
        _ = format;
        _ = data;
        _ = offset;
        _ = bufferSize;
        _ = self;
    }
    

    // throws LineUnavailableException, IOException
    pub fn open1(self: *Self, stream: ?*AudioInputStream) void {
        _ = stream;
        _ = self;
    }
    

    pub fn getFrameLength(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn getMicrosecondLength(self: *Self) i64 {
        _ = self;
        return 0;
    }
    

    pub fn setFramePosition(self: *Self, frames: i32) void {
        _ = frames;
        _ = self;
    }
    

    pub fn setMicrosecondPosition(self: *Self, microseconds: i64) void {
        _ = microseconds;
        _ = self;
    }
    

    pub fn setLoopPoints(self: *Self, start_: i32, end: i32) void {
        _ = start_;
        _ = end;
        _ = self;
    }
    

    pub fn loop(self: *Self, count: i32) void {
        _ = count;
        _ = self;
    }
    

    pub fn drain(self: *Self) void {
        _ = self;
    }
    

    pub fn flush(self: *Self) void {
        _ = self;
    }
    

    pub fn start(self: *Self) void {
        _ = self;
    }
    

    pub fn stop(self: *Self) void {
        _ = self;
    }
    

    pub fn isRunning(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn isActive(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn getFormat(self: *Self) ?*AudioFormat {
        _ = self;
        return Inheritance.upcast(?*AudioFormat, NullAudioFormat.NULL_AUDIO_FORMAT);
    }
    

    pub fn getBufferSize(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn available(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn getFramePosition(self: *Self) i32 {
        _ = self;
        return 0;
    }
    

    pub fn getLongFramePosition(self: *Self) i64 {
        _ = self;
        return 0;
    }
    

    pub fn getMicrosecondPosition(self: *Self) i64 {
        _ = self;
        return 0;
    }
    

    pub fn getLevel(self: *Self) f32 {
        _ = self;
        return 0.0;
    }
    

    pub fn getLineInfo(self: *Self) ?*Info {
        return Inheritance.callStatic(Info, "create2", .{ @as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))), NullAudioFormat.NULL_AUDIO_FORMAT });
    }
    

    // throws LineUnavailableException
    pub fn open(self: *Self) void {
        _ = self;
    }
    

    pub fn close(self: *Self) void {
        _ = self;
    }
    

    pub fn isOpen(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn getControls(self: *Self) []?*Control {
        _ = self;
        return array_N67170: { const array_N67170_array = allocator.alloc(?*Control, @intCast(0)) catch unreachable; @memset(array_N67170_array, null); break :array_N67170 array_N67170_array; };
    }
    

    pub fn isControlSupported(self: *Self, control: ?*Type) bool {
        _ = control;
        _ = self;
        return false;
    }
    

    pub fn getControl(self: *Self, control: ?*Type) ?*Control {
        _ = control;
        _ = self;
        return Inheritance.upcast(?*Control, NullClip.NULL_CONTROL);
    }
    

    pub fn addLineListener(self: *Self, listener: ?*LineListener) void {
        _ = listener;
        _ = self;
    }
    

    pub fn removeLineListener(self: *Self, listener: ?*LineListener) void {
        _ = listener;
        _ = self;
    }
};


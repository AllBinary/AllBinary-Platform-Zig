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
const ARunnable = @import("org/allbinary/thread/ARunnable.zig").ARunnable;
// const ByteArrayInputStream = @import("java/io/ByteArrayInputStream.zig").ByteArrayInputStream;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const Control = @import("javax/microedition/media/Control.zig").Control;
// const MediaException = @import("javax/microedition/media/MediaException.zig").MediaException;
// const PlayerListener = @import("javax/microedition/media/PlayerListener.zig").PlayerListener;
// const AudioInputStream = @import("javax/sound/sampled/AudioInputStream.zig").AudioInputStream;
// const AudioSystem = @import("javax/sound/sampled/AudioSystem.zig").AudioSystem;
// const Clip = @import("javax/sound/sampled/Clip.zig").Clip;
// const FloatControl = @import("javax/sound/sampled/FloatControl.zig").FloatControl;
// const LineEvent = @import("javax/sound/sampled/LineEvent.zig").LineEvent;
// const LineListener = @import("javax/sound/sampled/LineListener.zig").LineListener;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const MusicThreadPool = @import("org/allbinary/thread/MusicThreadPool.zig").MusicThreadPool;
const BasicPlayer = @import("org/allbinary/media/audio/BasicPlayer.zig").BasicPlayer;
const NullAudioFormat = @import("org/allbinary/media/audio/NullAudioFormat.zig").NullAudioFormat;
const NullClip = @import("org/allbinary/media/audio/NullClip.zig").NullClip;
const NullControl = @import("org/allbinary/media/audio/NullControl.zig").NullControl;

pub const PCClipWavPlayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.PCClipWavPlayer";
    base: BasicPlayer = undefined,
    logUtil: ?*LogUtil = null,
    audioInputStream: ?*AudioInputStream = null,
    clip: ?*Clip = null,
    // Implements LineListener

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
    }
    

    pub fn create1(inputStream: ?*InputStream) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicPlayer.create().*;
        this.initFields();
        var audioInputStream: ?*AudioInputStream = Inheritance.callStatic(AudioInputStream, "create3", .{ Inheritance.callStatic(ByteArrayInputStream, "create1", .{ NullUtil.getInstance().?.NULL_BYTE_ARRAY }), NullAudioFormat.NULL_AUDIO_FORMAT, 0 });
        var clip: ?*Clip = Inheritance.upcast(?*Clip, NullClip.create());
        { // try
            audioInputStream = Inheritance.upcast(@TypeOf(audioInputStream), Inheritance.callStatic(AudioSystem, "getAudioInputStream", .{ inputStream }));
            clip = Inheritance.upcast(@TypeOf(clip), Inheritance.call(this, "create", .{ audioInputStream }));
            if (clip == null) {
                _ = Inheritance.call(this.logUtil.?, "put", .{ String.literal("Clip was null"), this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR, error.Exception });
                std.debug.panic("{any}", .{error.RuntimeException});
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(this.logUtil.?, "put", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.EXCEPTION, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR, e });
        this.audioInputStream = audioInputStream;
        this.clip = clip;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn close(self: *Self) void {
        _ = Inheritance.call(MusicThreadPool.getInstance().?, "runTask", .{ ARunnable.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn run(self: *Self) void {
//                 { // try
//                     _ = self.close2();
//                 }
//                 // catch (Exception e):
// //                     _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS, e });
//             }
 });
    }
    

    // throws Exception
    pub fn close2(self: *Self) void {
        _ = self.clip.?.drain();
        _ = self.clip.?.flush();
        _ = self.clip.?.close();
    }
    

    pub fn getContentType(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    // throws MediaException
    pub fn start(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(MusicThreadPool.getInstance().?, "runTask", .{ ARunnable.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn run(self: *Self) void {
//                 { // try
//                     _ = self.start2();
//                 }
//                 // catch (Exception e):
// //                     _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS, e });
//             }
 });
    }
    

    // throws Exception
    pub fn start2(self: *Self) void {
        _ = Inheritance.call(self.clip.?, "setFramePosition", .{ 0 });
        _ = Inheritance.call(self.clip.?, "loop", .{ Inheritance.receiver(self, "getLoopCount").getLoopCount() });
        _ = self.clip.?.start();
        _ = self.base.start();
    }
    

    // throws Exception
    pub fn create(self: *Self, audioInputStream: ?*AudioInputStream) ?*Clip {
        const clip: ?*Clip = Inheritance.upcast(?*Clip, AudioSystem.getClip());
        _ = Inheritance.call(clip.?, "addLineListener", .{ self });
        _ = Inheritance.call(clip.?, "open", .{ audioInputStream });
        return clip;
    }
    

    // throws MediaException
    pub fn stop(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(MusicThreadPool.getInstance().?, "runTask", .{ ARunnable.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn run(self: *Self) void {
//                 { // try
//                     _ = self.stop2();
//                 }
//                 // catch (Exception e):
// //                     _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.PROCESS, e });
//             }
 });
    }
    

    // throws Exception
    pub fn stop2(self: *Self) void {
        _ = self.clip.?.stop();
        _ = self.base.stop();
    }
    

    pub fn getControl(self: *Self, controlType: ?*String) ?*Control {
        _ = controlType;
        _ = self;
        return Inheritance.upcast(?*Control, NullControl.create());
    }
    

    pub fn getControls(self: *Self) []?*Control {
        _ = self;
        return array_N68125: { const array_N68125_array = allocator.alloc(?*Control, @intCast(0)) catch unreachable; @memset(array_N68125_array, null); break :array_N68125 array_N68125_array; };
    }
    

    pub fn setVolume(self: *Self, leftVolume: i32, rightVolume: i32) void {
        _ = rightVolume;
        _ = Inheritance.call(self, "setVolumeF", .{ (@as(f32, @floatFromInt(leftVolume))) / 100.0 });
    }
    

    pub fn getVolume(self: *Self) f32 {
        const masterGainFloatControl: ?*FloatControl = Inheritance.cast(?*FloatControl, Inheritance.call(self.clip.?, "getControl", .{ FloatControl.Type.?.MASTER_GAIN }));
        return @as(f32, @floatCast(std.math.pow(f64, 10.0, (divide_N68437: { const left_N68437 = masterGainFloatControl.?.getValue(); const right_N68437 = 20.0; break :divide_N68437 if (comptime @typeInfo(@TypeOf(left_N68437)) == .int or @TypeOf(left_N68437) == comptime_int) @divTrunc(left_N68437, right_N68437) else left_N68437 / right_N68437; }))));
    }
    

    pub fn setVolumeF(self: *Self, volume: f32) void {
        if (volume < 0.0 or volume > 1.0) {
            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Volume: "), volume); break :exception error.IllegalArgumentException; }});
        }
        const masterGainFloatControl: ?*FloatControl = Inheritance.cast(?*FloatControl, Inheritance.call(self.clip.?, "getControl", .{ FloatControl.Type.?.MASTER_GAIN }));
        _ = Inheritance.call(masterGainFloatControl.?, "setValue", .{ 20.0 * @as(f32, @floatCast(Inheritance.callStatic(Math, "log10", .{ volume }))) });
    }
    

    pub fn getDuration(self: *Self) i64 {
        return (divide_N68792: { const left_N68792 = self.clip.?.getMicrosecondLength(); const right_N68792 = 1000; break :divide_N68792 if (comptime @typeInfo(@TypeOf(left_N68792)) == .int or @TypeOf(left_N68792) == comptime_int) @divTrunc(left_N68792, right_N68792) else left_N68792 / right_N68792; });
    }
    

    pub fn update(self: *Self, event: ?*LineEvent) void {
        if (Object.equals(Object.of(event.?.getType()), LineEvent.Type.?.STOP)) {
            const size: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "listenersList").*.?, "size").size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const listener: ?*PlayerListener = Inheritance.cast(?*PlayerListener, Inheritance.call(Inheritance.fieldPointer(self, "listenersList").*.?, "get", .{ size }));
                _ = Inheritance.call(listener.?, "playerUpdate", .{ self, PlayerListener.END_OF_MEDIA, null });
                }
            }
        }
    }
};


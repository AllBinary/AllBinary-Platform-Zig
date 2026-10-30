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
// const MediaException = @import("javax/microedition/media/MediaException.zig").MediaException;
// const Player = @import("javax/microedition/media/Player.zig").Player;
// const PlayerListener = @import("javax/microedition/media/PlayerListener.zig").PlayerListener;
const MediaPlayer = @import("android/media/MediaPlayer.zig").MediaPlayer;
const NullAndroidCanvas = @import("org/allbinary/android/NullAndroidCanvas.zig").NullAndroidCanvas;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicPlayer = @import("org/allbinary/media/audio/BasicPlayer.zig").BasicPlayer;

pub const AndroidMediaPlayerWrapper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.AndroidMediaPlayerWrapper";
    base: BasicPlayer = undefined,
    logUtil: ?*LogUtil = null,
    mediaPlayer: ?*MediaPlayer = null,
    pub var NULL_ANDROID_MEDIA_PLAYER_WRAPPER: ?*AndroidMediaPlayerWrapper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_ANDROID_MEDIA_PLAYER_WRAPPER = Inheritance.upcast(?*AndroidMediaPlayerWrapper, AndroidMediaPlayerWrapper.createPlayerWrapper());
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.mediaPlayer = Inheritance.upcast(?*MediaPlayer, NullAndroidCanvas.NULL_MEDIA_PLAYER);
    }
    

    pub fn createPlayerWrapper() ?*AndroidMediaPlayerWrapper {
        { // try
            return Inheritance.callStatic(AndroidMediaPlayerWrapper, "create1", .{ StringUtil.getInstance().?.EMPTY_STRING });
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn create1(resource: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicPlayer.create().*;
        this.initFields();
        { // try
            if (Object.same(resource, StringUtil.getInstance().?.EMPTY_STRING)) {
            } else {
                const resourceUtil: ?*ResourceUtil = Inheritance.upcast(?*ResourceUtil, ResourceUtil.getInstance());
                const mediaPlayer: ?*MediaPlayer = Inheritance.upcast(?*MediaPlayer, Inheritance.callStatic(MediaPlayer, "create", .{ resourceUtil.?.getContext(), Inheritance.receiverOf(Inheritance.call(resourceUtil.?, "getResourceId", .{ resource }).?, "intValue").intValue() }));
                if (mediaPlayer == null) {
                    std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Failed to create media player for: ") }).?, "append", .{ resource }).?, "append", .{ String.literal(" with id: ") }).?, "append", .{ Object.toString(Object.of(Inheritance.call(resourceUtil.?, "getResourceId", .{ resource }))) }))); break :exception error.Exception; }});
                }
                _ = Inheritance.call(this, "setMediaPlayer", .{ mediaPlayer });
                _ = Inheritance.call(this.mediaPlayer.?, "setLooping", .{ false });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(this.logUtil.?, "put", .{ String.plus(Inheritance.fieldPointer(this, "commonStrings").*.?.EXCEPTION_LABEL, resource), this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR, e });
//             std.debug.panic("{any}", .{e});
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setLoopCount(self: *Self, count: i32) void {
        _ = Inheritance.call(&self.base, "setLoopCount", .{ count });
        if (!Object.same(self.mediaPlayer, NullAndroidCanvas.NULL_MEDIA_PLAYER) and self.mediaPlayer != null) {
            if (count == 0) {
                _ = Inheritance.call(self.mediaPlayer.?, "setLooping", .{ false });
            } else {
            }
        }
    }
    

    pub fn addPlayerListener(self: *Self, playerListener: ?*PlayerListener) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(&self.base, "addPlayerListener", .{ playerListener });
    }
    

    pub fn removePlayerListener(self: *Self, playerListener: ?*PlayerListener) void {
        _ = Inheritance.call(&self.base, "removePlayerListener", .{ playerListener });
    }
    

    pub fn getState(self: *Self) i32 {
        if (self.mediaPlayer.?.isPlaying()) {
            return Player.STARTED;
        } else {
            return Player.PREFETCHED;
        }
    }
    

    pub fn close(self: *Self) void {
        { // try
            _ = self.mediaPlayer.?.release();
            self.mediaPlayer = Inheritance.upcast(@TypeOf(self.mediaPlayer), NullAndroidCanvas.NULL_MEDIA_PLAYER);
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.CLOSE, e });
    }
    

    // throws MediaException
    pub fn start(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            if (self.mediaPlayer.?.isPlaying()) {
                _ = self.mediaPlayer.?.pause();
                _ = Inheritance.call(self.mediaPlayer.?, "seekTo", .{ 0 });
            }
            _ = self.mediaPlayer.?.start();
            _ = self.base.start();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.START_METHOD_NAME, e });
    }
    

    // throws MediaException
    pub fn stop(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            _ = self.mediaPlayer.?.stop();
            _ = self.mediaPlayer.?.prepare();
            _ = self.base.stop();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("stop"), e });
    }
    

    pub fn update(self: *Self, event: ?*String) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("LineEvent: "), event), self, Inheritance.fieldPointer(self, "commonStrings").*.?.UPDATE });
        const size: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "listenersList").*.?, "size").size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const listener: ?*PlayerListener = Inheritance.cast(?*PlayerListener, Inheritance.fieldPointer(self, "listenersList").*.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(listener.?, "playerUpdate", .{ self, event, NullUtil.getInstance().?.NULL_OBJECT });
            }
        }
    }
    

    pub fn setVolume(self: *Self, leftVolume: i32, rightVolume: i32) void {
        _ = Inheritance.call(self.mediaPlayer.?, "setVolume", .{ (@as(f32, @floatFromInt(leftVolume))) / 100.0, (@as(f32, @floatFromInt(rightVolume))) / 100.0 });
    }
    

    pub fn getDuration(self: *Self) i64 {
        return @as(i64, @intCast(self.mediaPlayer.?.getDuration()));
    }
    

    pub fn setMediaPlayer(self: *Self, mediaPlayer: ?*MediaPlayer) void {
        self.mediaPlayer = mediaPlayer;
    }
    

    pub fn getMediaPlayer(self: *Self) ?*MediaPlayer {
        return self.mediaPlayer;
    }
};


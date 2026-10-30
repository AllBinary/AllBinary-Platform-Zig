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
const MediaPlayer = @import("android/media/MediaPlayer.zig").MediaPlayer;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const MediaPlayerUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.MediaPlayerUtil";
    logUtil: ?*LogUtil = null,
    var instance: ?*MediaPlayerUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MediaPlayerUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*MediaPlayerUtil {
        return Inheritance.upcast(?*MediaPlayerUtil, MediaPlayerUtil.instance);
    }
    

    // throws Exception
    pub fn waitForMediaPlayer(self: *Self, mediaPlayer: ?*MediaPlayer) void {
        const MESSAGE: ?*String = String.literal("Not Stopped Waiting");
        const METHOD_NAME: ?*String = String.literal("wait");
        var index: i32 = 0;
        while (mediaPlayer.?.isPlaying() and index < 50) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ MESSAGE, self, METHOD_NAME });
            _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(100), .awake) catch {});
            index += 1;
        }
    }
};


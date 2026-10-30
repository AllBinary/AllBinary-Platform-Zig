// Generated Code Do Not Modify
// package org.allbinary.media.audio.music

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Service = @import("android/app/Service.zig").Service;
const Intent = @import("android/content/Intent.zig").Intent;
const MediaPlayer = @import("android/media/MediaPlayer.zig").MediaPlayer;
const IBinder = @import("android/os/IBinder.zig").IBinder;
const NullAndroidCanvas = @import("org/allbinary/android/NullAndroidCanvas.zig").NullAndroidCanvas;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStateStrings = @import("org/allbinary/string/CommonStateStrings.zig").CommonStateStrings;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ARunnable = @import("org/allbinary/thread/ARunnable.zig").ARunnable;
const MusicStrings = @import("org/allbinary/media/audio/music/MusicStrings.zig").MusicStrings;
const System = @import("java/lang/System.zig").System;
const Thread = @import("java/lang/Thread.zig").Thread;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const BaseMusicService = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.music.BaseMusicService";
    base: Service = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    commonStateStrings: ?*CommonStateStrings = null,
    ALREADY_PLAYING: ?*String = null,
    WAITING_FOR_MUSIC_TO_END: ?*String = null,
    player: ?*MediaPlayer = null,
    songId: i32 = 0,
    leftVolume: i32 = 0,
    rightVolume: i32 = 0,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.commonStateStrings = Inheritance.upcast(?*CommonStateStrings, CommonStateStrings.getInstance());
        this.ALREADY_PLAYING = String.literal("This is one song per music service");
        this.WAITING_FOR_MUSIC_TO_END = String.literal("Waiting for music to end");
        this.player = Inheritance.upcast(?*MediaPlayer, NullAndroidCanvas.NULL_MEDIA_PLAYER);
        this.songId = -1;
        this.leftVolume = -1;
        this.rightVolume = -1;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Service.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn onBind(self: *Self, intent: ?*Intent) ?*IBinder {
        _ = intent;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStateStrings.?.BIND });
        return null;
    }
    

    pub fn onCreate(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStateStrings.?.CREATE });
    }
    

    pub fn onDestroy(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStateStrings.?.DESTROY });
        if (!Object.same(self.player, NullAndroidCanvas.NULL_MEDIA_PLAYER)) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStateStrings.?.PAUSE });
            _ = self.player.?.stop();
            _ = self.player.?.reset();
            _ = self.player.?.release();
        }
    }
    

    pub fn pause(self: *Self) void {
        if (!Object.same(self.player, NullAndroidCanvas.NULL_MEDIA_PLAYER)) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStateStrings.?.PAUSE });
            _ = self.player.?.pause();
        }
    }
    

    pub fn @"resume"(self: *Self) void {
        if (!Object.same(self.player, NullAndroidCanvas.NULL_MEDIA_PLAYER) and !self.player.?.isPlaying()) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStateStrings.?.RESUME });
            _ = self.player.?.start();
        }
    }
    

    pub fn start(self: *Self) void {
        self.player = Inheritance.upcast(@TypeOf(self.player), Inheritance.callStatic(MediaPlayer, "create", .{ self, self.songId }));
        _ = Inheritance.call(self.player.?, "setVolume", .{ (@as(f32, @floatFromInt(self.leftVolume))) / 100.0, (@as(f32, @floatFromInt(self.rightVolume))) / 100.0 });
        _ = Inheritance.call(self.player.?, "setLooping", .{ false });
        _ = self.player.?.start();
    }
    

    pub fn onStart(self: *Self, intent: ?*Intent, startid: i32) void {
        _ = startid;
        _ = Inheritance.call(self, "onStartCommandIntent", .{ intent });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStateStrings.?.START });
    }
    

    pub fn onStartCommand(self: *Self, intent: ?*Intent, flags: i32, startId: i32) i32 {
        _ = flags;
        _ = startId;
        _ = Inheritance.call(self, "onStartCommandIntent", .{ intent });
        return Service.START_STICKY;
    }
    

    pub fn onStartCommandIntent(self: *Self, intent: ?*Intent) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStateStrings.?.ON_START_COMMAND });
        const musicStrings: ?*MusicStrings = Inheritance.upcast(?*MusicStrings, MusicStrings.getInstance());
        if (intent != null) {
            const command: i32 = Inheritance.call(intent.?, "getIntExtra", .{ self.commonStateStrings.?.ON_START_COMMAND, -1 });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ CommonLabels.getInstance().?.COMMAND_LABEL + command, self, self.commonStateStrings.?.ON_START_COMMAND });
            if (command == 1) {
                _ = self.pause();
                return;
            } else if (command == 2) {
                _ = self.@"resume"();
                return;
            } else {
                self.songId = Inheritance.call(intent.?, "getIntExtra", .{ musicStrings.?.SONG_EXTRA, -1 });
                self.leftVolume = Inheritance.call(intent.?, "getIntExtra", .{ musicStrings.?.LEFT_VOLUME, -1 });
                self.rightVolume = Inheritance.call(intent.?, "getIntExtra", .{ musicStrings.?.RIGHT_VOLUME, -1 });
            }
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Started service without intent"); break :exception error.RuntimeException; }});
        }
        if (self.songId != -1) {
            _ = {};
            if (!Object.same(self.player, NullAndroidCanvas.NULL_MEDIA_PLAYER) and self.player.?.isPlaying()) {
                const player: ?*MediaPlayer = self.player;
                _ = Inheritance.call(self.logUtil.?, "putF", .{ self.ALREADY_PLAYING, self, self.commonStateStrings.?.ON_START_COMMAND });
                const MusicRunnable = struct {
                    const Self = @This();
                    pub const java_name = "org.allbinary.media.audio.music.MusicRunnable";
                    base: ARunnable = undefined,
                    baseMusicService: ?*BaseMusicService = null,

    fn initFields(this: *Self) void {
        _ = this;
                        
    }
                    

                    pub fn create1(baseMusicService: ?*BaseMusicService) *Self {
                        const this = allocator.create(Self) catch unreachable;
                        this.* = .{};
        this.base = ARunnable.create().*;
                        this.initFields();
                        Inheritance.fieldPointer(this, "baseMusicService").* = baseMusicService;
                        Inheritance.bindOverrides(this);
                        return this;
                    }
                    

                    pub fn run(self: *Self) void {
                        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
                        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
                        const commonStateStrings: ?*CommonStateStrings = Inheritance.upcast(?*CommonStateStrings, CommonStateStrings.getInstance());
                        { // try
                            while (self.player.?.isPlaying()) {
                                _ = Inheritance.call(logUtil.?, "putF", .{ Inheritance.fieldPointer(self, "baseMusicService").*.?.WAITING_FOR_MUSIC_TO_END, self, commonStateStrings.?.ON_START_COMMAND });
                                _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(1200), .awake) catch {});
                            }
                            _ = Inheritance.call(Inheritance.fieldPointer(self, "baseMusicService").*.?, "onStartCommandIntent", .{ Inheritance.fieldPointer(self, "intent").* });
                        }
                        // catch (Exception e):
//                             _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStateStrings.?.ON_START_COMMAND, e });
                    }
                };
                const runnable: ?*Runnable = Inheritance.upcast(?*Runnable, Inheritance.callStatic(MusicRunnable, "create1", .{ self }));
                const thread: ?*Thread = Inheritance.callStatic(Thread, "create1", .{ runnable });
                _ = thread.?.start();
                return;
            }
            _ = self.start();
        }
    }
};


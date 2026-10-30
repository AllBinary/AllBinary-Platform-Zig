// Generated Code Do Not Modify
// package org.allbinary.media.audio.music

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Activity = @import("android/app/Activity.zig").Activity;
const Context = @import("android/content/Context.zig").Context;
const Intent = @import("android/content/Intent.zig").Intent;
const AndroidServicesUtil = @import("org/allbinary/android/AndroidServicesUtil.zig").AndroidServicesUtil;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const NoSound = @import("org/allbinary/media/audio/NoSound.zig").NoSound;
const Sound = @import("org/allbinary/media/audio/Sound.zig").Sound;
const CommonStateStrings = @import("org/allbinary/string/CommonStateStrings.zig").CommonStateStrings;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GameTickTimeDelayHelper = @import("org/allbinary/time/GameTickTimeDelayHelper.zig").GameTickTimeDelayHelper;
const GameTickTimeDelayHelperFactory = @import("org/allbinary/time/GameTickTimeDelayHelperFactory.zig").GameTickTimeDelayHelperFactory;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const MusicStrings = @import("org/allbinary/media/audio/music/MusicStrings.zig").MusicStrings;

pub const MusicManager = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.music.MusicManager";
    PLAY: ?*String = null,
    FOR: ?*String = null,
    commonStrings: ?*CommonStrings = null,
    musicStrings: ?*MusicStrings = null,
    commonStateStrings: ?*CommonStateStrings = null,
    basicArrayListUtil: ?*BasicArrayListUtil = null,
    resourceUtil: ?*ResourceUtil = null,
    androidServicesUtil: ?*AndroidServicesUtil = null,
    gameTickTimeDelayHelper: ?*GameTickTimeDelayHelper = null,
    timeDelayHelper: ?*TimeDelayHelper = null,
    timeDelayHelper2: ?*TimeDelayHelper = null,
    songList: ?*BasicArrayList = null,
    currentSongSound: ?*Sound = null,
    nextSongSound: ?*Sound = null,
    leftVolume: i32 = 0,
    rightVolume: i32 = 0,
    musicServiceClass: ?*anyopaque = null,
    currentIntent: ?*Intent = null,

    fn initFields(this: *Self) void {
        this.PLAY = String.literal("Play ");
        this.FOR = String.literal(" for: ");
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.musicStrings = Inheritance.upcast(?*MusicStrings, MusicStrings.getInstance());
        this.commonStateStrings = Inheritance.upcast(?*CommonStateStrings, CommonStateStrings.getInstance());
        this.basicArrayListUtil = Inheritance.upcast(?*BasicArrayListUtil, BasicArrayListUtil.getInstance());
        this.resourceUtil = Inheritance.upcast(?*ResourceUtil, ResourceUtil.getInstance());
        this.androidServicesUtil = Inheritance.upcast(?*AndroidServicesUtil, AndroidServicesUtil.getInstance());
        this.gameTickTimeDelayHelper = Inheritance.upcast(?*GameTickTimeDelayHelper, GameTickTimeDelayHelperFactory.getInstance());
        this.timeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 0 });
        this.timeDelayHelper2 = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 1200 });
        
        this.currentSongSound = Inheritance.upcast(?*Sound, NoSound.getInstance());
        this.nextSongSound = Inheritance.upcast(?*Sound, NoSound.getInstance());
        this.leftVolume = 100;
        this.rightVolume = 100;
        
        
    }
    

    pub fn create2(musicServiceClass: ?*anyopaque, songList: ?*BasicArrayList) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ this.commonStateStrings.?.CONTEXT + this.resourceUtil.?.getContext(), this, this.commonStrings.?.CONSTRUCTOR });
        this.musicServiceClass = musicServiceClass;
        this.currentIntent = Inheritance.callStatic(Intent, "create2", .{ this.resourceUtil.?.getContext(), musicServiceClass });
        this.songList = songList;
        return this;
    }
    

    pub fn nextSong(self: *Self, nextSongSoundParameter: ?*Sound, leftVolume: i32, rightVolume: i32) void {
        var nextSongSound = nextSongSoundParameter;
        if (nextSongSound == null) {
            nextSongSound = Inheritance.upcast(@TypeOf(nextSongSound), NoSound.getInstance());
        }
        self.nextSongSound = nextSongSound;
        self.leftVolume = leftVolume;
        self.rightVolume = rightVolume;
        _ = self.reset();
    }
    

    pub fn reset(self: *Self) void {
        self.timeDelayHelper.?.delay = 0;
    }
    

    pub fn process(self: *Self) void {
        if (self.songList.?.size() == 0) {
            return;
        }
        if (Inheritance.call(self.timeDelayHelper.?, "isTime", .{ self.gameTickTimeDelayHelper.?.startTime })) {
            _ = self.startNewSong();
            return;
        }
        if (Inheritance.call(self.timeDelayHelper2.?, "isTime", .{ self.gameTickTimeDelayHelper.?.startTime })) {
            if (Inheritance.call(self.androidServicesUtil.?, "isServiceRunning", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(self.musicServiceClass.?))).name) })) {
            } else {
                _ = self.startNewSong();
            }
        }
    }
    

    pub fn show(self: *Self) void {
        {
            var index: i32 = self.songList.?.size();
            while (value_N67977: { index -= 1; break :value_N67977 index; } >= 0) {
            const sound: ?*Sound = Inheritance.cast(?*Sound, Inheritance.call(self.songList.?, "get", .{ index }));
            const duration: i64 = @as(i64, @intCast(sound.?.getDuration()));
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.PLAY }).?, "append", .{ sound.?.getResource() }).?, "append", .{ self.FOR }).?, "appendlong", .{ duration }))), self, self.commonStrings.?.PROCESS });
            }
        }
    }
    

    pub fn startNewSong(self: *Self) void {
        { // try
            _ = Inheritance.call(self.resourceUtil.?.getContext().?, "stopService", .{ self.currentIntent });
            if (Object.same(self.nextSongSound, NoSound.getInstance())) {
                self.currentSongSound = Inheritance.cast(?*Sound, Inheritance.call(self.basicArrayListUtil.?, "getRandom", .{ self.songList }));
            } else {
                self.currentSongSound = self.nextSongSound;
                self.nextSongSound = Inheritance.upcast(@TypeOf(self.nextSongSound), NoSound.getInstance());
            }
            const duration: i64 = @as(i64, @intCast(self.currentSongSound.?.getDuration()));
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.PLAY }).?, "append", .{ self.currentSongSound.?.getResource() }).?, "append", .{ self.FOR }).?, "appendlong", .{ duration }))), self, self.commonStrings.?.PROCESS });
            self.timeDelayHelper.?.delay = @as(i32, @intCast(duration));
            _ = Inheritance.call(self.currentIntent.?, "putExtra", .{ self.musicStrings.?.SONG_EXTRA, Inheritance.receiverOf(Inheritance.call(self.resourceUtil.?, "getResourceId", .{ self.currentSongSound.?.getResource() }).?, "intValue").intValue() });
            _ = Inheritance.call(self.currentIntent.?, "putExtra", .{ self.musicStrings.?.LEFT_VOLUME, self.leftVolume });
            _ = Inheritance.call(self.currentIntent.?, "putExtra", .{ self.musicStrings.?.RIGHT_VOLUME, self.rightVolume });
            _ = Inheritance.call(self.resourceUtil.?.getContext().?, "startService", .{ self.currentIntent });
        }
        // catch (Exception e):
//             var resource: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING); _ = resource;
//             if (self.currentSongSound != null) {
//                 resource = Inheritance.upcast(@TypeOf(resource), self.currentSongSound.?.getResource());
//             }
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.plus(self.commonStrings.?.EXCEPTION_LABEL, resource), self, self.commonStrings.?.PROCESS, e });
    }
    

    // throws Exception
    pub fn stop(self: *Self) void {
        _ = Inheritance.call(self.resourceUtil.?.getContext().?, "stopService", .{ self.currentIntent });
    }
    

    pub fn pause(activity: ?*Activity, musicServiceClass: ?*anyopaque) void {
        const commonStateStrings: ?*CommonStateStrings = Inheritance.upcast(?*CommonStateStrings, CommonStateStrings.getInstance());
        const musicPauseIntent: ?*Intent = Inheritance.callStatic(Intent, "create2", .{ Inheritance.cast(?*Context, activity), musicServiceClass });
        _ = Inheritance.call(musicPauseIntent.?, "putExtra", .{ commonStateStrings.?.ON_START_COMMAND, 1 });
        _ = Inheritance.call(activity.?, "startService", .{ musicPauseIntent });
    }
    

    pub fn @"resume"(activity: ?*Activity, musicServiceClass: ?*anyopaque) void {
        if (Inheritance.call(AndroidServicesUtil.getInstance().?, "isServiceRunning", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(musicServiceClass.?))).name) })) {
            const commonStateStrings: ?*CommonStateStrings = Inheritance.upcast(?*CommonStateStrings, CommonStateStrings.getInstance());
            const musicResumeIntent: ?*Intent = Inheritance.callStatic(Intent, "create2", .{ activity, musicServiceClass });
            _ = Inheritance.call(musicResumeIntent.?, "putExtra", .{ commonStateStrings.?.ON_START_COMMAND, 2 });
            _ = Inheritance.call(activity.?, "startService", .{ musicResumeIntent });
        }
    }
};


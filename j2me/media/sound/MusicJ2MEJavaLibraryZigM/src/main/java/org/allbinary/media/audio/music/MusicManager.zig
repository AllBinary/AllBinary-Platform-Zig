// Generated Code Do Not Modify
// package org.allbinary.media.audio.music

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ARunnable = @import("org/allbinary/thread/ARunnable.zig").ARunnable;
// const Player = @import("javax/microedition/media/Player.zig").Player;
// const PlayerListener = @import("javax/microedition/media/PlayerListener.zig").PlayerListener;
const AvianUtil = @import("org/allbinary/AvianUtil.zig").AvianUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const NoSound = @import("org/allbinary/media/audio/NoSound.zig").NoSound;
const PlayerStateUtil = @import("org/allbinary/media/audio/PlayerStateUtil.zig").PlayerStateUtil;
const Sound = @import("org/allbinary/media/audio/Sound.zig").Sound;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GameTickTimeDelayHelper = @import("org/allbinary/time/GameTickTimeDelayHelper.zig").GameTickTimeDelayHelper;
const GameTickTimeDelayHelperFactory = @import("org/allbinary/time/GameTickTimeDelayHelperFactory.zig").GameTickTimeDelayHelperFactory;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const MusicManager = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.music.MusicManager";
    commonStrings: ?*CommonStrings = null,
    commonSeps: ?*CommonSeps = null,
    basicArrayListUtil: ?*BasicArrayListUtil = null,
    gameTickTimeDelayHelper: ?*GameTickTimeDelayHelper = null,
    playerStateUtil: ?*PlayerStateUtil = null,
    timeDelayHelper: ?*TimeDelayHelper = null,
    playerListener: ?*PlayerListener = null,
    PLAY: ?*String = null,
    SONG: ?*String = null,
    NEXT_SONG: ?*String = null,
    STOPPING: ?*String = null,
    ENDING: ?*String = null,
    WAITING_FOR_MEDIA_TO_END: ?*String = null,
    ALREADY_PLAYING: ?*String = null,
    ALREADY_ENDED: ?*String = null,
    songList: ?*BasicArrayList = null,
    currentSongSound: ?*Sound = null,
    nextSongSound: ?*Sound = null,
    reset: bool = false,
    noDuration: bool = false,
    stopped: bool = false,

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.basicArrayListUtil = Inheritance.upcast(?*BasicArrayListUtil, BasicArrayListUtil.getInstance());
        this.gameTickTimeDelayHelper = Inheritance.upcast(?*GameTickTimeDelayHelper, GameTickTimeDelayHelperFactory.getInstance());
        this.playerStateUtil = Inheritance.upcast(?*PlayerStateUtil, PlayerStateUtil.getInstance());
        this.timeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 0 });
        this.playerListener = Inheritance.upcast(?*PlayerListener, MusicManagerPlayerListener.create());
        this.PLAY = String.literal("Play ");
        this.SONG = String.literal(" for: ");
        this.NEXT_SONG = Inheritance.upcast(?*String, String.plus(CommonLabels.getInstance().?.NEXT, String.literal(" Song: ")));
        this.STOPPING = String.literal("Stopping Current Song: ");
        this.ENDING = String.literal("Ending Current Song: ");
        this.WAITING_FOR_MEDIA_TO_END = String.literal("Waiting for media to end");
        this.ALREADY_PLAYING = String.literal("Already Playing: ");
        this.ALREADY_ENDED = String.literal("Last Song already ended: ");
        
        this.currentSongSound = Inheritance.upcast(?*Sound, NoSound.getInstance());
        this.nextSongSound = Inheritance.upcast(?*Sound, NoSound.getInstance());
        this.reset = false;
        this.noDuration = false;
        this.stopped = true;
    }
    

    pub fn create2(musicServiceClass: ?*anyopaque, songList: ?*BasicArrayList) *Self {
        _ = musicServiceClass;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.songList = songList;
        return this;
    }
    

    pub fn startNewSong(self: *Self) void {
        if (Object.same(self.nextSongSound, NoSound.getInstance())) {
            const randomSongSound: ?*Sound = Inheritance.cast(?*Sound, Inheritance.call(self.basicArrayListUtil.?, "getRandom", .{ self.songList }));
            _ = Inheritance.call(self, "nextSong", .{ randomSongSound, 0, 0 });
        }
        _ = self.process();
    }
    

    pub fn nextSong(self: *Self, nextSongSound: ?*Sound, leftVolume: i32, rightVolume: i32) void {
        _ = leftVolume;
        _ = rightVolume;
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.NEXT_SONG }).?, "append", .{ nextSongSound.?.getResource() }))), self, self.commonStrings.?.PROCESS });
        self.nextSongSound = nextSongSound;
        _ = self.reset();
        self.stopped = false;
    }
    

    pub fn reset(self: *Self) void {
        self.reset = true;
    }
    

    pub fn process(self: *Self) void {
        { // try
            if (self.stopped) {
                return;
            }
            if (self.songList.?.size() == 0) {
                return;
            }
            if ((Inheritance.call(self.timeDelayHelper.?, "isTime", .{ self.gameTickTimeDelayHelper.?.startTime }) and !self.noDuration) or self.reset) {
                self.reset = false;
                self.noDuration = false;
                const endingCurrentSongSound: ?*Sound = self.currentSongSound;
                const nextSongSound: ?*Sound = self.nextSongSound;
                self.nextSongSound = Inheritance.upcast(@TypeOf(self.nextSongSound), NoSound.getInstance());
                if (Object.same(nextSongSound, NoSound.getInstance())) {
                    self.currentSongSound = Inheritance.cast(?*Sound, Inheritance.call(BasicArrayListUtil.getInstance().?, "getRandom", .{ self.songList }));
                } else {
                    self.currentSongSound = nextSongSound;
                }
                const startingCurrentSongSound: ?*Sound = self.currentSongSound;
                const duration: i64 = @as(i64, @intCast(self.currentSongSound.?.getDuration()));
                self.timeDelayHelper.?.delay = @as(i32, @intCast(duration));
                if (duration <= 0) {
                    const NO_DURATION_FOR: ?*String = String.literal("No Duration for: ");
                    _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ NO_DURATION_FOR }).?, "append", .{ self.currentSongSound.?.getResource() }))), self, self.commonStrings.?.PROCESS });
                    _ = Inheritance.call(self.currentSongSound.?.getPlayerP().?, "addPlayerListener", .{ self.playerListener });
                    self.noDuration = true;
                }
                if (!Object.same(endingCurrentSongSound, NoSound.getInstance())) {
                    if (Object.same(endingCurrentSongSound, startingCurrentSongSound) and Object.same(Inheritance.receiverOf(endingCurrentSongSound.?.getPlayerP().?, "getState").getState(), Player.STARTED)) {
                        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.ALREADY_PLAYING }).?, "append", .{ endingCurrentSongSound.?.getResource() }))), self, self.commonStrings.?.PROCESS });
                        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.STOPPING }).?, "append", .{ endingCurrentSongSound.?.getResource() }).?, "append", .{ self.SONG }).?, "appendlong", .{ duration }))), self, self.commonStrings.?.PROCESS });
                        _ = Inheritance.receiverOf(endingCurrentSongSound.?.getPlayerP().?, "stop").stop();
                        _ = Inheritance.call(self, "waitForStateChange", .{ endingCurrentSongSound, startingCurrentSongSound });
                    } else {
                        if (Object.same(Inheritance.receiverOf(endingCurrentSongSound.?.getPlayerP().?, "getState").getState(), Player.STARTED)) {
                            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.STOPPING }).?, "append", .{ endingCurrentSongSound.?.getResource() }).?, "append", .{ self.SONG }).?, "appendlong", .{ duration }))), self, self.commonStrings.?.PROCESS });
                            _ = Inheritance.receiverOf(endingCurrentSongSound.?.getPlayerP().?, "stop").stop();
                            _ = Inheritance.call(self, "waitForStateChange", .{ endingCurrentSongSound, startingCurrentSongSound });
                        } else {
                            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.ALREADY_ENDED }).?, "append", .{ self.PLAY }).?, "append", .{ startingCurrentSongSound.?.getResource() }))), self, self.commonStrings.?.PROCESS });
                            if (AvianUtil.isAvian()) {
                                _ = Inheritance.receiverOf(endingCurrentSongSound.?.getPlayerP().?, "stop").stop();
                                _ = Inheritance.receiverOf(startingCurrentSongSound.?.getPlayerP().?, "stop").stop();
                            }
                            _ = Inheritance.receiverOf(startingCurrentSongSound.?.getPlayerP().?, "start").start();
                        }
                    }
                } else {
                    _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.PLAY }).?, "append", .{ self.currentSongSound.?.getResource() }).?, "append", .{ self.SONG }).?, "appendlong", .{ duration }))), self, self.commonStrings.?.PROCESS });
                    _ = Inheritance.receiverOf(self.currentSongSound.?.getPlayerP().?, "start").start();
                }
            }
        }
        // catch (Exception e):
//             var resource: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING); _ = resource;
//             if (!Object.same(self.currentSongSound, NoSound.getInstance())) {
//                 resource = Inheritance.upcast(@TypeOf(resource), self.currentSongSound.?.getResource());
//             }
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.plus(self.commonStrings.?.EXCEPTION_LABEL, resource), self, self.commonStrings.?.PROCESS, e });
    }
    

    // throws Exception
    pub fn waitForStateChange(self: *Self, endingCurrentSongSound: ?*Sound, startingCurrentSongSound: ?*Sound) void {
        while (Object.same(Inheritance.receiverOf(endingCurrentSongSound.?.getPlayerP().?, "getState").getState(), Player.STARTED)) {
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ self.WAITING_FOR_MEDIA_TO_END, self, self.commonStrings.?.PROCESS });
            _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(100), .awake) catch {});
        }
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.call(self.playerStateUtil.?, "convert", .{ Inheritance.receiverOf(endingCurrentSongSound.?.getPlayerP().?, "getState").getState() }) }).?, "append", .{ self.commonSeps.?.SPACE }).?, "append", .{ self.PLAY }).?, "append", .{ startingCurrentSongSound.?.getResource() }))), self, self.commonStrings.?.PROCESS });
        _ = Inheritance.receiverOf(startingCurrentSongSound.?.getPlayerP().?, "start").start();
    }
    

    // throws Exception
    pub fn stop(self: *Self) void {
        { // try
            const currentSongSound: ?*Sound = self.currentSongSound;
            if (!Object.same(currentSongSound, NoSound.getInstance())) {
                self.stopped = true;
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.ENDING }).?, "append", .{ currentSongSound.?.getResource() }))), self, self.commonStrings.?.PROCESS });
                _ = Inheritance.receiverOf(currentSongSound.?.getPlayerP().?, "stop").stop();
            }
            _ = Inheritance.call(self.timeDelayHelper.?, "setStartTime", .{ 0 });
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.commonStrings.?.END }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ currentSongSound }) }))), self, self.commonStrings.?.END });
        }
        // catch (Exception e):
//             var resource: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING); _ = resource;
//             if (!Object.same(currentSongSound, NoSound.getInstance())) {
//                 resource = Inheritance.upcast(@TypeOf(resource), currentSongSound.?.getResource());
//             }
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.plus(self.commonStrings.?.EXCEPTION_LABEL, resource), self, self.commonStrings.?.END, e });
    }
    //Handle Media ending for Avian
    pub const MusicManagerPlayerListener = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.media.audio.music.MusicManagerPlayerListener";
    // Implements PlayerListener

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
        

        pub fn playerUpdate(self: *Self, player: ?*Player, event: ?*String, eventData: ?Object) void {
            _ = player;
            _ = eventData;
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ event, self, self.commonStrings.?.PROCESS });
            if (Object.same(event, PlayerListener.END_OF_MEDIA) or Object.same(event, PlayerListener.STOPPED) or Object.same(event, PlayerListener.CLOSED)) {
                _ = self.reset();
            }
        }
    };
};


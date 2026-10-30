// Generated Code Do Not Modify
// package org.allbinary.media.audio

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const PlayerListener = @import("javax/microedition/media/PlayerListener.zig").PlayerListener;
const MediaPlayer = @import("android/media/MediaPlayer.zig").MediaPlayer;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AndroidMediaPlayerWrapper = @import("org/allbinary/media/audio/AndroidMediaPlayerWrapper.zig").AndroidMediaPlayerWrapper;

pub const AndroidMediaPlayerWrapperListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.AndroidMediaPlayerWrapperListener";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    androidMediaPlayerWrapper: ?*AndroidMediaPlayerWrapper = null,
    mOnBufferingUpdateListener: ?*OnBufferingUpdateListener = null,
    mOnPreparedListener: ?*OnPreparedListener = null,
    mOnErrorListener: ?*OnErrorListener = null,
    mOnCompletionListener: ?*OnCompletionListener = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.androidMediaPlayerWrapper = Inheritance.upcast(?*AndroidMediaPlayerWrapper, AndroidMediaPlayerWrapper.NULL_ANDROID_MEDIA_PLAYER_WRAPPER);
        this.mOnBufferingUpdateListener = Inheritance.upcast(?*OnBufferingUpdateListener, Inheritance.callStatic(AndroidMediaPlayerOnBufferingUpdateListener, "create1", .{ this }));
        this.mOnPreparedListener = Inheritance.upcast(?*OnPreparedListener, Inheritance.callStatic(AndroidMediaPlayerOnPreparedListener, "create1", .{ this }));
        this.mOnErrorListener = Inheritance.upcast(?*OnErrorListener, Inheritance.callStatic(AndroidMediaPlayerOnErrorListener, "create1", .{ this }));
        this.mOnCompletionListener = Inheritance.upcast(?*OnCompletionListener, Inheritance.callStatic(AndroidMediaPlayerOnCompletionListener, "create1", .{ this }));
    }
    

    pub fn create1(androidMediaPlayerWrapper: ?*AndroidMediaPlayerWrapper) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        { // try
            _ = Inheritance.call(this.logUtil.?, "putF", .{ this.commonStrings.?.START, this, this.commonStrings.?.CONSTRUCTOR });
            this.androidMediaPlayerWrapper = androidMediaPlayerWrapper;
            const mediaPlayer: ?*MediaPlayer = Inheritance.upcast(?*MediaPlayer, Inheritance.receiver(androidMediaPlayerWrapper.?, "getMediaPlayer").getMediaPlayer());
            _ = Inheritance.call(mediaPlayer.?, "setOnCompletionListener", .{ this.mOnCompletionListener });
            _ = Inheritance.call(mediaPlayer.?, "setOnBufferingUpdateListener", .{ this.mOnBufferingUpdateListener });
            _ = Inheritance.call(mediaPlayer.?, "setOnPreparedListener", .{ this.mOnPreparedListener });
            _ = Inheritance.call(mediaPlayer.?, "setOnErrorListener", .{ this.mOnErrorListener });
        }
        // catch (Exception e):
//             _ = Inheritance.call(this.logUtil.?, "put", .{ this.commonStrings.?.EXCEPTION, this, this.commonStrings.?.CONSTRUCTOR, e });
        return this;
    }
    pub const MediaPlayerOnBufferingUpdateListener = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.media.audio.MediaPlayerOnBufferingUpdateListener";
    // Implements OnBufferingUpdateListener

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
        

        pub fn onBufferingUpdate(self: *Self, mediaPlayer: ?*MediaPlayer, i: i32) void {
            _ = mediaPlayer;
            _ = i;
            _ = self;
        }
    };
    pub const MediaPlayerOnPreparedListener = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.media.audio.MediaPlayerOnPreparedListener";
    // Implements OnPreparedListener

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
        

        pub fn onPrepared(self: *Self, mp: ?*MediaPlayer) void {
            _ = mp;
            _ = self;
        }
    };
    pub const MediaPlayerOnErrorListener = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.media.audio.MediaPlayerOnErrorListener";
    // Implements OnErrorListener

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
        

        pub fn onError(self: *Self, mp: ?*MediaPlayer, what: i32, extra: i32) bool {
            _ = mp;
            _ = what;
            _ = extra;
            _ = self;
            return false;
        }
    };
    pub const MediaPlayerOnCompletionListener = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.media.audio.MediaPlayerOnCompletionListener";
    // Implements OnCompletionListener

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
        

        pub fn onCompletion(self: *Self, mp: ?*MediaPlayer) void {
            _ = mp;
            _ = self;
        }
    };
    pub const AndroidMediaPlayerOnBufferingUpdateListener = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.media.audio.AndroidMediaPlayerOnBufferingUpdateListener";
        base: MediaPlayerOnBufferingUpdateListener = undefined,
        ON_BUFFERING_UPDATE: ?*String = null,
        androidMediaPlayerWrapperListener: ?*AndroidMediaPlayerWrapperListener = null,

    fn initFields(this: *Self) void {
            this.ON_BUFFERING_UPDATE = String.literal("onBufferingUpdate()");
            
    }
        

        pub fn create1(androidMediaPlayerWrapperListener: ?*AndroidMediaPlayerWrapperListener) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = MediaPlayerOnBufferingUpdateListener.create().*;
            this.initFields();
            this.androidMediaPlayerWrapperListener = androidMediaPlayerWrapperListener;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        pub fn onBufferingUpdate(self: *Self, mediaPlayer: ?*MediaPlayer, i: i32) void {
            _ = mediaPlayer;
            const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
            _ = Inheritance.call(logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Update buffer: ") }).?, "appendint", .{ i }).?, "append", .{ String.literal("%") }))), self, self.ON_BUFFERING_UPDATE });
            _ = Inheritance.call(self.androidMediaPlayerWrapperListener.?.androidMediaPlayerWrapper.?, "update", .{ PlayerListener.DEVICE_UNAVAILABLE });
        }
    };
    pub const AndroidMediaPlayerOnPreparedListener = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.media.audio.AndroidMediaPlayerOnPreparedListener";
        base: MediaPlayerOnPreparedListener = undefined,
        ON_PREPARE: ?*String = null,
        androidMediaPlayerWrapperListener: ?*AndroidMediaPlayerWrapperListener = null,

    fn initFields(this: *Self) void {
            this.ON_PREPARE = String.literal("onPrepare()");
            
    }
        

        pub fn create1(androidMediaPlayerWrapperListener: ?*AndroidMediaPlayerWrapperListener) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = MediaPlayerOnPreparedListener.create().*;
            this.initFields();
            this.androidMediaPlayerWrapperListener = androidMediaPlayerWrapperListener;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        pub fn onPrepared(self: *Self, mp: ?*MediaPlayer) void {
            _ = mp;
            const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(logUtil.?, "putF", .{ commonStrings.?.START, self, self.ON_PREPARE });
            _ = Inheritance.call(self.androidMediaPlayerWrapperListener.?.androidMediaPlayerWrapper.?, "update", .{ PlayerListener.DEVICE_AVAILABLE });
        }
    };
    pub const AndroidMediaPlayerOnErrorListener = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.media.audio.AndroidMediaPlayerOnErrorListener";
        base: MediaPlayerOnErrorListener = undefined,
        ON_ERROR: ?*String = null,
        androidMediaPlayerWrapperListener: ?*AndroidMediaPlayerWrapperListener = null,

    fn initFields(this: *Self) void {
            this.ON_ERROR = String.literal("onError()");
            
    }
        

        pub fn create1(androidMediaPlayerWrapperListener: ?*AndroidMediaPlayerWrapperListener) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = MediaPlayerOnErrorListener.create().*;
            this.initFields();
            this.androidMediaPlayerWrapperListener = androidMediaPlayerWrapperListener;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        pub fn onError(self: *Self, mp: ?*MediaPlayer, what: i32, extra: i32) bool {
            _ = mp;
            const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
            _ = Inheritance.call(logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.START_LABEL }).?, "append", .{ String.literal("What: ") }).?, "appendint", .{ what }).?, "append", .{ String.literal(" Extra: ") }).?, "appendint", .{ extra }))), self, self.ON_ERROR });
            _ = Inheritance.call(self.androidMediaPlayerWrapperListener.?.androidMediaPlayerWrapper.?, "update", .{ PlayerListener.ERROR });
            return true;
        }
    };
    pub const AndroidMediaPlayerOnCompletionListener = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.media.audio.AndroidMediaPlayerOnCompletionListener";
        base: MediaPlayerOnCompletionListener = undefined,
        ON_COMPLETE: ?*String = null,
        androidMediaPlayerWrapperListener: ?*AndroidMediaPlayerWrapperListener = null,

    fn initFields(this: *Self) void {
            this.ON_COMPLETE = String.literal("onComplete()");
            
    }
        

        pub fn create1(androidMediaPlayerWrapperListener: ?*AndroidMediaPlayerWrapperListener) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = MediaPlayerOnCompletionListener.create().*;
            this.initFields();
            this.androidMediaPlayerWrapperListener = androidMediaPlayerWrapperListener;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        pub fn onCompletion(self: *Self, mp: ?*MediaPlayer) void {
            _ = mp;
            const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.call(logUtil.?, "putF", .{ commonStrings.?.START, self, self.ON_COMPLETE });
            _ = Inheritance.call(self.androidMediaPlayerWrapperListener.?.androidMediaPlayerWrapper.?, "update", .{ PlayerListener.END_OF_MEDIA });
        }
    };
};


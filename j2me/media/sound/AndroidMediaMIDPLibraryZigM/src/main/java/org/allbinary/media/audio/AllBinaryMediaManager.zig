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
// const IOException = @import("java/io/IOException.zig").IOException;
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const MediaException = @import("javax/microedition/media/MediaException.zig").MediaException;
// const Player = @import("javax/microedition/media/Player.zig").Player;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GameFeatureFactory = @import("org/allbinary/game/configuration/feature/GameFeatureFactory.zig").GameFeatureFactory;
const ProgressCanvasFactory = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.zig").ProgressCanvasFactory;
const ABSystemWrapper = @import("org/allbinary/logic/ABSystemWrapper.zig").ABSystemWrapper;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AndroidMediaPlayerWrapper = @import("org/allbinary/media/audio/AndroidMediaPlayerWrapper.zig").AndroidMediaPlayerWrapper;
const MediaPlayerUtil = @import("org/allbinary/media/audio/MediaPlayerUtil.zig").MediaPlayerUtil;
const NoPlayer = @import("org/allbinary/media/audio/NoPlayer.zig").NoPlayer;
const PlayerComposite = @import("org/allbinary/media/audio/PlayerComposite.zig").PlayerComposite;
const Sound = @import("org/allbinary/media/audio/Sound.zig").Sound;
const Sounds = @import("org/allbinary/media/audio/Sounds.zig").Sounds;
const SoundsFactoryInterface = @import("org/allbinary/media/audio/SoundsFactoryInterface.zig").SoundsFactoryInterface;

//AndroidMediaMIDPLibrary
pub const AllBinaryMediaManager = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.AllBinaryMediaManager";
    const THIS: ?*String = String.literal("AllBinaryMediaManagerAndroid");
    var mostUsedTotal: i32 = 0;
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn isMuted() bool {
        return false;
    }
    

    pub fn setMuted(aMuted: bool) void {
        _ = aMuted;
    }
    

    pub fn update() bool {
        return true;
    }
    

    // throws Exception
    pub fn init(soundsFactoryInterface: ?*SoundsFactoryInterface) void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        const commonString: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(logUtil.?, "putF", .{ commonString.?.START, AllBinaryMediaManager.THIS, commonString.?.INIT });
        _ = Inheritance.callStatic(AllBinaryMediaManager, "shutdown", .{ soundsFactoryInterface });
        _ = Inheritance.call(ProgressCanvasFactory.getInstance().?, "addNormalPortion", .{ 50, String.literal("Media Manager") });
        _ = Inheritance.receiverOf(TsUtil.getInstance().?, "gc").gc();
        _ = Inheritance.callStatic(Sounds, "create1", .{ soundsFactoryInterface }).init();
        _ = Inheritance.call(logUtil.?, "putF", .{ commonString.?.END, AllBinaryMediaManager.THIS, commonString.?.INIT });
    }
    

    // throws Exception
    pub fn shutdown(soundsFactoryInterface: ?*SoundsFactoryInterface) void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        const commonString: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(logUtil.?, "putF", .{ commonString.?.START, AllBinaryMediaManager.THIS, String.literal("shutdown") });
        if (soundsFactoryInterface.?.isInitialized()) {
            _ = Inheritance.callStatic(Sounds, "create1", .{ soundsFactoryInterface }).stopAll();
            const soundInterfaceArray: []?*Sound = soundsFactoryInterface.?.getSoundInterfaceArray();
            var player: ?*Player = null;
            var player2: ?*Player = null;
            var androidMediaPlayerWrapper: ?*AndroidMediaPlayerWrapper = null;
            {
                var i: i32 = 0;
                while (i < @as(i32, @intCast(soundInterfaceArray.len))) : (i += 1) {
                if (soundInterfaceArray[@intCast(i)] != null) {
                    player = Inheritance.upcast(@TypeOf(player), soundInterfaceArray[@intCast(i)].?.getPlayerP());
                    if (player != null) {
                        player2 = Inheritance.upcast(@TypeOf(player2), Inheritance.receiverOf((Inheritance.cast(?*PlayerComposite, player)).?, "getPlayerP").getPlayerP());
                        if (Object.instanceOf(Object.of(player2), AndroidMediaPlayerWrapper)) {
                            androidMediaPlayerWrapper = Inheritance.cast(?*AndroidMediaPlayerWrapper, player2);
                            _ = Inheritance.call(MediaPlayerUtil.getInstance().?, "waitForMediaPlayer", .{ Inheritance.receiver(androidMediaPlayerWrapper.?, "getMediaPlayer").getMediaPlayer() });
                        } else {
                            std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Unknown Property Player: "), String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(player).?.class))).?))).name)); break :exception error.Exception; }});
                        }
                    }
                }
                }
            }
            _ = Inheritance.callStatic(Sounds, "create1", .{ soundsFactoryInterface }).closeAll();
            _ = Inheritance.receiverOf(TsUtil.getInstance().?, "gc").gc();
            _ = Inheritance.call(soundsFactoryInterface.?, "setInitialized", .{ false });
            AllBinaryMediaManager.mostUsedTotal = 0;
        }
        _ = Inheritance.call(logUtil.?, "putF", .{ commonString.?.START, AllBinaryMediaManager.THIS, String.literal("shutdown") });
    }
    

    // throws Exception
    pub fn createPlayer(resource: ?*String) ?*Player {
        AllBinaryMediaManager.mostUsedTotal += 1;
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
        if (Inheritance.call(Features.getInstance().?, "isFeature", .{ GameFeatureFactory.getInstance().?.SOUND })) {
            { // try
                return Inheritance.upcast(?*Player, Inheritance.callStatic(AndroidMediaPlayerWrapper, "create1", .{ resource }));
            }
            // catch (Exception e):
//                 _ = Inheritance.call(logUtil.?, "put", .{ String.plus(String.plus(String.literal("Could not create AndroidMediaPlayerWrapper using NoPlayer at "), CommonLabels.getInstance().?.TOTAL_LABEL), AllBinaryMediaManager.mostUsedTotal), AllBinaryMediaManager.THIS, String.literal("createPlayer"), e });
//                 return Inheritance.upcast(?*Player, NoPlayer.NO_PLAYER);
        } else {
            return Inheritance.upcast(?*Player, NoPlayer.NO_PLAYER);
        }
    }
    

    // throws IOException, MediaException
    pub fn createPlayerFromInputStream(stream: ?*InputStream, @"type": ?*String) ?*Player {
        _ = stream;
        _ = @"type";
        std.debug.panic("{any}", .{exception: { _ = String.literal("No Input Stream Player"); break :exception error.MediaException; }});
    }
    

    // throws MediaException
    pub fn playTone(frequency: i32, time: i32, volume: i32) void {
        _ = frequency;
        _ = time;
        _ = volume;
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        std.debug.panic("{any}", .{exception: { _ = String.literal("No Tone Player"); break :exception error.MediaException; }});
    }
    

    pub fn isInitialized() bool {
        return true;
    }
};


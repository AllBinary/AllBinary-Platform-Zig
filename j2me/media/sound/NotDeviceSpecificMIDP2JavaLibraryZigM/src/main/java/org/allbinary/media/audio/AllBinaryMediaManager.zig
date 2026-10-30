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
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const Manager = @import("javax/microedition/media/Manager.zig").Manager;
// const MediaException = @import("javax/microedition/media/MediaException.zig").MediaException;
// const Player = @import("javax/microedition/media/Player.zig").Player;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const AudioContentTypeDataFactory = @import("org/allbinary/audio/AudioContentTypeDataFactory.zig").AudioContentTypeDataFactory;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GameFeatureFactory = @import("org/allbinary/game/configuration/feature/GameFeatureFactory.zig").GameFeatureFactory;
const ProgressCanvasFactory = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.zig").ProgressCanvasFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const NoPlayer = @import("org/allbinary/media/audio/NoPlayer.zig").NoPlayer;
const Sounds = @import("org/allbinary/media/audio/Sounds.zig").Sounds;
const SoundsFactoryInterface = @import("org/allbinary/media/audio/SoundsFactoryInterface.zig").SoundsFactoryInterface;

//NotDeviceSpecificMIDP2JavaLibrary
pub const AllBinaryMediaManager = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.AllBinaryMediaManager";
    const THIS: ?*String = String.literal("AllBinaryMediaManagerNoMIPD2");
    

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
        _ = Inheritance.call(ProgressCanvasFactory.getInstance().?, "addNormalPortion", .{ 50, String.literal("Media Manager") });
        _ = Inheritance.callStatic(Sounds, "create1", .{ soundsFactoryInterface }).init();
    }
    

    // throws Exception
    pub fn shutdown(soundsFactoryInterface: ?*SoundsFactoryInterface) void {
        _ = Inheritance.callStatic(Sounds, "create1", .{ soundsFactoryInterface }).stopAll();
        _ = Inheritance.callStatic(Sounds, "create1", .{ soundsFactoryInterface }).closeAll();
        _ = Inheritance.receiverOf(TsUtil.getInstance().?, "gc").gc();
    }
    

    // throws Exception
    pub fn createPlayer(resource: ?*String) ?*Player {
        if (Inheritance.call(Features.getInstance().?, "isFeature", .{ GameFeatureFactory.getInstance().?.SOUND })) {
            if (Inheritance.call(TsUtil.getInstance().?, "compareTo", .{ resource, Manager.TONE_DEVICE_LOCATOR }) == 0) {
                return Inheritance.upcast(?*Player, Inheritance.callStatic(Manager, "createPlayer", .{ resource }));
            } else {
                const inputStream: ?*InputStream = Inheritance.upcast(?*InputStream, Inheritance.call(ResourceUtil.getInstance().?, "getResourceAsStream", .{ resource }));
                return Inheritance.upcast(?*Player, Inheritance.callStatic(Manager, "createPlayer", .{ inputStream, Inheritance.receiverOf(AudioContentTypeDataFactory.getInstance().?.MIME_AUDIO_WAV.?, "getName").getName() }));
            }
        } else {
            return Inheritance.upcast(?*Player, NoPlayer.NO_PLAYER);
        }
    }
    

    // throws MediaException
    pub fn playTone(frequency: i32, time: i32, volume: i32) void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        if (Inheritance.call(Features.getInstance().?, "isFeature", .{ GameFeatureFactory.getInstance().?.SOUND })) {
            _ = Inheritance.callStatic(Manager, "playTone", .{ frequency, time, volume });
        }
    }
};


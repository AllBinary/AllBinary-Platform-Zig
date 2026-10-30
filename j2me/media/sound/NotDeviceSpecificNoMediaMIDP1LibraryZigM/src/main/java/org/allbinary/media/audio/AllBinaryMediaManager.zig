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
// const Player = @import("javax/microedition/media/Player.zig").Player;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const ProgressCanvasFactory = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.zig").ProgressCanvasFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const NoPlayer = @import("org/allbinary/media/audio/NoPlayer.zig").NoPlayer;
const Sounds = @import("org/allbinary/media/audio/Sounds.zig").Sounds;
const SoundsFactoryInterface = @import("org/allbinary/media/audio/SoundsFactoryInterface.zig").SoundsFactoryInterface;

//NotDeviceSpecificNoMediaMIDP1Library
pub const AllBinaryMediaManager = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.AllBinaryMediaManager";
    const THIS: ?*String = String.literal("AllBinaryMediaManagerNoMediaMIDP1");
    

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
    

    pub fn createPlayerFromInputStream(stream: ?*InputStream, @"type": ?*String) ?*Player {
        _ = stream;
        _ = @"type";
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        const commonString: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(logUtil.?, "putF", .{ commonString.?.START, AllBinaryMediaManager.THIS, String.literal("creatPlayer(InputStream)") });
        return Inheritance.cast(?*Player, NoPlayer.NO_PLAYER);
    }
    

    pub fn createPlayer(locator: ?*String) ?*Player {
        _ = locator;
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        const commonString: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(logUtil.?, "putF", .{ commonString.?.START, AllBinaryMediaManager.THIS, String.literal("creatPlayer(locator)") });
        return Inheritance.cast(?*Player, NoPlayer.NO_PLAYER);
    }
    

    pub fn playTone(frequency: i32, time: i32, volume: i32) void {
        _ = frequency;
        _ = time;
        _ = volume;
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
    }
    

    pub fn getSupportedContentTypes(protocol: ?*String) []?*String {
        _ = protocol;
        return Inheritance.receiverOf(StringUtil.getInstance().?, "getArrayInstance").getArrayInstance();
    }
    

    pub fn getSupportedProtocols(content_type: ?*String) []?*String {
        _ = content_type;
        return Inheritance.receiverOf(StringUtil.getInstance().?, "getArrayInstance").getArrayInstance();
    }
};


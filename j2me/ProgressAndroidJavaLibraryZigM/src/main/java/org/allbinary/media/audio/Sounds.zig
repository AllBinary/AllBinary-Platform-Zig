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
// const Player = @import("javax/microedition/media/Player.zig").Player;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;
const ProgressCanvasFactory = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.zig").ProgressCanvasFactory;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const Sound = @import("org/allbinary/media/audio/Sound.zig").Sound;
const SoundStrings = @import("org/allbinary/media/audio/SoundStrings.zig").SoundStrings;
const SoundsFactoryInterface = @import("org/allbinary/media/audio/SoundsFactoryInterface.zig").SoundsFactoryInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const Sounds = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.Sounds";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    soundStrings: ?*SoundStrings = null,
    soundsFactoryInterface: ?*SoundsFactoryInterface = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.soundStrings = Inheritance.upcast(?*SoundStrings, SoundStrings.getInstance());
        
    }
    

    pub fn create1(soundsFactoryInterface: ?*SoundsFactoryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.soundsFactoryInterface = soundsFactoryInterface;
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStrings.?.INIT });
        const commonLabels: ?*CommonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
        const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
        _ = self.soundsFactoryInterface.?.init();
        const soundInterfaceArray: []?*Sound = self.soundsFactoryInterface.?.getSoundInterfaceArray();
        const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
        var indexInteger: ?*Integer = null;
        var indexString: ?*String = null;
        const stringBuffer: ?*StringMaker = StringMaker.create();
        {
            var i: i32 = 0;
            while (i < @as(i32, @intCast(soundInterfaceArray.len))) : (i += 1) {
            const soundInterfaceCanBeNull: ?*Sound = Inheritance.upcast(?*Sound, soundInterfaceArray[@intCast(i)]);
            if (soundInterfaceCanBeNull != null) {
                indexInteger = Inheritance.upcast(@TypeOf(indexInteger), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ i }));
                indexString = Inheritance.upcast(@TypeOf(indexString), String.valueOf(indexInteger.?));
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ commonLabels.?.INDEX_LABEL });
                _ = Inheritance.call(stringBuffer.?, "append", .{ indexString });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.soundStrings.?.SOUND });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(soundInterfaceCanBeNull).?.class))).?))).name) });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.commonStrings.?.INIT });
                _ = soundInterfaceCanBeNull.?.init();
                _ = Inheritance.call(progressCanvas.?, "addNormalPortion", .{ 100, Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.soundStrings.?.INIT_SOUND }).?, "append", .{ indexString }))) });
            }
            }
        }
        _ = Inheritance.call(self.soundsFactoryInterface.?, "setInitialized", .{ true });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.END, self, self.commonStrings.?.INIT });
    }
    

    // throws Exception
    pub fn stopAll(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.soundStrings.?.STOP_ALL });
        const soundInterfaceArray: []?*Sound = self.soundsFactoryInterface.?.getSoundInterfaceArray();
        const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
        var player: ?*Player = null;
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(soundInterfaceArray.len))) : (index += 1) {
            if (soundInterfaceArray[@intCast(index)] != null) {
                player = Inheritance.upcast(@TypeOf(player), soundInterfaceArray[@intCast(index)].?.getPlayerP());
                if (player != null) {
                    _ = player.?.stop();
                    _ = Inheritance.call(progressCanvas.?, "addPortion", .{ 100, self.soundStrings.?.STOPPING_SOUND, index });
                }
            }
            }
        }
    }
    

    // throws Exception
    pub fn closeAll(self: *Self) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.soundStrings.?.CLOSE_ALL });
        const soundInterfaceArray: []?*Sound = self.soundsFactoryInterface.?.getSoundInterfaceArray();
        const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
        var player: ?*Player = null;
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(soundInterfaceArray.len))) : (index += 1) {
            if (soundInterfaceArray[@intCast(index)] != null) {
                player = Inheritance.upcast(@TypeOf(player), soundInterfaceArray[@intCast(index)].?.getPlayerP());
                if (player != null) {
                    _ = player.?.close();
                    _ = Inheritance.call(progressCanvas.?, "addPortion", .{ 100, self.soundStrings.?.CLOSING_SOUND, index });
                }
            }
            }
        }
    }
};


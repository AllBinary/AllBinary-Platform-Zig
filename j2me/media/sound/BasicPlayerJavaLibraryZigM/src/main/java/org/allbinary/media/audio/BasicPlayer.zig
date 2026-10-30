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
// const Control = @import("javax/microedition/media/Control.zig").Control;
// const MediaException = @import("javax/microedition/media/MediaException.zig").MediaException;
// const Player = @import("javax/microedition/media/Player.zig").Player;
// const PlayerListener = @import("javax/microedition/media/PlayerListener.zig").PlayerListener;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Controllable2 = @import("org/allbinary/media/audio/Controllable2.zig").Controllable2;
const NullControl = @import("org/allbinary/media/audio/NullControl.zig").NullControl;

//BasicPlayerJavaLibrary
pub const BasicPlayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.BasicPlayer";
    pub const java_interfaces = .{ Controllable2 };
    commonStrings: ?*CommonStrings = null,
    listenersList: ?*BasicArrayList = null,
    stateP: i32 = 0,
    loopCountP: i32 = 0,
    // Implements Player
    // Implements Controllable2
    pub var CONTROL_TYPE: ?*String = String.literal("ToneControl");

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.listenersList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.stateP = 0;
        this.loopCountP = 0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setLoopCount", .{ 0 });
        _ = Inheritance.call(this, "setState", .{ Player.UNREALIZED });
        return this;
    }
    

    pub fn getContentType(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn getControl(self: *Self, controlType: ?*String) ?*Control {
        _ = controlType;
        _ = self;
        return Inheritance.upcast(?*Control, NullControl.create());
    }
    

    pub fn getControls(self: *Self) []?*Control {
        _ = self;
        return array_N66236: { const array_N66236_array = allocator.alloc(?*Control, @intCast(0)) catch unreachable; @memset(array_N66236_array, null); break :array_N66236 array_N66236_array; };
    }
    

    pub fn close(self: *Self) void {
        _ = self;
    }
    

    pub fn addPlayerListener(self: *Self, playerListener: ?*PlayerListener) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        if (!Inheritance.call(self.listenersList.?, "contains", .{ playerListener })) {
            _ = Inheritance.call(self.listenersList.?, "add", .{ playerListener });
        }
    }
    

    pub fn removePlayerListener(self: *Self, playerListener: ?*PlayerListener) void {
        _ = Inheritance.call(self.listenersList.?, "remove", .{ playerListener });
    }
    

    pub fn getState(self: *Self) i32 {
        return self.stateP;
    }
    

    pub fn setState(self: *Self, state: i32) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        self.stateP = state;
    }
    

    pub fn getDuration(self: *Self) i64 {
        _ = self;
        return 0;
    }
    

    pub fn getMediaTime(self: *Self) i64 {
        _ = self;
        return 0;
    }
    

    pub fn deallocate(self: *Self) void {
        _ = self;
    }
    

    // throws MediaException
    pub fn prefetch(self: *Self) void {
        _ = self;
    }
    

    // throws MediaException
    pub fn realize(self: *Self) void {
        _ = self;
    }
    

    pub fn setLoopCount(self: *Self, count: i32) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        self.loopCountP = count;
    }
    

    pub fn getLoopCount(self: *Self) i32 {
        return self.loopCountP;
    }
    

    // throws MediaException
    pub fn setMediaTime(self: *Self, now: i64) i64 {
        _ = now;
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        return 0;
    }
    

    // throws MediaException
    pub fn start(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self, "setState", .{ Player.STARTED });
    }
    

    // throws MediaException
    pub fn stop(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self, "setState", .{ Player.PREFETCHED });
    }
    

    pub fn setVolume(self: *Self, leftVolume: i32, rightVolume: i32) void {
        _ = leftVolume;
        _ = rightVolume;
        _ = self;
    }
};


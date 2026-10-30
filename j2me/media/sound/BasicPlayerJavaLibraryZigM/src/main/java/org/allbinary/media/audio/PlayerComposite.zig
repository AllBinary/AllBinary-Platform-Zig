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
// const Controllable = @import("javax/microedition/media/Controllable.zig").Controllable;
// const Player = @import("javax/microedition/media/Player.zig").Player;
// const PlayerListener = @import("javax/microedition/media/PlayerListener.zig").PlayerListener;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GameTickTimeDelayHelper = @import("org/allbinary/time/GameTickTimeDelayHelper.zig").GameTickTimeDelayHelper;
const GameTickTimeDelayHelperFactory = @import("org/allbinary/time/GameTickTimeDelayHelperFactory.zig").GameTickTimeDelayHelperFactory;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const Controllable2 = @import("org/allbinary/media/audio/Controllable2.zig").Controllable2;

//BasicPlayer
pub const PlayerComposite = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.PlayerComposite";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    player: ?*Player = null,
    timeElapsedHelper: ?*TimeDelayHelper = null,
    gameTickTimeDelayHelper: ?*GameTickTimeDelayHelper = null,
    // Implements Controllable
    // Implements Player

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.timeElapsedHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 0 });
        this.gameTickTimeDelayHelper = Inheritance.upcast(?*GameTickTimeDelayHelper, GameTickTimeDelayHelperFactory.getInstance());
    }
    

    pub fn create2(player: ?*Player, repeatTime: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.player = player;
        this.timeElapsedHelper.?.delay = Inheritance.upcast(@TypeOf(this.timeElapsedHelper.?.delay), repeatTime);
        return this;
    }
    

    pub fn addPlayerListener(self: *Self, playerListener: ?*PlayerListener) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        _ = Inheritance.call(self.player.?, "addPlayerListener", .{ playerListener });
    }
    

    pub fn removePlayerListener(self: *Self, playerListener: ?*PlayerListener) void {
        _ = Inheritance.call(self.player.?, "removePlayerListener", .{ playerListener });
    }
    

    pub fn close(self: *Self) void {
        _ = self.player.?.close();
    }
    

    pub fn deallocate(self: *Self) void {
        _ = self.player.?.deallocate();
    }
    

    pub fn getContentType(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.player.?.getContentType());
    }
    

    pub fn getDuration(self: *Self) i64 {
        return self.player.?.getDuration();
    }
    

    pub fn getMediaTime(self: *Self) i64 {
        return self.player.?.getMediaTime();
    }
    

    pub fn prefetch(self: *Self) void {
        { // try
            _ = self.player.?.prefetch();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("prefetch"), e });
    }
    

    pub fn realize(self: *Self) void {
        { // try
            _ = self.player.?.realize();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("realize"), e });
    }
    

    pub fn getState(self: *Self) i32 {
        return self.player.?.getState();
    }
    

    pub fn setLoopCount(self: *Self, count: i32) void {
        _ = Inheritance.call(self.player.?, "setLoopCount", .{ count });
    }
    

    pub fn setMediaTime(self: *Self, now: i64) i64 {
        { // try
            return Inheritance.call(self.player.?, "setMediaTime", .{ now });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("setMediaTime"), e });
//             return @as(i64, @intCast(-1));
    }
    

    pub fn start(self: *Self) void {
        { // try
            if (Inheritance.call(self.timeElapsedHelper.?, "isTime", .{ self.gameTickTimeDelayHelper.?.startTime })) {
                _ = self.player.?.start();
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.START_METHOD_NAME, e });
    }
    

    pub fn stop(self: *Self) void {
        { // try
            _ = self.player.?.stop();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("stop"), e });
    }
    

    pub fn getControl(self: *Self, controlType: ?*String) ?*Control {
        return Inheritance.upcast(?*Control, Inheritance.call(self.player.?, "getControl", .{ controlType }));
    }
    

    pub fn getControls(self: *Self) []?*Control {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn setVolume(self: *Self, leftVolume: i32, rightVolume: i32) void {
        const controllable2: ?*Controllable2 = Inheritance.upcast(?*Controllable2, (Inheritance.cast(?*Controllable2, self.player)));
        _ = Inheritance.call(controllable2.?, "setVolume", .{ leftVolume, rightVolume });
    }
    

    pub fn getPlayerP(self: *Self) ?*Player {
        return self.player;
    }
};


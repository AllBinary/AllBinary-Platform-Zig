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
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const NoPlayer = @import("org/allbinary/media/audio/NoPlayer.zig").NoPlayer;
const SoundInterface = @import("org/allbinary/media/audio/SoundInterface.zig").SoundInterface;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const Sound = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.Sound";
    pub const java_interfaces = .{ SoundInterface, Runnable };
    resource: ?*String = null,
    player: ?*Player = null,
    // Implements SoundInterface
    // Implements Runnable

    fn initFields(this: *Self) void {
        
        this.player = Inheritance.upcast(?*Player, NoPlayer.NO_PLAYER);
    }
    

    pub fn create1(resource: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.resource = resource;
        return this;
    }
    

    pub fn getResource(self: *Self) ?*String {
        return self.resource;
    }
    

    pub fn getPlayerP(self: *Self) ?*Player {
        return self.player;
    }
    

    pub fn setPlayerP(self: *Self, player: ?*Player) void {
        self.player = player;
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        _ = self;
    }
    

    pub fn getDuration(self: *Self) i32 {
        _ = self;
        return -1;
    }
    

    pub fn run(self: *Self) void {
        { // try
            _ = self.player.?.start();
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.callStatic(PreLogUtil, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN });
    }
};


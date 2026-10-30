// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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

pub const PlayerStateUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.PlayerStateUtil";
    commonStrings: ?*CommonStrings = null,
    UNREALIZED: ?*String = null,
    REALIZED: ?*String = null,
    PREFETCHED: ?*String = null,
    STARTED: ?*String = null,
    CLOSED: ?*String = null,
    var instance: ?*PlayerStateUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PlayerStateUtil.create();
    }

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.UNREALIZED = String.literal("UNREALIZED");
        this.REALIZED = String.literal("REALIZED");
        this.PREFETCHED = String.literal("PREFETCHED");
        this.STARTED = String.literal("STARTED");
        this.CLOSED = String.literal("CLOSED");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*PlayerStateUtil {
        return Inheritance.upcast(?*PlayerStateUtil, PlayerStateUtil.instance);
    }
    

    pub fn convert(self: *Self, state: i32) ?*String {
        if (state == Player.UNREALIZED) {
            return self.UNREALIZED;
        } else if (state == Player.REALIZED) {
            return self.REALIZED;
        } else if (state == Player.PREFETCHED) {
            return self.PREFETCHED;
        } else if (state == Player.STARTED) {
            return self.STARTED;
        } else if (state == Player.CLOSED) {
            return self.CLOSED;
        }
        return Inheritance.upcast(?*String, self.commonStrings.?.UNKNOWN);
    }
};


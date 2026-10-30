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
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicPlayer = @import("org/allbinary/media/audio/BasicPlayer.zig").BasicPlayer;
const NullControl = @import("org/allbinary/media/audio/NullControl.zig").NullControl;

pub const NoPlayer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.NoPlayer";
    base: BasicPlayer = undefined,
    pub var NO_PLAYER: ?*NoPlayer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NO_PLAYER = NoPlayer.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicPlayer.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn close(self: *Self) void {
        _ = self;
    }
    

    pub fn getContentType(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.NULL_STRING);
    }
    

    pub fn getControl(self: *Self, controlType: ?*String) ?*Control {
        _ = controlType;
        _ = self;
        return Inheritance.upcast(?*Control, NullControl.create());
    }
    

    pub fn getControls(self: *Self) []?*Control {
        _ = self;
        return array_N65906: { const array_N65906_array = allocator.alloc(?*Control, @intCast(0)) catch unreachable; @memset(array_N65906_array, null); break :array_N65906 array_N65906_array; };
    }
};


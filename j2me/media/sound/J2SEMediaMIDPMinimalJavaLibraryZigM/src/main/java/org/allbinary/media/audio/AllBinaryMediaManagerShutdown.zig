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
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AllBinaryMediaManager = @import("org/allbinary/media/audio/AllBinaryMediaManager.zig").AllBinaryMediaManager;
const SoundsFactoryInterface = @import("org/allbinary/media/audio/SoundsFactoryInterface.zig").SoundsFactoryInterface;

pub const AllBinaryMediaManagerShutdown = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.audio.AllBinaryMediaManagerShutdown";
    var instance: ?*AllBinaryMediaManagerShutdown = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AllBinaryMediaManagerShutdown.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn shutdown(soundsFactoryInterface: ?*SoundsFactoryInterface) void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(logUtil.?, "putF", .{ commonStrings.?.START, AllBinaryMediaManagerShutdown.instance, String.literal("shutdown") });
        _ = Inheritance.callStatic(AllBinaryMediaManager, "shutdown", .{ soundsFactoryInterface });
    }
};


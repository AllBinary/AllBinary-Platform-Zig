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
// package org.allbinary.logic.communication.log.config.type

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogConfigTypes = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypes.zig").LogConfigTypes;
const LogConfigTypeFactory = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.zig").LogConfigTypeFactory;
const LogConfigType = @import("org/allbinary/logic/communication/log/config/type/LogConfigType.zig").LogConfigType;

pub const LogConfigTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory";
    NO_DESCRIPTION: ?*String = null,
    INIT_SERVER: ?*LogConfigType = null,
    LOBBY_SERVER: ?*LogConfigType = null,
    GAME_SERVER: ?*LogConfigType = null,
    GAME_SIMULATOR: ?*LogConfigType = null,
    CUSTOM_TYPES: ?*LogConfigType = null,
    var instance: ?*LogConfigTypeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LogConfigTypeFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NO_DESCRIPTION = String.literal("No Description");
        this.INIT_SERVER = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Init Server"), this.NO_DESCRIPTION });
        this.LOBBY_SERVER = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Lobby Server"), this.NO_DESCRIPTION });
        this.GAME_SERVER = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Game Server"), this.NO_DESCRIPTION });
        this.GAME_SIMULATOR = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Game Simulator"), this.NO_DESCRIPTION });
        this.CUSTOM_TYPES = Inheritance.callStatic(LogConfigType, "create2", .{ String.literal("Custom Types"), this.NO_DESCRIPTION });
    }
    

    pub fn getInstance() ?*LogConfigTypeFactory {
        return Inheritance.upcast(?*LogConfigTypeFactory, LogConfigTypeFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(LogConfigTypes.LOGGING.?, "add", .{ this.INIT_SERVER });
        return this;
    }
};


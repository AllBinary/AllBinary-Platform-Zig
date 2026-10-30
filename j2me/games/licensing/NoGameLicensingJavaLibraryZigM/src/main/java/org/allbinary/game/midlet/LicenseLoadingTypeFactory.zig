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
// package org.allbinary.game.midlet

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LicenseLoadingType = @import("org/allbinary/game/midlet/LicenseLoadingType.zig").LicenseLoadingType;

pub const LicenseLoadingTypeFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.midlet.LicenseLoadingTypeFactory";
    INITIAL_LOADING: ?*LicenseLoadingType = null,
    GAME_START: ?*LicenseLoadingType = null,
    LOGIN: ?*LicenseLoadingType = null,
    OTHER: ?*LicenseLoadingType = null,
    var instance: ?*LicenseLoadingTypeFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LicenseLoadingTypeFactory.create();
    }

    fn initFields(this: *Self) void {
        this.INITIAL_LOADING = Inheritance.callStatic(LicenseLoadingType, "create1", .{ String.literal("Initial Loading") });
        this.GAME_START = Inheritance.callStatic(LicenseLoadingType, "create1", .{ String.literal("Game Start") });
        this.LOGIN = Inheritance.callStatic(LicenseLoadingType, "create1", .{ String.literal("Login") });
        this.OTHER = Inheritance.callStatic(LicenseLoadingType, "create1", .{ String.literal("Other/Usually The First Non Demo Level") });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getIntance() ?*LicenseLoadingTypeFactory {
        return Inheritance.upcast(?*LicenseLoadingTypeFactory, LicenseLoadingTypeFactory.instance);
    }
};


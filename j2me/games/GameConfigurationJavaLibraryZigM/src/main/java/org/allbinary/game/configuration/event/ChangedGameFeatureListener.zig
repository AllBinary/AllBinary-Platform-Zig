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
// package org.allbinary.game.configuration.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameConfiguration = @import("org/allbinary/game/configuration/GameConfiguration.zig").GameConfiguration;
const BaseChangedGameFeatureListener = @import("org/allbinary/game/configuration/event/BaseChangedGameFeatureListener.zig").BaseChangedGameFeatureListener;

pub const ChangedGameFeatureListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.event.ChangedGameFeatureListener";
    base: BaseChangedGameFeatureListener = undefined,
    var gameFeatureListener: ?*ChangedGameFeatureListener = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        gameFeatureListener = ChangedGameFeatureListener.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BaseChangedGameFeatureListener.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*ChangedGameFeatureListener {
        return Inheritance.upcast(?*ChangedGameFeatureListener, ChangedGameFeatureListener.gameFeatureListener);
    }
    

    pub fn isChangedGameConfiguration(self: *Self, gameConfiguration: ?*GameConfiguration) bool {
        return Inheritance.call(Inheritance.fieldPointer(self, "list").*.?, "contains", .{ gameConfiguration });
    }
};


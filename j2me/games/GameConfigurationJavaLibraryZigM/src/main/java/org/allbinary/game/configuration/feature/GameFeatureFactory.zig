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
// package org.allbinary.game.configuration.feature

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Feature = @import("org/allbinary/game/configuration/feature/Feature.zig").Feature;
const GameFeature = @import("org/allbinary/game/configuration/feature/GameFeature.zig").GameFeature;

pub const GameFeatureFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.feature.GameFeatureFactory";
    SOUND: ?*GameFeature = null,
    MUSIC: ?*GameFeature = null,
    SCREEN_SHAKE: ?*Feature = null,
    POST_IMAGE_LOADING_MODIFICATION: ?*Feature = null,
    HEALTH_BARS: ?*GameFeature = null,
    DAMAGE_FLOATERS: ?*GameFeature = null,
    GAME_INPUT_LAYER_PROCESSOR: ?*GameFeature = null,
    ARTIFICIAL_INTELLEGENCE_PROCESSOR: ?*GameFeature = null,
    COLLIDABLE_INTERFACE_LAYER_PROCESSOR: ?*GameFeature = null,
    TICKABLE_LAYER_PROCESSOR: ?*GameFeature = null,
    CHEATING: ?*GameFeature = null,
    DROPPED_ITEMS: ?*GameFeature = null,
    DROPPED_ITEMS_FROM_DEATH: ?*GameFeature = null,
    TEST_DESTROYED_LAYER_PROCESSOR: ?*GameFeature = null,
    COLLISIONS_WITH_SOURCE: ?*GameFeature = null,
    COLLISIONS_FORCED_TWO_DIMENSIONAL: ?*GameFeature = null,
    var instance: ?*GameFeatureFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GameFeatureFactory.create();
    }

    fn initFields(this: *Self) void {
        this.SOUND = Inheritance.callStatic(GameFeature, "create1", .{ String.literal("Sound") });
        this.MUSIC = Inheritance.callStatic(GameFeature, "create1", .{ String.literal("Music") });
        this.SCREEN_SHAKE = Inheritance.callStatic(Feature, "create1", .{ String.literal("Screen Shake") });
        this.POST_IMAGE_LOADING_MODIFICATION = Inheritance.callStatic(Feature, "create1", .{ String.literal("Post Image Loading Modification (Scaling, Rotation, or Other)") });
        this.HEALTH_BARS = Inheritance.callStatic(GameFeature, "create1", .{ String.literal("Health Bars") });
        this.DAMAGE_FLOATERS = Inheritance.callStatic(GameFeature, "create1", .{ String.literal("Damage Floaters") });
        this.GAME_INPUT_LAYER_PROCESSOR = Inheritance.callStatic(GameFeature, "create1", .{ String.literal("Game Input Layer Processor") });
        this.ARTIFICIAL_INTELLEGENCE_PROCESSOR = Inheritance.callStatic(GameFeature, "create1", .{ String.literal("Artificial Intelligence Layer Processor") });
        this.COLLIDABLE_INTERFACE_LAYER_PROCESSOR = Inheritance.callStatic(GameFeature, "create1", .{ String.literal("Collidable Interface Layer Processor") });
        this.TICKABLE_LAYER_PROCESSOR = Inheritance.callStatic(GameFeature, "create1", .{ String.literal("Tickable Layer Processor") });
        this.CHEATING = Inheritance.callStatic(GameFeature, "create1", .{ String.literal("Cheating") });
        this.DROPPED_ITEMS = Inheritance.callStatic(GameFeature, "create1", .{ String.literal("Drops") });
        this.DROPPED_ITEMS_FROM_DEATH = Inheritance.callStatic(GameFeature, "create1", .{ String.literal("Drops from Dead") });
        this.TEST_DESTROYED_LAYER_PROCESSOR = Inheritance.callStatic(GameFeature, "create1", .{ String.literal("Destroyed Layer Processor") });
        this.COLLISIONS_WITH_SOURCE = Inheritance.callStatic(GameFeature, "create1", .{ String.literal("Allow Collisions With Source") });
        this.COLLISIONS_FORCED_TWO_DIMENSIONAL = Inheritance.callStatic(GameFeature, "create1", .{ String.literal("Collisions Forced Two Dimensional") });
    }
    

    pub fn getInstance() ?*GameFeatureFactory {
        return Inheritance.upcast(?*GameFeatureFactory, GameFeatureFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};


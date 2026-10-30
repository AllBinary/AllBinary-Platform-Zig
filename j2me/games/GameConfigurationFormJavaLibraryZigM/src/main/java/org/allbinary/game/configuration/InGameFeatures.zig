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
// package org.allbinary.game.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GameFeatureChoiceGroups = @import("org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.zig").GameFeatureChoiceGroups;
const InGameFeatureChoiceGroups = @import("org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups.zig").InGameFeatureChoiceGroups;
const SensorFeatureFactory = @import("org/allbinary/game/configuration/feature/SensorFeatureFactory.zig").SensorFeatureFactory;
const TouchFeatureFactory = @import("org/allbinary/game/configuration/feature/TouchFeatureFactory.zig").TouchFeatureFactory;
const Init = @import("org/allbinary/init/Init.zig").Init;
const OrientationData = @import("org/allbinary/input/gyro/OrientationData.zig").OrientationData;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const InGameFeatures = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.InGameFeatures";
    base: Init = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Init.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self) void {
        const LABEL: ?*String = String.literal("Screen Buttons");
        const orientationData: ?*OrientationData = Inheritance.upcast(?*OrientationData, OrientationData.getInstance());
        const exclusiveOrientationSensorVector: ?*BasicArrayList = Inheritance.cast(?*BasicArrayList, Inheritance.call(Inheritance.receiverOf(GameFeatureChoiceGroups.getExclusiveInstance().?, "get").get().?, "get", .{ Inheritance.cast(?Object, orientationData.?.ORIENTATION_SENSOR_INPUT) }));
        const inGameFeatureChoiceGroups: ?*InGameFeatureChoiceGroups = Inheritance.upcast(?*InGameFeatureChoiceGroups, InGameFeatureChoiceGroups.getExclusiveInstance());
        if (exclusiveOrientationSensorVector != null) {
            const inGameExclusiveOrientationSensorVectorCanBeNull: ?Object = Inheritance.upcast(?Object, Inheritance.call(inGameFeatureChoiceGroups.?.get().?, "get", .{ Inheritance.cast(?Object, orientationData.?.ORIENTATION_SENSOR_INPUT) }));
            if (inGameExclusiveOrientationSensorVectorCanBeNull == null) {
                _ = self.addToInGameMenu();
            } else {
                const inGameExclusiveOrientationSensorVector: ?*BasicArrayList = Inheritance.cast(?*BasicArrayList, inGameExclusiveOrientationSensorVectorCanBeNull);
                if (inGameExclusiveOrientationSensorVector.?.size() == 0) {
                    _ = self.addToInGameMenu();
                }
            }
        }
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        if (Inheritance.call(features.?, "isFeature", .{ TouchFeatureFactory.getInstance().?.SHOW_SCREEN_BUTTONS }) or Inheritance.call(features.?, "isFeature", .{ TouchFeatureFactory.getInstance().?.AUTO_HIDE_SHOW_SCREEN_BUTTONS }) or Inheritance.call(features.?, "isFeature", .{ TouchFeatureFactory.getInstance().?.HIDE_SCREEN_BUTTONS })) {
            const exclusiveScreenButtonsVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            const touchFeatureFactory: ?*TouchFeatureFactory = Inheritance.upcast(?*TouchFeatureFactory, TouchFeatureFactory.getInstance());
            _ = Inheritance.call(exclusiveScreenButtonsVector.?, "add", .{ touchFeatureFactory.?.AUTO_HIDE_SHOW_SCREEN_BUTTONS });
            _ = Inheritance.call(exclusiveScreenButtonsVector.?, "add", .{ touchFeatureFactory.?.SHOW_SCREEN_BUTTONS });
            _ = Inheritance.call(exclusiveScreenButtonsVector.?, "add", .{ touchFeatureFactory.?.HIDE_SCREEN_BUTTONS });
            _ = Inheritance.call(inGameFeatureChoiceGroups.?, "add", .{ LABEL, exclusiveScreenButtonsVector });
        }
    }
    

    pub fn addToInGameMenu(self: *Self) void {
        _ = self;
        const orientationData: ?*OrientationData = Inheritance.upcast(?*OrientationData, OrientationData.getInstance());
        const inGameExclusiveOrientationSensorVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(inGameExclusiveOrientationSensorVector.?, "add", .{ SensorFeatureFactory.getInstance().?.ORIENTATION_SENSORS });
        _ = Inheritance.call(inGameExclusiveOrientationSensorVector.?, "add", .{ SensorFeatureFactory.getInstance().?.NO_ORIENTATION });
        _ = Inheritance.call(InGameFeatureChoiceGroups.getExclusiveInstance().?, "add", .{ orientationData.?.ORIENTATION_SENSOR_INPUT, inGameExclusiveOrientationSensorVector });
    }
    

    pub fn isAny(self: *Self) bool {
        _ = self;
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        const touchFeatureFactory: ?*TouchFeatureFactory = Inheritance.upcast(?*TouchFeatureFactory, TouchFeatureFactory.getInstance());
        if (Inheritance.call(features.?, "isFeature", .{ touchFeatureFactory.?.SHOW_SCREEN_BUTTONS }) or Inheritance.call(features.?, "isFeature", .{ touchFeatureFactory.?.AUTO_HIDE_SHOW_SCREEN_BUTTONS }) or Inheritance.call(features.?, "isFeature", .{ touchFeatureFactory.?.HIDE_SCREEN_BUTTONS })) {
            return true;
        }
        const exclusiveOrientationSensorVector: ?*BasicArrayList = Inheritance.cast(?*BasicArrayList, Inheritance.call(Inheritance.receiverOf(GameFeatureChoiceGroups.getExclusiveInstance().?, "get").get().?, "get", .{ Inheritance.cast(?Object, OrientationData.getInstance().?.ORIENTATION_SENSOR_INPUT) }));
        if (exclusiveOrientationSensorVector != null) {
            return true;
        }
        return false;
    }
};


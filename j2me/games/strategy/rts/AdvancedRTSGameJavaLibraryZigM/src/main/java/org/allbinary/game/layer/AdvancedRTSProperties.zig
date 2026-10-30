// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NoShakeAnimationListener = @import("org/allbinary/animation/transition/shake/NoShakeAnimationListener.zig").NoShakeAnimationListener;
const ShakeAnimationListener = @import("org/allbinary/animation/transition/shake/ShakeAnimationListener.zig").ShakeAnimationListener;
const ShakeAnimationListenerFactory = @import("org/allbinary/animation/transition/shake/ShakeAnimationListenerFactory.zig").ShakeAnimationListenerFactory;
const GameConfigurationCentral = @import("org/allbinary/game/configuration/GameConfigurationCentral.zig").GameConfigurationCentral;
const TickableInterface = @import("org/allbinary/game/tick/TickableInterface.zig").TickableInterface;
const AllBinaryNoVibration = @import("org/allbinary/media/AllBinaryNoVibration.zig").AllBinaryNoVibration;
const AllBinaryVibration = @import("org/allbinary/media/AllBinaryVibration.zig").AllBinaryVibration;
const AllBinaryVibrationME = @import("org/allbinary/media/AllBinaryVibrationME.zig").AllBinaryVibrationME;
const WaypointBehaviorBase = @import("org/allbinary/game/layer/WaypointBehaviorBase.zig").WaypointBehaviorBase;

pub const AdvancedRTSProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.AdvancedRTSProperties";
    shakeListener: ?*ShakeAnimationListener = null,
    vibration: ?*AllBinaryVibrationME = null,
    duration: i32 = 0,
    waypointBehaviorBase: ?*TickableInterface = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
    }
    

    pub fn createPropertiesSimulated() ?*AdvancedRTSProperties {
        return Inheritance.callStatic(AdvancedRTSProperties, "create4", .{ NoShakeAnimationListener.NO_SHAKE_ANIMATION_LISTENER, AllBinaryNoVibration.NO_VIBRATION, 0, WaypointBehaviorBase.create() });
    }
    

    pub fn createProperties() ?*AdvancedRTSProperties {
        return Inheritance.callStatic(AdvancedRTSProperties, "create4", .{ ShakeAnimationListenerFactory.getInstance(), AllBinaryVibration.getInstance(), Inheritance.receiverOf(Inheritance.receiverOf(GameConfigurationCentral.getInstance().?.VIBRATION.?, "getValue").getValue().?, "intValue").intValue() * 100, WaypointBehaviorBase.create() });
    }
    

    pub fn create4(shakeListener: ?*ShakeAnimationListener, vibration: ?*AllBinaryVibrationME, duration: i32, waypointBehaviorBase: ?*TickableInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.shakeListener = shakeListener;
        this.vibration = vibration;
        this.duration = duration;
        this.waypointBehaviorBase = waypointBehaviorBase;
        return this;
    }
};


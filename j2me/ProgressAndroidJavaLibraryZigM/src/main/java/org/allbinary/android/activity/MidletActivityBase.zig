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
// package org.allbinary.android.activity

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Activity = @import("android/app/Activity.zig").Activity;
const MotionEvent = @import("android/view/MotionEvent.zig").MotionEvent;
const View = @import("android/view/View.zig").View;
const GenericMotionEventVerifyInterface = @import("org/allbinary/android/GenericMotionEventVerifyInterface.zig").GenericMotionEventVerifyInterface;
const GameFeatureEvent = @import("org/allbinary/game/configuration/event/GameFeatureEvent.zig").GameFeatureEvent;
const GameFeatureListenerInterface = @import("org/allbinary/game/configuration/event/GameFeatureListenerInterface.zig").GameFeatureListenerInterface;
const GameInitializedEvent = @import("org/allbinary/game/configuration/event/GameInitializedEvent.zig").GameInitializedEvent;
const GameInitializedListenerInterface = @import("org/allbinary/game/configuration/event/GameInitializedListenerInterface.zig").GameInitializedListenerInterface;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const KeyInputViewCompositeInterface = @import("org/allbinary/android/activity/KeyInputViewCompositeInterface.zig").KeyInputViewCompositeInterface;
const SimpleProgressActivityInterface = @import("org/allbinary/android/activity/SimpleProgressActivityInterface.zig").SimpleProgressActivityInterface;

pub const MidletActivityBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.activity.MidletActivityBase";
    pub const java_interfaces = .{ SimpleProgressActivityInterface, KeyInputViewCompositeInterface };
    base: Activity = undefined,
    // Implements GameFeatureListenerInterface
    // Implements GameInitializedListenerInterface
    // Implements SimpleProgressActivityInterface
    // Implements KeyInputViewCompositeInterface
    // Implements GenericMotionEventVerifyInterface

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Activity.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn onGameFeatureChange(self: *Self, gameFeatureEvent: ?*GameFeatureEvent) void {
        _ = gameFeatureEvent;
        _ = self;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = self;
    }
    

    pub fn onGameInitialized(self: *Self, gameInitializedEvent: ?*GameInitializedEvent) void {
        _ = gameInitializedEvent;
        _ = self;
    }
    

    // throws Exception
    pub fn onSetProgress(self: *Self, value: i32, text: ?*String) void {
        _ = value;
        _ = text;
        _ = self;
    }
    

    // throws Exception
    pub fn onDismissProgress(self: *Self, animationSequence: []i32) void {
        _ = animationSequence;
        _ = self;
    }
    

    // throws Exception
    pub fn onShowProgress(self: *Self, indeterminate: bool, animationSequence: []i32) void {
        _ = indeterminate;
        _ = animationSequence;
        _ = self;
    }
    

    pub fn getRootView(self: *Self) ?*View {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getView(self: *Self) ?*View {
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn setKeyInputView(self: *Self, keyInputView: ?*View) void {
        _ = keyInputView;
        _ = self;
    }
    

    pub fn onGenericMotionEvent(self: *Self, event: ?*MotionEvent) bool {
        _ = event;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};


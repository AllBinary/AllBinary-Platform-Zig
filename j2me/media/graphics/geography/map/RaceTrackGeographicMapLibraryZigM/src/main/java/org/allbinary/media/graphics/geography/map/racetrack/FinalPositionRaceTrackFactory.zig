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
// package org.allbinary.media.graphics.geography.map.racetrack

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const FinalPositionRaceTrackFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory";
    pub const FIRST_POSITION: i32 = 1;
    var index: i32 = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        index = FinalPositionRaceTrackFactory.FIRST_POSITION;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() i32 {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        return value_N65708: { const value_N65708_value = FinalPositionRaceTrackFactory.index; FinalPositionRaceTrackFactory.index += 1; break :value_N65708 value_N65708_value; };
    }
    

    pub fn reset() void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        FinalPositionRaceTrackFactory.index = Inheritance.upcast(@TypeOf(FinalPositionRaceTrackFactory.index), FinalPositionRaceTrackFactory.FIRST_POSITION);
    }
};


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
// package org.allbinary.game.input.mapping.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const InputMappingEvent = @import("org/allbinary/game/input/mapping/event/InputMappingEvent.zig").InputMappingEvent;
const InputMappingEventListenerInterface = @import("org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface.zig").InputMappingEventListenerInterface;

pub const NullInputMappingEventListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.mapping.event.NullInputMappingEventListener";
    pub const java_interfaces = .{ InputMappingEventListenerInterface };
    // Implements InputMappingEventListenerInterface
    pub var NULL_INPUT_MAPPING_EVENT_LISTENER: ?*NullInputMappingEventListener = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_INPUT_MAPPING_EVENT_LISTENER = NullInputMappingEventListener.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn onInputMappingEvent(self: *Self, inputMappingEvent: ?*InputMappingEvent) void {
        _ = inputMappingEvent;
        _ = self;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = self;
    }
};


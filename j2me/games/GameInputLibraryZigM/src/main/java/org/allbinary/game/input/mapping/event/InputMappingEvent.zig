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
// package org.allbinary.game.input.mapping.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const InputToGameKeyMapping = @import("org/allbinary/game/input/mapping/InputToGameKeyMapping.zig").InputToGameKeyMapping;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;

pub const InputMappingEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.mapping.event.InputMappingEvent";
    base: AllBinaryEventObject = undefined,
    inputToGameKeyMapping: ?*InputToGameKeyMapping = null,

    fn initFields(this: *Self) void {
        this.inputToGameKeyMapping = Inheritance.upcast(?*InputToGameKeyMapping, InputToGameKeyMapping.getNullInstance());
    }
    

    pub fn create1(anyType: ?Object) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ anyType }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setInputToGameKeyMapping(self: *Self, inputToGameKeyMapping: ?*InputToGameKeyMapping) void {
        self.inputToGameKeyMapping = inputToGameKeyMapping;
    }
    

    pub fn getInputToGameKeyMapping(self: *Self) ?*InputToGameKeyMapping {
        return self.inputToGameKeyMapping;
    }
};


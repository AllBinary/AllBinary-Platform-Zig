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
// package org.allbinary.graphics.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;
const PlayerGameInputCompositeInterface = @import("org/allbinary/game/input/PlayerGameInputCompositeInterface.zig").PlayerGameInputCompositeInterface;

pub const InputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.InputProcessor";
    base: Processor = undefined,
    playerGameInputCompositeInterface: ?*PlayerGameInputCompositeInterface = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(playerGameInputCompositeInterface: ?*PlayerGameInputCompositeInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Processor.create().*;
        this.initFields();
        this.playerGameInputCompositeInterface = playerGameInputCompositeInterface;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self) void {
        _ = Inheritance.receiverOf(Inheritance.receiver(self.playerGameInputCompositeInterface.?, "getPlayerGameInput").getPlayerGameInput().?, "update").update();
    }
};


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
// package org.allbinary.game.combat.destroy.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryGameCanvas = @import("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.zig").AllBinaryGameCanvas;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const AllBinaryEventObjectFactoryInterface = @import("org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface.zig").AllBinaryEventObjectFactoryInterface;
const DestroyedEvent = @import("org/allbinary/game/combat/destroy/event/DestroyedEvent.zig").DestroyedEvent;

pub const DestroyEventFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.combat.destroy.event.DestroyEventFactory";
    combatGameCanvas: ?*AllBinaryGameCanvas = null,
    // Implements AllBinaryEventObjectFactoryInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(combatGameCanvas: ?*AllBinaryGameCanvas) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.combatGameCanvas = combatGameCanvas;
        return this;
    }
    

    pub fn getInstance(self: *Self) ?*AllBinaryEventObject {
        return Inheritance.upcast(?*AllBinaryEventObject, Inheritance.callStatic(DestroyedEvent, "create1", .{ self.combatGameCanvas }));
    }
};


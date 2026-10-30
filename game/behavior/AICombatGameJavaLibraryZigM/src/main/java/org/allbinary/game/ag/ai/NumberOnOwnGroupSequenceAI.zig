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
// package org.allbinary.game.ag.ai

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ArtificialIntelligenceInterface = @import("org/allbinary/ai/ArtificialIntelligenceInterface.zig").ArtificialIntelligenceInterface;
const SequenceAI = @import("org/allbinary/game/ag/ai/sequence/SequenceAI.zig").SequenceAI;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const GroupLayerManagerListener = @import("org/allbinary/game/layer/identification/GroupLayerManagerListener.zig").GroupLayerManagerListener;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const NumberOnOwnGroupSequenceAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.NumberOnOwnGroupSequenceAI";
    base: SequenceAI = undefined,
    numberOnSameTeam: []?*Integer = &.{},

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create4(numberOnSameTeam: []?*Integer, artificialIntelligenceInterface: []?*ArtificialIntelligenceInterface, ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(SequenceAI, "create3", .{ artificialIntelligenceInterface, ownerLayerInterface, gameInput }).*;
        this.initFields();
        this.numberOnSameTeam = numberOnSameTeam;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAI(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        const layerInterface: ?*AllBinaryLayer = Inheritance.upcast(?*AllBinaryLayer, Inheritance.receiver(self, "getOwnerLayerInterface").getOwnerLayerInterface());
        const index: i32 = Inheritance.receiver(self, "getIndex").getIndex();
        if (@as(i32, @intCast(self.numberOnSameTeam.len)) > index) {
            const size: i32 = Inheritance.call(GroupLayerManagerListener.getInstance().?, "getGroupSizeFromInterface", .{ layerInterface });
            if (self.numberOnSameTeam[@intCast(index)].?.intValue() > size) {
                _ = Inheritance.receiver(self, "next").next();
            }
        }
        _ = Inheritance.call(&self.base, "processAI", .{ allBinaryLayerManager });
    }
};


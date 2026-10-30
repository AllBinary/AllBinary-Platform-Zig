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
// package org.allbinary.game.ag.ai.sequence

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ArtificialIntelligence = @import("org/allbinary/ai/ArtificialIntelligence.zig").ArtificialIntelligence;
const ArtificialIntelligenceInterface = @import("org/allbinary/ai/ArtificialIntelligenceInterface.zig").ArtificialIntelligenceInterface;
const ArtificialIntelligenceTransitionInterface = @import("org/allbinary/ai/ArtificialIntelligenceTransitionInterface.zig").ArtificialIntelligenceTransitionInterface;
const ArrayAI = @import("org/allbinary/game/ag/ai/ArrayAI.zig").ArrayAI;
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const SequenceAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.sequence.SequenceAI";
    base: ArrayAI = undefined,
    index: i32 = 0,
    const SEQUENCE_AI: ?*String = String.literal("Sequence AI");

    fn initFields(this: *Self) void {
        this.index = 0;
    }
    

    pub fn create3(artificialIntelligenceInterfaceArray: []?*ArtificialIntelligenceInterface, ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ArrayAI, "create3", .{ artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAI(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = Inheritance.call(Inheritance.receiver(self, "getArtificialIntelligenceInterface").getArtificialIntelligenceInterface()[@intCast(self.index)].?, "processAI", .{ allBinaryLayerManager });
    }
    

    pub fn next(self: *Self) void {
        self.index += 1;
        const artificialIntelligenceInterface: ?*ArtificialIntelligenceInterface = Inheritance.upcast(?*ArtificialIntelligenceInterface, self.getSelectedArtificialIntelligenceInterface());
        if (Object.same(Inheritance.receiver(artificialIntelligenceInterface.?, "getId").getId(), ArtificialIntelligence.AI_ID)) {
            const artificialIntelligenceTransitionInterface: ?*ArtificialIntelligenceTransitionInterface = Inheritance.cast(?*ArtificialIntelligenceTransitionInterface, artificialIntelligenceInterface);
            _ = artificialIntelligenceTransitionInterface.?.transition();
        }
    }
    

    pub fn getIndex(self: *Self) i32 {
        return self.index;
    }
    

    pub fn setIndex(self: *Self, index: i32) void {
        self.index = index;
    }
    

    pub fn getSelectedArtificialIntelligenceInterface(self: *Self) ?*ArtificialIntelligenceInterface {
        return Inheritance.upcast(?*ArtificialIntelligenceInterface, Inheritance.receiver(self, "getArtificialIntelligenceInterface").getArtificialIntelligenceInterface()[@intCast(self.index)]);
    }
    

    pub fn getName(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, SequenceAI.SEQUENCE_AI);
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.base.toString() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Selected AI: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ self.getSelectedArtificialIntelligenceInterface() }) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};


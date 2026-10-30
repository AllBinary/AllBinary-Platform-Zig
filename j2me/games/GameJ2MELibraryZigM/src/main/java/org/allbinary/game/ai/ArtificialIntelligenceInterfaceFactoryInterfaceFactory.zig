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
// package org.allbinary.game.ai

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const ArtificialIntelligenceInterfaceFactoryInterface = @import("org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface.zig").ArtificialIntelligenceInterfaceFactoryInterface;
const BasicAI = @import("org/allbinary/game/ai/BasicAI.zig").BasicAI;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const ArtificialIntelligenceInterfaceFactoryInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory";
    list: ?*BasicArrayList = null,
    var SINGLETON: ?*ArtificialIntelligenceInterfaceFactoryInterfaceFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = ArtificialIntelligenceInterfaceFactoryInterfaceFactory.create();
    }

    fn initFields(this: *Self) void {
        this.list = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn clear(self: *Self) void {
        self.list = Inheritance.upcast(@TypeOf(self.list), BasicArrayListD.create());
    }
    

    pub fn getInstance() ?*ArtificialIntelligenceInterfaceFactoryInterfaceFactory {
        return Inheritance.upcast(?*ArtificialIntelligenceInterfaceFactoryInterfaceFactory, ArtificialIntelligenceInterfaceFactoryInterfaceFactory.SINGLETON);
    }
    

    pub fn getInstanceFromCollection(self: *Self, hashtable: ?*ABHashtable) ?*ArtificialIntelligenceInterfaceFactoryInterface {
        const typeInteger: ?*Integer = Inheritance.cast(?*Integer, Inheritance.call(hashtable.?, "get", .{ Inheritance.cast(?Object, BasicAI.ID) }));
        const @"type": i32 = typeInteger.?.intValue();
        const artificialIntelligenceInterfaceFactoryInterface: ?*ArtificialIntelligenceInterfaceFactoryInterface = Inheritance.cast(?*ArtificialIntelligenceInterfaceFactoryInterface, self.list.?.objectArray[@intCast(@"type" - 1)]);
        return artificialIntelligenceInterfaceFactoryInterface;
    }
    

    pub fn add(self: *Self, artificialIntelligenceInterfaceFactoryInterface: ?*ArtificialIntelligenceInterfaceFactoryInterface) void {
        _ = Inheritance.call(self.list.?, "add", .{ artificialIntelligenceInterfaceFactoryInterface });
    }
};


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
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const NumberInSameGroupSequence = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.NumberInSameGroupSequence";
    NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO: ?*Integer = null,
    NUMBER_ON_SAME_TEAM_SEQUENCE_ONE: ?*Integer = null,
    NUMBER_ON_SAME_TEAM_SEQUENCE_TWO: ?*Integer = null,
    NUMBER_ON_SAME_TEAM_SEQUENCE_THREE: ?*Integer = null,
    NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR: ?*Integer = null,
    NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE: ?*Integer = null,
    NUMBER_ON_SAME_TEAM_SEQUENCE_SIX: ?*Integer = null,
    NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN: ?*Integer = null,
    NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT: ?*Integer = null,
    NUMBER_ON_SAME_TEAM_SEQUENCE_NINE: ?*Integer = null,
    NUMBER_ON_SAME_TEAM_SEQUENCE: []?*Integer = &.{},

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
        
        
        
        
        
        
    }
    

    pub fn getInstance() ?*NumberInSameGroupSequence {
        return NumberInSameGroupSequence.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO = Inheritance.upcast(@TypeOf(this.NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 100 }));
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_ONE = Inheritance.upcast(@TypeOf(this.NUMBER_ON_SAME_TEAM_SEQUENCE_ONE), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 101 }));
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_TWO = Inheritance.upcast(@TypeOf(this.NUMBER_ON_SAME_TEAM_SEQUENCE_TWO), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 102 }));
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_THREE = Inheritance.upcast(@TypeOf(this.NUMBER_ON_SAME_TEAM_SEQUENCE_THREE), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 103 }));
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR = Inheritance.upcast(@TypeOf(this.NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 104 }));
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE = Inheritance.upcast(@TypeOf(this.NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 105 }));
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_SIX = Inheritance.upcast(@TypeOf(this.NUMBER_ON_SAME_TEAM_SEQUENCE_SIX), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 106 }));
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN = Inheritance.upcast(@TypeOf(this.NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 107 }));
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT = Inheritance.upcast(@TypeOf(this.NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 108 }));
        this.NUMBER_ON_SAME_TEAM_SEQUENCE_NINE = Inheritance.upcast(@TypeOf(this.NUMBER_ON_SAME_TEAM_SEQUENCE_NINE), Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ 109 }));
        this.NUMBER_ON_SAME_TEAM_SEQUENCE = Inheritance.upcast(@TypeOf(this.NUMBER_ON_SAME_TEAM_SEQUENCE), @constCast(&[_]?*Integer{ this.NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO, this.NUMBER_ON_SAME_TEAM_SEQUENCE_ONE, this.NUMBER_ON_SAME_TEAM_SEQUENCE_THREE, this.NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR, this.NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE, this.NUMBER_ON_SAME_TEAM_SEQUENCE_SIX, this.NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN, this.NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT, this.NUMBER_ON_SAME_TEAM_SEQUENCE_NINE })[0..]);
        return this;
    }
};


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
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const InputProbability = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.InputProbability";
    likelyhoodIntegerArray: [][]?*Integer = &.{},
    repeatLikelyhoodIntegerArray: []?*Integer = &.{},
    max: i32 = 0,
    timeDelayHelper: ?*TimeDelayHelper = null,
    pub var INPUT_PROBABILITY: ?*Integer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        INPUT_PROBABILITY = Inheritance.upcast(?*Integer, Inheritance.call(SmallIntegerSingletonFactory.getInstance().?, "getAt", .{ 0 }));
    }

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
    }
    

    pub fn create4(likelyhoodIntegerArray: [][]?*Integer, repeatLikelyhoodIntegerArray: []?*Integer, max: i32, timeDelayHelper: ?*TimeDelayHelper) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.likelyhoodIntegerArray = likelyhoodIntegerArray;
        this.repeatLikelyhoodIntegerArray = repeatLikelyhoodIntegerArray;
        this.max = max;
        this.timeDelayHelper = timeDelayHelper;
        return this;
    }
    

    pub fn getLikelyhoodIntegerArray(self: *Self) [][]?*Integer {
        return self.likelyhoodIntegerArray;
    }
    

    pub fn getRepeatLikelyhoodIntegerArray(self: *Self) []?*Integer {
        return self.repeatLikelyhoodIntegerArray;
    }
    

    pub fn getMax(self: *Self) i32 {
        return self.max;
    }
    

    pub fn getTimeDelayHelper(self: *Self) ?*TimeDelayHelper {
        return self.timeDelayHelper;
    }
    

    pub fn toHashtable(self: *Self) ?*ABHashtable {
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        _ = Inheritance.call(hashtable.?, "put", .{ InputProbability.INPUT_PROBABILITY, self });
        return hashtable;
    }
};


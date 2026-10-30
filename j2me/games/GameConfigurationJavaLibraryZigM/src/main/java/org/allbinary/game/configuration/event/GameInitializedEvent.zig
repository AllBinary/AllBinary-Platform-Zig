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
// package org.allbinary.game.configuration.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ResourceLoadingLevel = @import("org/allbinary/game/resource/ResourceLoadingLevel.zig").ResourceLoadingLevel;
const ResourceLoadingLevelFactory = @import("org/allbinary/game/resource/ResourceLoadingLevelFactory.zig").ResourceLoadingLevelFactory;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;

pub const GameInitializedEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.event.GameInitializedEvent";
    base: AllBinaryEventObject = undefined,
    resourceLoadingLevel: ?*ResourceLoadingLevel = null,
    level: i32 = 0,

    fn initFields(this: *Self) void {
        this.resourceLoadingLevel = Inheritance.upcast(?*ResourceLoadingLevel, ResourceLoadingLevelFactory.getInstance().?.LEVEL);
        this.level = 0;
    }
    

    pub fn create1(anyType: ?Object) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ anyType }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setLevel(self: *Self, level: i32) void {
        self.level = level;
        self.resourceLoadingLevel = Inheritance.upcast(@TypeOf(self.resourceLoadingLevel), ResourceLoadingLevelFactory.getInstance().?.LEVEL);
    }
    

    pub fn getLevel(self: *Self) i32 {
        return self.level;
    }
    

    pub fn setResourceLoadingLevel(self: *Self, resourceLoadingLevel: ?*ResourceLoadingLevel) void {
        self.resourceLoadingLevel = resourceLoadingLevel;
        self.level = self.resourceLoadingLevel.?.getLevel();
    }
    

    pub fn getResourceLoadingLevel(self: *Self) ?*ResourceLoadingLevel {
        return self.resourceLoadingLevel;
    }
};


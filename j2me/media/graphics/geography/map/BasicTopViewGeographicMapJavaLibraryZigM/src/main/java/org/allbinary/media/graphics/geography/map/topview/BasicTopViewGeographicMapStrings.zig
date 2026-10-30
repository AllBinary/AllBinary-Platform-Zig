// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.media.graphics.geography.map.topview

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const BasicTopViewGeographicMapStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings";
    DEFAULT: ?*String = null,
    OTHER: ?*String = null,
    WALL: ?*String = null,
    OFF_MAP: ?*String = null,
    FLOOR: ?*String = null,
    DOOR: ?*String = null,
    STAIRS_UP: ?*String = null,
    STAIRS_DOWN: ?*String = null,
    var instance: ?*BasicTopViewGeographicMapStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BasicTopViewGeographicMapStrings.create();
    }

    fn initFields(this: *Self) void {
        this.DEFAULT = String.literal("Default");
        this.OTHER = String.literal("Other");
        this.WALL = String.literal("Wall");
        this.OFF_MAP = String.literal("OffMap");
        this.FLOOR = String.literal("Floor");
        this.DOOR = String.literal("Door");
        this.STAIRS_UP = String.literal("StairsUp");
        this.STAIRS_DOWN = String.literal("StairsDown");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*BasicTopViewGeographicMapStrings {
        return Inheritance.upcast(?*BasicTopViewGeographicMapStrings, BasicTopViewGeographicMapStrings.instance);
    }
};


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
// package org.allbinary.logic.communication.log.config.type

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const LogConfigType = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.config.type.LogConfigType";
    name: ?*String = null,
    description: ?*String = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(name: ?*String, description: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        this.description = description;
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getDescription(self: *Self) ?*String {
        return self.description;
    }
    

    pub fn setName(self: *Self, value: ?*String) void {
        self.name = value;
    }
    

    pub fn setDescription(self: *Self, value: ?*String) void {
        self.description = value;
    }
};


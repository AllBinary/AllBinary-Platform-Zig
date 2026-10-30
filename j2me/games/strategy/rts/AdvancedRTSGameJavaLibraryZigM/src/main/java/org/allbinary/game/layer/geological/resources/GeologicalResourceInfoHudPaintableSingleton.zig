// 
// AllBinary Open License Version 1 
// Copyright (c) 2006 AllBinary 
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
// package org.allbinary.game.layer.geological.resources

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GeologicalResourceInfoHudPaintable = @import("org/allbinary/game/layer/geological/resources/GeologicalResourceInfoHudPaintable.zig").GeologicalResourceInfoHudPaintable;

pub const GeologicalResourceInfoHudPaintableSingleton = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.geological.resources.GeologicalResourceInfoHudPaintableSingleton";
    var instance: ?*GeologicalResourceInfoHudPaintable = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GeologicalResourceInfoHudPaintable.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*GeologicalResourceInfoHudPaintable {
        return Inheritance.upcast(?*GeologicalResourceInfoHudPaintable, GeologicalResourceInfoHudPaintableSingleton.instance);
    }
};


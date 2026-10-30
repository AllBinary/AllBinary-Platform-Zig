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
// package org.allbinary

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MultiPlayerGameFeatureFactory = @import("org/allbinary/game/configuration/feature/MultiPlayerGameFeatureFactory.zig").MultiPlayerGameFeatureFactory;
const MyCanvas = @import("org/allbinary/graphics/displayable/MyCanvas.zig").MyCanvas;

pub const PostGameCommandFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.PostGameCommandFactory";
    var instance: ?*PostGameCommandFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PostGameCommandFactory.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*PostGameCommandFactory {
        return Inheritance.upcast(?*PostGameCommandFactory, PostGameCommandFactory.instance);
    }
    

    pub fn addCommands(self: *Self, canvas: ?*MyCanvas) void {
        _ = self;
        _ = Inheritance.call(MultiPlayerGameFeatureFactory.getInstance().?, "addCommands", .{ canvas });
    }
};


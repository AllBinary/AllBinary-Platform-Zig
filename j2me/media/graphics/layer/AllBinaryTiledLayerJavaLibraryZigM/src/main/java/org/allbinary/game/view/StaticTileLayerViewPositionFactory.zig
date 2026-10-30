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
// package org.allbinary.game.view

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const ViewPositionFactoryInterface = @import("org/allbinary/view/ViewPositionFactoryInterface.zig").ViewPositionFactoryInterface;
const StaticTileLayerIntoPositionViewPosition = @import("org/allbinary/game/view/StaticTileLayerIntoPositionViewPosition.zig").StaticTileLayerIntoPositionViewPosition;

pub const StaticTileLayerViewPositionFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.view.StaticTileLayerViewPositionFactory";
    // Implements ViewPositionFactoryInterface

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self) ?*ViewPositionBase {
        _ = self;
        return Inheritance.upcast(?*ViewPositionBase, StaticTileLayerIntoPositionViewPosition.create());
    }
};


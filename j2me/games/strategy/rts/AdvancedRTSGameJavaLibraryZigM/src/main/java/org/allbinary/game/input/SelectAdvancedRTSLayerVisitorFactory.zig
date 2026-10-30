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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Visitor = @import("org/allbinary/logic/util/visitor/Visitor.zig").Visitor;
const SelectAdvancedRTSLayerVisitor = @import("org/allbinary/game/input/SelectAdvancedRTSLayerVisitor.zig").SelectAdvancedRTSLayerVisitor;
const SelectRTSLayerVisitorFactoryInterface = @import("org/allbinary/game/input/SelectRTSLayerVisitorFactoryInterface.zig").SelectRTSLayerVisitorFactoryInterface;
const SelectedRTSLayersPlayerGameInput = @import("org/allbinary/game/input/SelectedRTSLayersPlayerGameInput.zig").SelectedRTSLayersPlayerGameInput;

pub const SelectAdvancedRTSLayerVisitorFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.SelectAdvancedRTSLayerVisitorFactory";
    pub const java_interfaces = .{ SelectRTSLayerVisitorFactoryInterface };
    // Implements SelectRTSLayerVisitorFactoryInterface
    var instance: ?*SelectAdvancedRTSLayerVisitorFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SelectAdvancedRTSLayerVisitorFactory.create();
    }
    

    pub fn getInstance() ?*SelectAdvancedRTSLayerVisitorFactory {
        return Inheritance.upcast(?*SelectAdvancedRTSLayerVisitorFactory, SelectAdvancedRTSLayerVisitorFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn create(self: *Self, selectedRTSLayersPlayerGameInput: ?*SelectedRTSLayersPlayerGameInput) ?*Visitor {
        _ = self;
        return Inheritance.upcast(?*Visitor, Inheritance.callStatic(SelectAdvancedRTSLayerVisitor, "create1", .{ selectedRTSLayersPlayerGameInput }));
    }
};


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
// package org.allbinary.game.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
// const NullCanvas = @import("javax/microedition/lcdui/NullCanvas.zig").NullCanvas;
const AllBinaryGameLayerManager = @import("org/allbinary/game/layer/AllBinaryGameLayerManager.zig").AllBinaryGameLayerManager;

pub const ABToGBUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.canvas.ABToGBUtil";
    abCanvas: ?*Canvas = null,
    allBinaryGameLayerManager: ?*AllBinaryGameLayerManager = null,
    var instance: ?*ABToGBUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ABToGBUtil.create();
    }

    fn initFields(this: *Self) void {
        this.abCanvas = Inheritance.upcast(?*Canvas, NullCanvas.NULL_CANVAS);
        this.allBinaryGameLayerManager = Inheritance.upcast(?*AllBinaryGameLayerManager, AllBinaryGameLayerManager.getNullInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*ABToGBUtil {
        return Inheritance.upcast(?*ABToGBUtil, ABToGBUtil.instance);
    }
};


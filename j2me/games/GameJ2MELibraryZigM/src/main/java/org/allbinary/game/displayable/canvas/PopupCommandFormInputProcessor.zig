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
// package org.allbinary.game.displayable.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MyCanvas = @import("org/allbinary/graphics/displayable/MyCanvas.zig").MyCanvas;
const ScrollSelectionForm = @import("org/allbinary/graphics/form/ScrollSelectionForm.zig").ScrollSelectionForm;
const MotionGestureEvent = @import("org/allbinary/input/motion/gesture/observer/MotionGestureEvent.zig").MotionGestureEvent;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const CommandFormInputProcessor = @import("org/allbinary/game/displayable/canvas/CommandFormInputProcessor.zig").CommandFormInputProcessor;
const PopupMenuInputProcessor = @import("org/allbinary/game/displayable/canvas/PopupMenuInputProcessor.zig").PopupMenuInputProcessor;

pub const PopupCommandFormInputProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor";
    base: CommandFormInputProcessor = undefined,
    

    pub fn create5(gameKeyEventList: ?*BasicArrayList, playerInputId: i32, gameCanvas: ?*MyCanvas, form: ?*ScrollSelectionForm, popupMenuInputProcessor: ?*PopupMenuInputProcessor) *Self {
        _ = popupMenuInputProcessor;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CommandFormInputProcessor, "create4", .{ gameKeyEventList, playerInputId, gameCanvas, form }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processInput(self: *Self, key: i32) i32 {
        return Inheritance.call(&self.base, "processInput", .{ key });
    }
    

    // throws Exception
    pub fn processMotionInput(self: *Self, motionGestureEvent: ?*MotionGestureEvent) void {
        _ = Inheritance.call(&self.base, "processMotionInput", .{ motionGestureEvent });
    }
};


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
// package org.allbinary.input.motion.gesture.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CompleteMotionGestureInputEvent = @import("org/allbinary/game/input/CompleteMotionGestureInputEvent.zig").CompleteMotionGestureInputEvent;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const MotionGestureToMotionGestureActionAssociation = @import("org/allbinary/input/motion/gesture/MotionGestureToMotionGestureActionAssociation.zig").MotionGestureToMotionGestureActionAssociation;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const MotionGestureConfiguration = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration";
    diagonalMotionGestureAllowed: bool = false,
    diagonalTolerance: i32 = 0,
    minimumMotionGesture: i32 = 0,
    button: ?*String = null,
    color: ?*BasicColor = null,
    executingActions: bool = false,
    mouseButtonMask: i32 = 0,
    activeCommands: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.diagonalMotionGestureAllowed = true;
        this.diagonalTolerance = 7;
        this.minimumMotionGesture = 9;
        this.button = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.color = Inheritance.upcast(?*BasicColor, BasicColorFactory.getInstance().?.BLUE);
        this.executingActions = true;
        this.mouseButtonMask = 0;
        this.activeCommands = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn addMotionGestureAction(self: *Self, list: ?*BasicArrayList, commandAction: ?*CompleteMotionGestureInputEvent) void {
        _ = Inheritance.call(self.activeCommands.?, "add", .{ Inheritance.callStatic(MotionGestureToMotionGestureActionAssociation, "create2", .{ list, commandAction }) });
    }
    

    pub fn clearMotionGestureAction(self: *Self) void {
        _ = self.activeCommands.?.clear();
    }
    

    pub fn getAssociateCommandActionsList(self: *Self) ?*BasicArrayList {
        return self.activeCommands;
    }
    

    pub fn isDiagonalMotionGestureAllowed(self: *Self) bool {
        return self.diagonalMotionGestureAllowed;
    }
    

    pub fn isExecutingActionsAllowed(self: *Self) bool {
        return self.executingActions;
    }
    

    pub fn setExecutingActionsAllowed(self: *Self, executingActionAllowed: bool) void {
        self.executingActions = executingActionAllowed;
    }
    

    pub fn setDiagonalMotionGestureAllowed(self: *Self, diagonalMotionGestureAllowed: bool) void {
        self.diagonalMotionGestureAllowed = diagonalMotionGestureAllowed;
    }
    

    pub fn getDiagonalTolerance(self: *Self) i32 {
        return self.diagonalTolerance;
    }
    

    pub fn setDiagonalTolerance(self: *Self, diagonalTolerance: i32) void {
        self.diagonalTolerance = diagonalTolerance;
    }
    

    pub fn getMinimumMotionGesture(self: *Self) i32 {
        return self.minimumMotionGesture;
    }
    

    pub fn setMinimumMotionGesture(self: *Self, minimumMotionGesture: i32) void {
        self.minimumMotionGesture = minimumMotionGesture;
    }
    

    pub fn getButton(self: *Self) ?*String {
        return self.button;
    }
    

    pub fn setButton(self: *Self, button: ?*String) void {
        self.button = button;
    }
    

    pub fn getColor(self: *Self) ?*BasicColor {
        return self.color;
    }
    

    pub fn setColor(self: *Self, color: ?*BasicColor) void {
        self.color = color;
    }
    

    pub fn getMouseButtonMask(self: *Self) i32 {
        return self.mouseButtonMask;
    }
    

    pub fn setMouseButtonMask(self: *Self, mouseButtonMask: i32) void {
        self.mouseButtonMask = mouseButtonMask;
    }
};


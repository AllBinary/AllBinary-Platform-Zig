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
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const ItemStateListener = @import("javax/microedition/lcdui/ItemStateListener.zig").ItemStateListener;
const GameStateCompositeInterface = @import("org/allbinary/game/state/GameStateCompositeInterface.zig").GameStateCompositeInterface;
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;
const RunnableInterface = @import("org/allbinary/thread/RunnableInterface.zig").RunnableInterface;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;

// Java interface: an implementation is a pointer and a table of functions
pub const GameCanvasRunnableInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface";
    pointer: *anyopaque,
    object: Object,
    base: RunnableInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getTitleFn: *const fn (pointer: *anyopaque) ?*String,
    isInitializedFn: *const fn (pointer: *anyopaque) bool,
    isPausedFn: *const fn (pointer: *anyopaque) bool,
    unPauseFn: *const fn (pointer: *anyopaque) void,
    pauseFn: *const fn (pointer: *anyopaque) void,
    isHighScoreSubmittedFn: *const fn (pointer: *anyopaque) bool,
    setHighScoreSubmittedFn: *const fn (pointer: *anyopaque, highScoreSubmitted: bool) void,
    processGameOverFn: *const fn (pointer: *anyopaque) void,
    isGameOverFn: *const fn (pointer: *anyopaque) bool,
    initCommandsFn: *const fn (pointer: *anyopaque, cmdListener: ?*CommandListener) void,
    getCurrentStateHashtableFn: *const fn (pointer: *anyopaque) ?*ABHashtable,
    getLoadStateHashtableFn: *const fn (pointer: *anyopaque) ?*ABHashtable,
    setLoadStateHashtableFn: *const fn (pointer: *anyopaque, hashtable: ?*ABHashtable) void,
    getTypeFn: *const fn (pointer: *anyopaque) i32,

    pub fn getTitle(self: *Self) ?*String {
        return self.getTitleFn(self.pointer);
    }

    pub fn isInitialized(self: *Self) bool {
        return self.isInitializedFn(self.pointer);
    }

    pub fn isPaused(self: *Self) bool {
        return self.isPausedFn(self.pointer);
    }

    pub fn unPause(self: *Self) void {
        return self.unPauseFn(self.pointer);
    }

    pub fn pause(self: *Self) void {
        return self.pauseFn(self.pointer);
    }

    pub fn isHighScoreSubmitted(self: *Self) bool {
        return self.isHighScoreSubmittedFn(self.pointer);
    }

    pub fn setHighScoreSubmitted(self: *Self, highScoreSubmitted: bool) void {
        return self.setHighScoreSubmittedFn(self.pointer, highScoreSubmitted);
    }

    pub fn processGameOver(self: *Self) void {
        return self.processGameOverFn(self.pointer);
    }

    pub fn isGameOver(self: *Self) bool {
        return self.isGameOverFn(self.pointer);
    }

    pub fn initCommands(self: *Self, cmdListener: ?*CommandListener) void {
        return self.initCommandsFn(self.pointer, cmdListener);
    }

    pub fn getCurrentStateHashtable(self: *Self) ?*ABHashtable {
        return self.getCurrentStateHashtableFn(self.pointer);
    }

    pub fn getLoadStateHashtable(self: *Self) ?*ABHashtable {
        return self.getLoadStateHashtableFn(self.pointer);
    }

    pub fn setLoadStateHashtable(self: *Self, hashtable: ?*ABHashtable) void {
        return self.setLoadStateHashtableFn(self.pointer, hashtable);
    }

    pub fn getType(self: *Self) i32 {
        return self.getTypeFn(self.pointer);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn getTitle(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTitle").getTitle());
            }
            fn isInitialized(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isInitialized").isInitialized();
            }
            fn isPaused(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isPaused").isPaused();
            }
            fn unPause(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "unPause").unPause();
            }
            fn pause(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "pause").pause();
            }
            fn isHighScoreSubmitted(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isHighScoreSubmitted").isHighScoreSubmitted();
            }
            fn setHighScoreSubmitted(pointer: *anyopaque, highScoreSubmitted: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setHighScoreSubmitted").setHighScoreSubmitted(highScoreSubmitted);
            }
            fn processGameOver(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "processGameOver").processGameOver();
            }
            fn isGameOver(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isGameOver").isGameOver();
            }
            fn initCommands(pointer: *anyopaque, cmdListener: ?*CommandListener) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "initCommands").initCommands(cmdListener);
            }
            fn getCurrentStateHashtable(pointer: *anyopaque) ?*ABHashtable {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*ABHashtable, Inheritance.receiver(implementation, "getCurrentStateHashtable").getCurrentStateHashtable());
            }
            fn getLoadStateHashtable(pointer: *anyopaque) ?*ABHashtable {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*ABHashtable, Inheritance.receiver(implementation, "getLoadStateHashtable").getLoadStateHashtable());
            }
            fn setLoadStateHashtable(pointer: *anyopaque, hashtable: ?*ABHashtable) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setLoadStateHashtable").setLoadStateHashtable(hashtable);
            }
            fn getType(pointer: *anyopaque) i32 {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getType").getType();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = RunnableInterface.of(object).?.*, .toStringFn = Methods.toString, .getTitleFn = Methods.getTitle, .isInitializedFn = Methods.isInitialized, .isPausedFn = Methods.isPaused, .unPauseFn = Methods.unPause, .pauseFn = Methods.pause, .isHighScoreSubmittedFn = Methods.isHighScoreSubmitted, .setHighScoreSubmittedFn = Methods.setHighScoreSubmitted, .processGameOverFn = Methods.processGameOver, .isGameOverFn = Methods.isGameOver, .initCommandsFn = Methods.initCommands, .getCurrentStateHashtableFn = Methods.getCurrentStateHashtable, .getLoadStateHashtableFn = Methods.getLoadStateHashtable, .setLoadStateHashtableFn = Methods.setLoadStateHashtable, .getTypeFn = Methods.getType };
        return this;
    }
};


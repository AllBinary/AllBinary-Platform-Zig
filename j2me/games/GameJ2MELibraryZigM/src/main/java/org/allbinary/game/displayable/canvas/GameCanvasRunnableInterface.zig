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
const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
const ItemStateListener = @import("javax/microedition/lcdui/ItemStateListener.zig").ItemStateListener;
const GameStateCompositeInterface = @import("org/allbinary/game/state/GameStateCompositeInterface.zig").GameStateCompositeInterface;
const PaintableInterface = @import("org/allbinary/graphics/paint/PaintableInterface.zig").PaintableInterface;
const RunnableInterface = @import("org/allbinary/thread/RunnableInterface.zig").RunnableInterface;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const Exception = @import("java/lang/Exception.zig").Exception;

// Java interface: an implementation is a pointer and a table of functions
pub const GameCanvasRunnableInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface";
    pointer: *anyopaque,
    object: Object,
    base: RunnableInterface,
    base2: PaintableInterface,
    base3: ItemStateListener,
    base4: GameStateCompositeInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getTitleFn: *const fn (interface_pointer: *anyopaque) ?*String,
    isInitializedFn: *const fn (interface_pointer: *anyopaque) bool,
    isPausedFn: *const fn (interface_pointer: *anyopaque) bool,
    unPauseFn: *const fn (interface_pointer: *anyopaque) void,
    pauseFn: *const fn (interface_pointer: *anyopaque) void,
    isHighScoreSubmittedFn: *const fn (interface_pointer: *anyopaque) bool,
    setHighScoreSubmittedFn: *const fn (interface_pointer: *anyopaque, highScoreSubmitted: bool) void,
    processGameOverFn: *const fn (interface_pointer: *anyopaque) void,
    isGameOverFn: *const fn (interface_pointer: *anyopaque) bool,
    initCommandsFn: *const fn (interface_pointer: *anyopaque, cmdListener: ?*CommandListener) void,
    getCurrentStateHashtableFn: *const fn (interface_pointer: *anyopaque) ?*ABHashtable,
    getLoadStateHashtableFn: *const fn (interface_pointer: *anyopaque) ?*ABHashtable,
    setLoadStateHashtableFn: *const fn (interface_pointer: *anyopaque, hashtable: ?*ABHashtable) void,
    getTypeFn: *const fn (interface_pointer: *anyopaque) i32,

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
        const ImplementationType = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn getTitle(interface_pointer: *anyopaque) ?*String {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTitle").getTitle());
            }
            fn isInitialized(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "isInitialized").isInitialized();
            }
            fn isPaused(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "isPaused").isPaused();
            }
            fn unPause(interface_pointer: *anyopaque) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "unPause").unPause();
            }
            fn pause(interface_pointer: *anyopaque) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "pause").pause();
            }
            fn isHighScoreSubmitted(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "isHighScoreSubmitted").isHighScoreSubmitted();
            }
            fn setHighScoreSubmitted(interface_pointer: *anyopaque, highScoreSubmitted: bool) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "setHighScoreSubmitted", .{ highScoreSubmitted });
            }
            fn processGameOver(interface_pointer: *anyopaque) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "processGameOver").processGameOver();
            }
            fn isGameOver(interface_pointer: *anyopaque) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "isGameOver").isGameOver();
            }
            fn initCommands(interface_pointer: *anyopaque, cmdListener: ?*CommandListener) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "initCommands", .{ cmdListener });
            }
            fn getCurrentStateHashtable(interface_pointer: *anyopaque) ?*ABHashtable {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*ABHashtable, Inheritance.receiver(implementation, "getCurrentStateHashtable").getCurrentStateHashtable());
            }
            fn getLoadStateHashtable(interface_pointer: *anyopaque) ?*ABHashtable {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*ABHashtable, Inheritance.receiver(implementation, "getLoadStateHashtable").getLoadStateHashtable());
            }
            fn setLoadStateHashtable(interface_pointer: *anyopaque, hashtable: ?*ABHashtable) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "setLoadStateHashtable", .{ hashtable });
            }
            fn getType(interface_pointer: *anyopaque) i32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "getType").getType();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = RunnableInterface.of(object).?.*, .base2 = PaintableInterface.of(object).?.*, .base3 = ItemStateListener.of(object).?.*, .base4 = GameStateCompositeInterface.of(object).?.*, .toStringFn = Methods.toString, .getTitleFn = Methods.getTitle, .isInitializedFn = Methods.isInitialized, .isPausedFn = Methods.isPaused, .unPauseFn = Methods.unPause, .pauseFn = Methods.pause, .isHighScoreSubmittedFn = Methods.isHighScoreSubmitted, .setHighScoreSubmittedFn = Methods.setHighScoreSubmitted, .processGameOverFn = Methods.processGameOver, .isGameOverFn = Methods.isGameOver, .initCommandsFn = Methods.initCommands, .getCurrentStateHashtableFn = Methods.getCurrentStateHashtable, .getLoadStateHashtableFn = Methods.getLoadStateHashtable, .setLoadStateHashtableFn = Methods.setLoadStateHashtable, .getTypeFn = Methods.getType };
        return this;
    }
};


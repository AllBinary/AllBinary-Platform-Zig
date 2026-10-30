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
// package org.allbinary.game.score

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HighScoresCanvas = @import("org/allbinary/game/score/displayable/HighScoresCanvas.zig").HighScoresCanvas;
const HighScoresCanvasInputProcessor = @import("org/allbinary/game/score/HighScoresCanvasInputProcessor.zig").HighScoresCanvasInputProcessor;

// Java interface: an implementation is a pointer and a table of functions
pub const HighScoresCanvasInputProcessorFactoryInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getInstanceFn: *const fn (pointer: *anyopaque, highScoresCanvas: ?*HighScoresCanvas) ?*HighScoresCanvasInputProcessor,

    pub fn getInstance(self: *Self, highScoresCanvas: ?*HighScoresCanvas) ?*HighScoresCanvasInputProcessor {
        return self.getInstanceFn(self.pointer, highScoresCanvas);
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
            fn getInstance(pointer: *anyopaque, highScoresCanvas: ?*HighScoresCanvas) ?*HighScoresCanvasInputProcessor {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*HighScoresCanvasInputProcessor, Inheritance.receiver(implementation, "getInstance").getInstance(highScoresCanvas));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getInstanceFn = Methods.getInstance };
        return this;
    }
};


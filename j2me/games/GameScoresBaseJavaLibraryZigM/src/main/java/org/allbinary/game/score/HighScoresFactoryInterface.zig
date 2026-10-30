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
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const HighScoresHelperBaseInterface = @import("org/allbinary/game/score/HighScoresHelperBaseInterface.zig").HighScoresHelperBaseInterface;
const HighScoresResultsListener = @import("org/allbinary/game/score/HighScoresResultsListener.zig").HighScoresResultsListener;

// Java interface: an implementation is a pointer and a table of functions
pub const HighScoresFactoryInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.HighScoresFactoryInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    fetchHighScoresFn: *const fn (pointer: *anyopaque, gameInfo: ?*GameInfo, highScoresResultsListener: ?*HighScoresResultsListener) void,
    fetchHighScoresPreloadFn: *const fn (pointer: *anyopaque, gameInfo: ?*GameInfo, highScoresResultsListener: ?*HighScoresResultsListener, preload: bool) void,
    createHighScoresHelperFn: *const fn (pointer: *anyopaque) ?*HighScoresHelperBaseInterface,

    pub fn fetchHighScores(self: *Self, gameInfo: ?*GameInfo, highScoresResultsListener: ?*HighScoresResultsListener) void {
        return self.fetchHighScoresFn(self.pointer, gameInfo, highScoresResultsListener);
    }

    pub fn fetchHighScoresPreload(self: *Self, gameInfo: ?*GameInfo, highScoresResultsListener: ?*HighScoresResultsListener, preload: bool) void {
        return self.fetchHighScoresPreloadFn(self.pointer, gameInfo, highScoresResultsListener, preload);
    }

    pub fn createHighScoresHelper(self: *Self) ?*HighScoresHelperBaseInterface {
        return self.createHighScoresHelperFn(self.pointer);
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
            fn fetchHighScores(pointer: *anyopaque, gameInfo: ?*GameInfo, highScoresResultsListener: ?*HighScoresResultsListener) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "fetchHighScores").fetchHighScores(gameInfo, highScoresResultsListener);
            }
            fn fetchHighScoresPreload(pointer: *anyopaque, gameInfo: ?*GameInfo, highScoresResultsListener: ?*HighScoresResultsListener, preload: bool) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "fetchHighScoresPreload").fetchHighScoresPreload(gameInfo, highScoresResultsListener, preload);
            }
            fn createHighScoresHelper(pointer: *anyopaque) ?*HighScoresHelperBaseInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*HighScoresHelperBaseInterface, Inheritance.receiver(implementation, "createHighScoresHelper").createHighScoresHelper());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .fetchHighScoresFn = Methods.fetchHighScores, .fetchHighScoresPreloadFn = Methods.fetchHighScoresPreload, .createHighScoresHelperFn = Methods.createHighScoresHelper };
        return this;
    }
};


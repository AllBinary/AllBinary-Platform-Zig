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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const HighScore = @import("org/allbinary/game/score/HighScore.zig").HighScore;
const Exception = @import("java/lang/Exception.zig").Exception;

// Java interface: an implementation is a pointer and a table of functions
pub const HighScoresInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.HighScoresInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getListFn: *const fn (interface_pointer: *anyopaque) ?*BasicArrayList,
    addHighScoreFn: *const fn (interface_pointer: *anyopaque, newHighScore: ?*HighScore) void,
    getTotalFn: *const fn (interface_pointer: *anyopaque) i32,
    isBestScoreFn: *const fn (interface_pointer: *anyopaque, newHighScore: ?*HighScore) bool,

    pub fn getList(self: *Self) ?*BasicArrayList {
        return self.getListFn(self.pointer);
    }

    pub fn addHighScore(self: *Self, newHighScore: ?*HighScore) void {
        return self.addHighScoreFn(self.pointer, newHighScore);
    }

    pub fn getTotal(self: *Self) i32 {
        return self.getTotalFn(self.pointer);
    }

    pub fn isBestScore(self: *Self, newHighScore: ?*HighScore) bool {
        return self.isBestScoreFn(self.pointer, newHighScore);
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
            fn getList(interface_pointer: *anyopaque) ?*BasicArrayList {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getList").getList());
            }
            fn addHighScore(interface_pointer: *anyopaque, newHighScore: ?*HighScore) void {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "addHighScore", .{ newHighScore });
            }
            fn getTotal(interface_pointer: *anyopaque) i32 {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.receiver(implementation, "getTotal").getTotal();
            }
            fn isBestScore(interface_pointer: *anyopaque, newHighScore: ?*HighScore) bool {
                const implementation: ImplementationType = @ptrCast(@alignCast(interface_pointer));
                return Inheritance.call(implementation, "isBestScore", .{ newHighScore });
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getListFn = Methods.getList, .addHighScoreFn = Methods.addHighScore, .getTotalFn = Methods.getTotal, .isBestScoreFn = Methods.isBestScore };
        return this;
    }
};


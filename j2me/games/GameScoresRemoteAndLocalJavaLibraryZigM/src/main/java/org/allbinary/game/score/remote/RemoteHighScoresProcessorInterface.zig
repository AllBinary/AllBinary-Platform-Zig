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
// package org.allbinary.game.score.remote

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const RemoteHighScores = @import("org/allbinary/game/score/remote/RemoteHighScores.zig").RemoteHighScores;

// Java interface: an implementation is a pointer and a table of functions
pub const RemoteHighScoresProcessorInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    processFn: *const fn (pointer: *anyopaque, remoteHighScores: ?*RemoteHighScores, abeClientInformation: ?*AbeClientInformationInterface, gameInfo: ?*GameInfo) void,

    pub fn process(self: *Self, remoteHighScores: ?*RemoteHighScores, abeClientInformation: ?*AbeClientInformationInterface, gameInfo: ?*GameInfo) void {
        return self.processFn(self.pointer, remoteHighScores, abeClientInformation, gameInfo);
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
            fn process(pointer: *anyopaque, remoteHighScores: ?*RemoteHighScores, abeClientInformation: ?*AbeClientInformationInterface, gameInfo: ?*GameInfo) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "process").process(remoteHighScores, abeClientInformation, gameInfo);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .processFn = Methods.process };
        return this;
    }
};


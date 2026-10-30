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
// package org.allbinary.graphics.j2me.workarea

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Document = @import("org/w3c/dom/Document.zig").Document;

// Java interface: an implementation is a pointer and a table of functions
pub const WorkAreaJPanelInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface";
    pointer: *anyopaque,
    object: Object,
    base: KeyListener,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getNameFn: *const fn (pointer: *anyopaque) ?*String,
    deselectFn: *const fn (pointer: *anyopaque) void,
    selectFn: *const fn (pointer: *anyopaque) void,
    changeZoomFn: *const fn (pointer: *anyopaque, factor: i32) void,
    explodeAllFn: *const fn (pointer: *anyopaque) void,
    autoRotateFn: *const fn (pointer: *anyopaque, increments: i32, totalAngle: i32) void,
    autoExplodeFn: *const fn (pointer: *anyopaque, numberOfFrames: i32, explodeType: i32) void,
    autoMirrorFn: *const fn (pointer: *anyopaque) void,
    playFn: *const fn (pointer: *anyopaque) void,
    stopFn: *const fn (pointer: *anyopaque) void,
    isPlayingFn: *const fn (pointer: *anyopaque) bool,
    toDocumentFn: *const fn (pointer: *anyopaque) ?*Document,

    pub fn getName(self: *Self) ?*String {
        return self.getNameFn(self.pointer);
    }

    pub fn deselect(self: *Self) void {
        return self.deselectFn(self.pointer);
    }

    pub fn select(self: *Self) void {
        return self.selectFn(self.pointer);
    }

    pub fn changeZoom(self: *Self, factor: i32) void {
        return self.changeZoomFn(self.pointer, factor);
    }

    pub fn explodeAll(self: *Self) void {
        return self.explodeAllFn(self.pointer);
    }

    pub fn autoRotate(self: *Self, increments: i32, totalAngle: i32) void {
        return self.autoRotateFn(self.pointer, increments, totalAngle);
    }

    pub fn autoExplode(self: *Self, numberOfFrames: i32, explodeType: i32) void {
        return self.autoExplodeFn(self.pointer, numberOfFrames, explodeType);
    }

    pub fn autoMirror(self: *Self) void {
        return self.autoMirrorFn(self.pointer);
    }

    pub fn play(self: *Self) void {
        return self.playFn(self.pointer);
    }

    pub fn stop(self: *Self) void {
        return self.stopFn(self.pointer);
    }

    pub fn isPlaying(self: *Self) bool {
        return self.isPlayingFn(self.pointer);
    }

    pub fn toDocument(self: *Self) ?*Document {
        return self.toDocumentFn(self.pointer);
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
            fn getName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getName").getName());
            }
            fn deselect(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "deselect").deselect();
            }
            fn select(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "select").select();
            }
            fn changeZoom(pointer: *anyopaque, factor: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "changeZoom").changeZoom(factor);
            }
            fn explodeAll(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "explodeAll").explodeAll();
            }
            fn autoRotate(pointer: *anyopaque, increments: i32, totalAngle: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "autoRotate").autoRotate(increments, totalAngle);
            }
            fn autoExplode(pointer: *anyopaque, numberOfFrames: i32, explodeType: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "autoExplode").autoExplode(numberOfFrames, explodeType);
            }
            fn autoMirror(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "autoMirror").autoMirror();
            }
            fn play(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "play").play();
            }
            fn stop(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "stop").stop();
            }
            fn isPlaying(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isPlaying").isPlaying();
            }
            fn toDocument(pointer: *anyopaque) ?*Document {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Document, Inheritance.receiver(implementation, "toDocument").toDocument());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = KeyListener.of(object).?.*, .toStringFn = Methods.toString, .getNameFn = Methods.getName, .deselectFn = Methods.deselect, .selectFn = Methods.select, .changeZoomFn = Methods.changeZoom, .explodeAllFn = Methods.explodeAll, .autoRotateFn = Methods.autoRotate, .autoExplodeFn = Methods.autoExplode, .autoMirrorFn = Methods.autoMirror, .playFn = Methods.play, .stopFn = Methods.stop, .isPlayingFn = Methods.isPlaying, .toDocumentFn = Methods.toDocument };
        return this;
    }
};


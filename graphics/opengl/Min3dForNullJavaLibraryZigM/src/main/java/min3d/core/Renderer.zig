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
// package min3d.core

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const EGLConfig = @import("javax/microedition/khronos/egl/EGLConfig.zig").EGLConfig;
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;

// Java interface: an implementation is a pointer and a table of functions
pub const Renderer = struct {
    const Self = @This();
    pub const java_name = "min3d.core.Renderer";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    onSurfaceCreatedFn: *const fn (pointer: *anyopaque, gl: ?*GL10, config: ?*EGLConfig) void,
    onSurfaceChangedFn: *const fn (pointer: *anyopaque, gl: ?*GL10, width: i32, height: i32) void,
    onDrawFrameFn: *const fn (pointer: *anyopaque, gl: ?*GL10) void,

    pub fn onSurfaceCreated(self: *Self, gl: ?*GL10, config: ?*EGLConfig) void {
        return self.onSurfaceCreatedFn(self.pointer, gl, config);
    }

    pub fn onSurfaceChanged(self: *Self, gl: ?*GL10, width: i32, height: i32) void {
        return self.onSurfaceChangedFn(self.pointer, gl, width, height);
    }

    pub fn onDrawFrame(self: *Self, gl: ?*GL10) void {
        return self.onDrawFrameFn(self.pointer, gl);
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
            fn onSurfaceCreated(pointer: *anyopaque, gl: ?*GL10, config: ?*EGLConfig) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onSurfaceCreated").onSurfaceCreated(gl, config);
            }
            fn onSurfaceChanged(pointer: *anyopaque, gl: ?*GL10, width: i32, height: i32) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onSurfaceChanged").onSurfaceChanged(gl, width, height);
            }
            fn onDrawFrame(pointer: *anyopaque, gl: ?*GL10) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onDrawFrame").onDrawFrame(gl);
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .onSurfaceCreatedFn = Methods.onSurfaceCreated, .onSurfaceChangedFn = Methods.onSurfaceChanged, .onDrawFrameFn = Methods.onDrawFrame };
        return this;
    }
};


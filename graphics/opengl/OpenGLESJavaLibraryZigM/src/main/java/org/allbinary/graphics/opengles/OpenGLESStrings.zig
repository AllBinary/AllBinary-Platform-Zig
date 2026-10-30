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
// package org.allbinary.graphics.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;

pub const OpenGLESStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.OpenGLESStrings";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn set(self: *Self, gl: ?*GL10) void {
        _ = gl;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn initFont(self: *Self, gl: ?*GL10, width: i32, height: i32) void {
        _ = gl;
        _ = width;
        _ = height;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn update(self: *Self, gl: ?*GL10, width: i32, height: i32) void {
        _ = gl;
        _ = width;
        _ = height;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn drawChar(self: *Self, gl: ?*GL10, graphics: ?*Graphics, character: u16, x: i32, y: i32, anchor: i32) void {
        _ = gl;
        _ = graphics;
        _ = character;
        _ = x;
        _ = y;
        _ = anchor;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn drawChars(self: *Self, gl: ?*GL10, graphics: ?*Graphics, data: []u16, offset: i32, length: i32, x: i32, y: i32, anchor: i32) void {
        _ = gl;
        _ = graphics;
        _ = data;
        _ = offset;
        _ = length;
        _ = x;
        _ = y;
        _ = anchor;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn drawString(self: *Self, gl: ?*GL10, graphics: ?*Graphics, string: ?*String, x: i32, y: i32, anchor: i32) void {
        _ = gl;
        _ = graphics;
        _ = string;
        _ = x;
        _ = y;
        _ = anchor;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn drawSubstring(self: *Self, gl: ?*GL10, graphics: ?*Graphics, string: ?*String, offset: i32, len: i32, x: i32, y: i32, anchor: i32) void {
        _ = gl;
        _ = graphics;
        _ = string;
        _ = offset;
        _ = len;
        _ = x;
        _ = y;
        _ = anchor;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn charWidth(self: *Self, ch: u16) i32 {
        _ = ch;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn charsWidth(self: *Self, ch: []u16, offset: i32, length: i32) i32 {
        _ = ch;
        _ = offset;
        _ = length;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn stringWidth(self: *Self, string: ?*String) i32 {
        _ = string;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn stringWidth3(self: *Self, string: ?*String, offset: i32, len: i32) i32 {
        _ = string;
        _ = offset;
        _ = len;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};


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
// package org.allbinary.graphics.threed

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const MIDlet = @import("javax/microedition/midlet/MIDlet.zig").MIDlet;
const GLHolder = @import("org/allbinary/graphics/threed/GLHolder.zig").GLHolder;
const RatioProcessor = @import("org/allbinary/graphics/threed/RatioProcessor.zig").RatioProcessor;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

//SWTWithoutJOGL
pub const SWTJOGLProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.threed.SWTJOGLProcessor";
    pub const java_interfaces = .{ Runnable };
    glHolder: ?*GLHolder = null,
    // Implements Runnable
    var instance: ?*SWTJOGLProcessor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SWTJOGLProcessor.create();
    }

    fn initFields(this: *Self) void {
        this.glHolder = GLHolder.create() // Java anonymous class body: implement it as a named type
//         
// 
//         pub fn run(self: *Self, renderer: ?Object) void {
//             _ = renderer;
//             _ = self;
//         }
;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*SWTJOGLProcessor {
        return Inheritance.upcast(?*SWTJOGLProcessor, SWTJOGLProcessor.instance);
    }
    

    pub fn init(self: *Self, display: ?Object, comp: ?Object) void {
        _ = display;
        _ = comp;
        _ = self;
    }
    

    pub fn isHolderCreated(self: *Self) bool {
        return self.glHolder.?.isCreated;
    }
    

    pub fn setRenderer(self: *Self, renderer: ?Object) void {
        _ = renderer;
        _ = self;
    }
    

    pub fn isJOGL(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn createSurface(self: *Self) void {
        _ = self;
    }
    

    pub fn onSurfaceCreated(self: *Self) void {
        _ = self;
    }
    

    pub fn onSurfaceChangedForEvent(self: *Self, event: ?Object) void {
        _ = event;
        _ = self;
    }
    

    pub fn onSurfaceChanged(self: *Self) void {
        _ = self;
    }
    

    pub fn onSurfaceChangedWH(self: *Self, width: i32, height: i32) void {
        _ = width;
        _ = height;
        _ = self;
    }
    

    pub fn addListener(self: *Self) void {
        _ = self;
    }
    

    pub fn addListeners(self: *Self, midlet: ?*MIDlet) void {
        _ = midlet;
        _ = self;
    }
    

    pub fn run(self: *Self) void {
        _ = self;
    }
    

    pub fn clear(self: *Self) void {
        _ = self;
    }
    

    pub fn setCustom(self: *Self, width: i32, height: i32, ratio: f32) void {
        _ = width;
        _ = height;
        _ = ratio;
        _ = self;
    }
    

    pub fn setRatioProcessor(self: *Self, ratioProcessor: ?*RatioProcessor) void {
        _ = ratioProcessor;
        _ = self;
    }
    

    pub fn charWidth(self: *Self, font: ?*Font, ch: u16) i32 {
        _ = font;
        _ = ch;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn charsWidth(self: *Self, font: ?*Font, ch: []u16, offset: i32, length: i32) i32 {
        _ = font;
        _ = ch;
        _ = offset;
        _ = length;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn stringWidth(self: *Self, font: ?*Font, str: ?*String) i32 {
        _ = font;
        _ = str;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn substringWidth(self: *Self, font: ?*Font, str: ?*String, offset: i32, len: i32) i32 {
        _ = font;
        _ = str;
        _ = offset;
        _ = len;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};


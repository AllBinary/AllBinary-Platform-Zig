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
// package javax.microedition.lcdui

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;

//PlatformNullImageJavaLibrary
pub const PlatformImage = struct {
    const Self = @This();
    pub const java_name = "javax.microedition.lcdui.PlatformImage";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getImage(self: *Self, graphicsSurface2: ?Object) ?Object {
        _ = graphicsSurface2;
        _ = self;
        return Inheritance.upcast(?Object, NullImage.NULL_IMAGE);
    }
    

    pub fn getSurfaceWidth(self: *Self, graphicsSurface2: ?Object, width: i32) i32 {
        _ = graphicsSurface2;
        _ = self;
        return width;
    }
    

    pub fn getSurfaceHeight(self: *Self, graphicsSurface2: ?Object, height: i32) i32 {
        _ = graphicsSurface2;
        _ = self;
        return height;
    }
    

    pub fn getWidth(self: *Self, image: ?*Image, width: i32) i32 {
        _ = image;
        _ = self;
        return width;
    }
    

    pub fn getHeight(self: *Self, image: ?*Image, height: i32) i32 {
        _ = image;
        _ = self;
        return height;
    }
    

    pub fn getGraphics(self: *Self, graphicsSurface: ?Object, width: i32, height: i32, image: ?*Image) ?*Graphics {
        _ = graphicsSurface;
        _ = width;
        _ = height;
        _ = image;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn drawImage(self: *Self, image: ?*Image, x: i32, y: i32, anchor: i32, g2: ?*Graphics, g: ?Object) void {
        _ = image;
        _ = x;
        _ = y;
        _ = anchor;
        _ = g2;
        _ = g;
        _ = self;
    }
    

    pub fn drawRegion(self: *Self, image: ?*Image, x_src: i32, y_src: i32, width: i32, height: i32, transform: i32, x_dst: i32, y_dst: i32, anchor: i32, g: ?*Graphics) void {
        _ = image;
        _ = x_src;
        _ = y_src;
        _ = width;
        _ = height;
        _ = transform;
        _ = x_dst;
        _ = y_dst;
        _ = anchor;
        _ = g;
        _ = self;
    }
    

    pub fn getRGB(self: *Self, argb: []i32, offset: i32, scanlength: i32, x: i32, y: i32, width: i32, height: i32, image: ?*Image) void {
        _ = argb;
        _ = offset;
        _ = scanlength;
        _ = x;
        _ = y;
        _ = width;
        _ = height;
        _ = image;
        _ = self;
    }
    

    pub fn setRGB(self: *Self, argb: []i32, offset: i32, scanlength: i32, x: i32, y: i32, width: i32, height: i32, image: ?*Image) void {
        _ = argb;
        _ = offset;
        _ = scanlength;
        _ = x;
        _ = y;
        _ = width;
        _ = height;
        _ = image;
        _ = self;
    }
    

    pub fn getData(self: *Self, image: ?*Image) []i32 {
        _ = image;
        _ = self;
        return NullUtil.getInstance().?.NULL_INT_ARRAY;
    }
};


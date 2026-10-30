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
// package org.allbinary.game.health

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const ColorBufferList = @import("min3d/core/ColorBufferList.zig").ColorBufferList;
const Number3dBufferList = @import("min3d/core/Number3dBufferList.zig").Number3dBufferList;
const Rectangle = @import("min3d/objectPrimitives/Rectangle.zig").Rectangle;
const Number3d = @import("min3d/vos/Number3d.zig").Number3d;
const OpenGLESGraphics = @import("org/allbinary/device/OpenGLESGraphics.zig").OpenGLESGraphics;
const Object3dProcessor = @import("org/allbinary/graphics/threed/min3d/renderer/Object3dProcessor.zig").Object3dProcessor;
const Object3dProcessorUtil = @import("org/allbinary/graphics/threed/min3d/renderer/Object3dProcessorUtil.zig").Object3dProcessorUtil;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const HealthBarAnimation = @import("org/allbinary/game/health/HealthBarAnimation.zig").HealthBarAnimation;

pub const HealthBarThreedAnimation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.health.HealthBarThreedAnimation";
    base: HealthBarAnimation = undefined,
    rectangle: ?*Rectangle = null,
    basicColorFactory: ?*BasicColorFactory = null,
    object3dProcessor: ?*Object3dProcessor = null,

    fn initFields(this: *Self) void {
        
        this.basicColorFactory = Inheritance.upcast(?*BasicColorFactory, BasicColorFactory.getInstance());
        this.object3dProcessor = Inheritance.upcast(?*Object3dProcessor, Inheritance.receiverOf(Object3dProcessorUtil.getInstance().?, "getInstanceObject3dProcessor").getInstanceObject3dProcessor());
    }
    

    pub fn create2(layerInterface: ?*AllBinaryLayer, location: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HealthBarAnimation, "create2", .{ layerInterface, location }).*;
        this.initFields();
        Inheritance.fieldPointer(this, "basicColor").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "basicColor").*), this.basicColorFactory.?.GREEN);
        Inheritance.fieldPointer(this, "colorP").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "colorP").*), Inheritance.receiverOf(Inheritance.fieldPointer(this, "basicColor").*.?, "intValue").intValue());
        this.rectangle = Inheritance.callStatic(Rectangle, "create5", .{ 0, 0, 1, 1, Inheritance.fieldPointer(this, "basicColor").* });
        _ = Inheritance.call(this.rectangle.?, "setDoubleSidedEnabled", .{ true });
        _ = Inheritance.call(this.rectangle.?, "setNormalsEnabled", .{ false });
        _ = Inheritance.call(this.rectangle.?, "setTexturesEnabled", .{ false });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn updateColor(self: *Self) void {
        const colorBufferList: ?*ColorBufferList = Inheritance.upcast(?*ColorBufferList, Inheritance.receiverOf(self.rectangle.?.getVertices().?, "getColor4BufferList").getColor4BufferList());
        const size: i32 = colorBufferList.?.size();
        {
            var index: i32 = size;
            while (value_N66475: { index -= 1; break :value_N66475 index; } >= 0) {
            _ = Inheritance.call(colorBufferList.?, "set", .{ index, Inheritance.fieldPointer(self, "basicColor").* });
            }
        }
    }
    

    pub fn updateSize(self: *Self) void {
        const number3dBufferList: ?*Number3dBufferList = Inheritance.upcast(?*Number3dBufferList, Inheritance.receiverOf(self.rectangle.?.getVertices().?, "getPointsOnFacesNumber3dBufferList").getPointsOnFacesNumber3dBufferList());
        const width: i32 = Inheritance.fieldPointer(self, "x2").*;
        const height: i32 = Inheritance.fieldPointer(self, "thickness").* * 2;
        const segsH: i32 = 1;
        const segsW: i32 = 1;
        var row: i32 = 0;
        var col: i32 = 0;
        const w: f32 = @as(f32, @floatFromInt(@divTrunc(width, segsW)));
        const h: f32 = @as(f32, @floatFromInt(@divTrunc(height, segsH)));
        const width5: f32 = @divTrunc(@as(f32, @floatFromInt(width)), 2.0);
        const height5: f32 = @divTrunc(@as(f32, @floatFromInt(height)), 2.0);
        var index: i32 = 0;
        {
            row = 0;
            while (row <= segsH) : (row += 1) {
            {
                col = 0;
                while (col <= segsW) : (col += 1) {
                _ = Inheritance.call(number3dBufferList.?, "set", .{ value_N67018: { const value_N67018_value = index; index += 1; break :value_N67018 value_N67018_value; }, @as(f32, @floatFromInt(col)) * w - width5, @as(f32, @floatFromInt(row)) * h - height5, 0.0 });
                }
            }
            }
        }
    }
    

    pub fn onHealthChange(self: *Self, newX2: i32) void {
        _ = Inheritance.call(&self.base, "onHealthChange", .{ newX2 });
        _ = self.updateColor();
        _ = self.updateSize();
    }
    

    pub fn paintThreedXYZ(self: *Self, graphics: ?*Graphics, x: i32, y: i32, z: i32) void {
        _ = x;
        _ = y;
        _ = z;
        const openGLESGraphics: ?*OpenGLESGraphics = Inheritance.cast(?*OpenGLESGraphics, graphics);
        const gl: ?*GL10 = Inheritance.upcast(?*GL10, Inheritance.receiver(openGLESGraphics.?, "getGl10").getGl10());
        const viewPosition: ?*ViewPositionBase = Inheritance.upcast(?*ViewPositionBase, Inheritance.receiverOf(Inheritance.fieldPointer(self, "allbinaryLayer").*.?, "getViewPosition").getViewPosition());
        const positionNumber3d: ?*Number3d = Inheritance.upcast(?*Number3d, self.rectangle.?.getPosition());
        positionNumber3d.?.x = Inheritance.upcast(@TypeOf(positionNumber3d.?.x), -(@as(f32, @floatCast(Inheritance.receiver(viewPosition.?, "getX").getX()))));
        positionNumber3d.?.z = Inheritance.upcast(@TypeOf(positionNumber3d.?.z), -(@as(f32, @floatCast(Inheritance.receiver(viewPosition.?, "getY").getY()))));
        positionNumber3d.?.y = Inheritance.upcast(@TypeOf(positionNumber3d.?.y), Inheritance.receiver(viewPosition.?, "getZ").getZ() + Inheritance.receiverOf(Inheritance.fieldPointer(self, "allbinaryLayer").*.?, "getHeight").getHeight());
        _ = Inheritance.call(self.object3dProcessor.?, "drawObject", .{ gl, self.rectangle });
    }
};


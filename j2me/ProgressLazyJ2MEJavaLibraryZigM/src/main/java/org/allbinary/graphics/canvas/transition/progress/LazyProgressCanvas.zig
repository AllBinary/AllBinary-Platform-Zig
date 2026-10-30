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
// package org.allbinary.graphics.canvas.transition.progress

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const ImageCacheFactory = @import("org/allbinary/image/ImageCacheFactory.zig").ImageCacheFactory;
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;

pub const LazyProgressCanvas = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas";
    base: ProgressCanvas = undefined,
    

    pub fn create3(title: ?*String, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ProgressCanvas, "create3", .{ title, backgroundBasicColor, foregroundBasicColor }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn start(self: *Self) void {
        _ = self.base.start();
        Inheritance.fieldPointer(self, "hasPainted").* = false;
    }
    

    pub fn end(self: *Self) void {
        { // try
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.END_METHOD_NAME });
            _ = Inheritance.receiver(self, "endActual").endActual();
            Inheritance.fieldPointer(self, "paintable").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "paintable").*), Inheritance.fieldPointer(self, "GAUGE_PAINTABLE").*);
            _ = Inheritance.receiverOf(ImageCacheFactory.getInstance().?, "runTask").runTask();
            _ = Inheritance.receiverOf(ImageCacheFactory.getInstance().?, "progressEnded").progressEnded();
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.END_METHOD_NAME });
    }
    

    pub fn inGame(self: *Self) void {
        Inheritance.fieldPointer(self, "inGameProcessor").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "inGameProcessor").*), Processor.getInstance());
    }
    

    pub fn endFromInitialLazyLoadingComplete(self: *Self) void {
        _ = self.base.endFromInitialLazyLoadingComplete();
        Inheritance.fieldPointer(self, "paintable").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "paintable").*), NullPaintable.getInstance());
    }
    

    pub fn endIfPaintedSinceStart(self: *Self) void {
        if (Object.same(Inheritance.fieldPointer(self, "paintable").*, Inheritance.fieldPointer(self, "GAUGE_PAINTABLE").*) and Inheritance.fieldPointer(self, "hasPainted").*) {
            _ = self.endFromInitialLazyLoadingComplete();
        }
    }
};


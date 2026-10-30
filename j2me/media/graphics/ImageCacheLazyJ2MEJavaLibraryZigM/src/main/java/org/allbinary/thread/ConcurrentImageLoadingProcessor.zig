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
// package org.allbinary.thread

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;
const ProgressCanvasFactory = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.zig").ProgressCanvasFactory;
const ImageCache = @import("org/allbinary/image/ImageCache.zig").ImageCache;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABRunnable = @import("org/allbinary/thread/ABRunnable.zig").ABRunnable;
const BaseImageLoadingProcessor = @import("org/allbinary/thread/BaseImageLoadingProcessor.zig").BaseImageLoadingProcessor;
const ImageThreadPool = @import("org/allbinary/thread/ImageThreadPool.zig").ImageThreadPool;

pub const ConcurrentImageLoadingProcessor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.thread.ConcurrentImageLoadingProcessor";
    base: BaseImageLoadingProcessor = undefined,
    logUtil: ?*LogUtil = null,
    runnable: ?*ABRunnable = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(imageCache: ?*ImageCache) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BaseImageLoadingProcessor.create().*;
        this.initFields();
        this.runnable = Inheritance.upcast(@TypeOf(this.runnable), Inheritance.callStatic(ImageCacheRunnable, "create1", .{ imageCache }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn runTask(self: *Self) void {
        if (!self.runnable.?.isRunning()) {
            _ = Inheritance.call(ImageThreadPool.getInstance().?, "runTask", .{ self.runnable });
        }
    }
    pub const ImageCacheRunnable = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.thread.ImageCacheRunnable";
        base: ABRunnable = undefined,
        imageCache: ?*ImageCache = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(imageCache: ?*ImageCache) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = ABRunnable.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "imageCache").* = imageCache;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        pub fn run(self: *Self) void {
            const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
            { // try
                _ = Inheritance.call(self, "setRunning", .{ true });
                _ = Inheritance.receiver(Inheritance.fieldPointer(self, "imageCache").*.?, "waitForLoadNow").waitForLoadNow();
                _ = Inheritance.receiver(Inheritance.fieldPointer(self, "imageCache").*.?, "loadImages").loadImages();
                _ = Inheritance.receiver(Inheritance.fieldPointer(self, "imageCache").*.?, "loadRemainingAnimations").loadRemainingAnimations();
                _ = Inheritance.call(self, "setRunning", .{ false });
                const progressCanvas: ?*ProgressCanvas = Inheritance.upcast(?*ProgressCanvas, ProgressCanvasFactory.getInstance());
                if (!progressCanvas.?.inProgress) {
                    _ = Inheritance.receiver(progressCanvas.?, "endFromInitialLazyLoadingComplete").endFromInitialLazyLoadingComplete();
                }
            }
            // catch (Exception e):
//                 _ = Inheritance.call(self, "setRunning", .{ false });
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
        }
    };
};


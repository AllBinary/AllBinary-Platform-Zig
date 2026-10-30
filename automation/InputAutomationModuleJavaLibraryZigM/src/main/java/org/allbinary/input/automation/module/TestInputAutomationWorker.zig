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
// package org.allbinary.input.automation.module

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ScreenCaptureImagesWorker = @import("org/allbinary/input/media/image/capture/ScreenCaptureImagesWorker.zig").ScreenCaptureImagesWorker;
const ImageComparisonWorker = @import("org/allbinary/media/image/comparison/ImageComparisonWorker.zig").ImageComparisonWorker;
const SaveImageComparisonWorker = @import("org/allbinary/media/image/comparison/SaveImageComparisonWorker.zig").SaveImageComparisonWorker;
const MotionRectanglesWorker = @import("org/allbinary/media/image/comparison/motion/MotionRectanglesWorker.zig").MotionRectanglesWorker;
const SaveMotionRectanglesResultsWorker = @import("org/allbinary/media/image/comparison/motion/SaveMotionRectanglesResultsWorker.zig").SaveMotionRectanglesResultsWorker;
const TestInputForMotionRectanglesResultsWorker = @import("org/allbinary/media/image/comparison/motion/TestInputForMotionRectanglesResultsWorker.zig").TestInputForMotionRectanglesResultsWorker;

pub const TestInputAutomationWorker = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.TestInputAutomationWorker";
    captureWorker: ?*ScreenCaptureImagesWorker = null,
    imageComparisonWorker: ?*ImageComparisonWorker = null,
    motionRectanglesWorker: ?*MotionRectanglesWorker = null,
    changedPixelsImageComparisonResultsWorker: ?*SaveImageComparisonWorker = null,
    saveMotionRectanglesAsImagesWorker: ?*SaveMotionRectanglesResultsWorker = null,
    moveMouseToFirstMotionRectanglesResultsWorker: ?*TestInputForMotionRectanglesResultsWorker = null,

    fn initFields(this: *Self) void {
        
        this.imageComparisonWorker = null;
        this.motionRectanglesWorker = null;
        
        
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.captureWorker = ScreenCaptureImagesWorker.create();
        this.changedPixelsImageComparisonResultsWorker = SaveImageComparisonWorker.create();
        this.saveMotionRectanglesAsImagesWorker = SaveMotionRectanglesResultsWorker.create();
        this.moveMouseToFirstMotionRectanglesResultsWorker = TestInputForMotionRectanglesResultsWorker.create();
        _ = Inheritance.call(this.motionRectanglesWorker.?, "addListenerInterface", .{ this.saveMotionRectanglesAsImagesWorker });
        _ = Inheritance.call(this.motionRectanglesWorker.?, "addListenerInterface", .{ this.moveMouseToFirstMotionRectanglesResultsWorker });
        _ = Inheritance.call(this.imageComparisonWorker.?, "addListenerInterface", .{ this.changedPixelsImageComparisonResultsWorker });
        _ = Inheritance.call(this.imageComparisonWorker.?, "addListenerInterface", .{ this.motionRectanglesWorker });
        _ = Inheritance.call(this.captureWorker.?, "addListenerInterface", .{ this.imageComparisonWorker });
        return this;
    }
};


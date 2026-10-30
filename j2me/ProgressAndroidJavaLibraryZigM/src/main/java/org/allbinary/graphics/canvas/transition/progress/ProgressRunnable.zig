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
// package org.allbinary.graphics.canvas.transition.progress

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Activity = @import("android/app/Activity.zig").Activity;
const MidletActivityBase = @import("org/allbinary/android/activity/MidletActivityBase.zig").MidletActivityBase;
const SimpleProgressActivityInterface = @import("org/allbinary/android/activity/SimpleProgressActivityInterface.zig").SimpleProgressActivityInterface;
const ARunnable = @import("org/allbinary/thread/ARunnable.zig").ARunnable;
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;

pub const ProgressRunnable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.canvas.transition.progress.ProgressRunnable";
    base: ARunnable = undefined,
    midletActivity: ?*SimpleProgressActivityInterface = null,
    progressCanvas: ?*ProgressCanvas = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(midletActivity: ?*Activity, progressCanvas: ?*ProgressCanvas) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ARunnable.create().*;
        this.initFields();
        const midletActivity2: ?*MidletActivityBase = Inheritance.cast(?*MidletActivityBase, midletActivity);
        this.midletActivity = Inheritance.cast(?*SimpleProgressActivityInterface, midletActivity2);
        this.progressCanvas = progressCanvas;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn run(self: *Self) void {
        _ = self;
    }
};


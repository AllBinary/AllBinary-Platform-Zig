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
// package org.allbinary.midlet

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const NullCanvas = @import("javax/microedition/lcdui/NullCanvas.zig").NullCanvas;
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AllBinaryMidlet = @import("org/allbinary/midlet/AllBinaryMidlet.zig").AllBinaryMidlet;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const ExitRunnable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.midlet.ExitRunnable";
    pub const java_interfaces = .{ Runnable };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    midlet: ?*AllBinaryMidlet = null,
    processor: ?*Processor = null,
    isProgress: bool = false,
    // Implements Runnable

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        
    }
    

    pub fn create3(midlet: ?*AllBinaryMidlet, processor: ?*Processor, isProgress: bool) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.midlet = midlet;
        this.isProgress = isProgress;
        this.processor = processor;
        return this;
    }
    

    pub fn run(self: *Self) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START_RUNNABLE, self, self.commonStrings.?.RUN });
            _ = Inheritance.call(self.midlet.?, "destroyAppInRunnable", .{ false, self.isProgress });
            _ = Inheritance.call(self.midlet.?, "setDisplay", .{ NullCanvas.NULL_CANVAS });
            _ = Inheritance.receiver(self.midlet.?, "notifyDestroyed").notifyDestroyed();
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.END_RUNNABLE, self, self.commonStrings.?.RUN });
            _ = self.processor.?.process();
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
//             { // try
//                 _ = self.processor.?.process();
//             }
//             // catch (Exception e2):
// //                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.RUN, e });
    }
};


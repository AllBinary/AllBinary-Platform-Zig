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
// package org.allbinary.input.media.image.capture

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const Long = @import("java/lang/Long.zig").Long;

pub const CapturedImageWorkerResultsEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent";
    base: AllBinaryEventObject = undefined,
    frame: ?*Long = null,
    bufferedImage: ?*BufferedImage = null,

    fn initFields(this: *Self) void {
        
        this.bufferedImage = null;
    }
    

    pub fn create3(anyType: ?Object, frame: ?*Long, bufferedImage: ?*BufferedImage) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ anyType }).*;
        this.initFields();
        this.frame = frame;
        _ = Inheritance.call(this, "setBufferedImage", .{ bufferedImage });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getBufferedImage(self: *Self) ?*BufferedImage {
        return self.bufferedImage;
    }
    

    pub fn setBufferedImage(self: *Self, bufferedImage: ?*BufferedImage) void {
        self.bufferedImage = bufferedImage;
    }
    

    pub fn getFrame(self: *Self) ?*Long {
        return self.frame;
    }
};


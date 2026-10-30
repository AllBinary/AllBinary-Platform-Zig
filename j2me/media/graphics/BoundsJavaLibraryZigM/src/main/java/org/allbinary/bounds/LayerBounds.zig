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
// package org.allbinary.bounds

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BoundsChangeEvent = @import("org/allbinary/bounds/event/BoundsChangeEvent.zig").BoundsChangeEvent;
const BoundsChangeEventListener = @import("org/allbinary/bounds/event/BoundsChangeEventListener.zig").BoundsChangeEventListener;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const BoundsVisitorInterface = @import("org/allbinary/bounds/BoundsVisitorInterface.zig").BoundsVisitorInterface;

pub const LayerBounds = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.bounds.LayerBounds";
    logUtil: ?*LogUtil = null,
    rectangle: ?*Rectangle = null,
    // Implements BoundsChangeEventListener

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(rectangle: ?*Rectangle) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.rectangle = rectangle;
        return this;
    }
    

    pub fn getRectangleP(self: *Self) ?*Rectangle {
        return self.rectangle;
    }
    

    pub fn visit(self: *Self, boundsVisitorInterface: ?*BoundsVisitorInterface) void {
        _ = boundsVisitorInterface;
        _ = self;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    pub fn onBoundsChangeEvent(self: *Self, boundsChangeEvent: ?*BoundsChangeEvent) void {
        self.rectangle = Inheritance.upcast(@TypeOf(self.rectangle), Inheritance.receiver(boundsChangeEvent.?, "getRectangle").getRectangle());
    }
};


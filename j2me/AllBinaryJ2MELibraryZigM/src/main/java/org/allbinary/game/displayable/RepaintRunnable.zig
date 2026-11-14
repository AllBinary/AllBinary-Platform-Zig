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
// package org.allbinary.game.displayable

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ARunnable = @import("org/allbinary/thread/ARunnable.zig").ARunnable;
const Exception = @import("java/lang/Exception.zig").Exception;

pub const RepaintRunnable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.RepaintRunnable";
    base: ARunnable = undefined,
    canvas: ?*Canvas = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(canvas: ?*Canvas) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = ARunnable.create().*;
        this.initFields();
        this.canvas = canvas;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn run(self: *Self) void {
        { // try
            _ = Inheritance.receiver(self.canvas.?, "repaint").repaint();
            _ = Inheritance.receiverOf(DisplayInfoSingleton.getInstance().?, "process").process();
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
//             _ = Inheritance.call(logUtil.?, "put", .{ Inheritance.fieldPointer(commonStrings.?, "EXCEPTION").*, self, Inheritance.fieldPointer(commonStrings.?, "RUN").*, e });
    }
};


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
const ARunnable = @import("org/allbinary/thread/ARunnable.zig").ARunnable;
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const NullRunnable = @import("org/allbinary/thread/NullRunnable.zig").NullRunnable;
const RepaintBehavior = @import("org/allbinary/game/displayable/RepaintBehavior.zig").RepaintBehavior;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const AlwaysRepaintBehavior = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.displayable.AlwaysRepaintBehavior";
    base: RepaintBehavior = undefined,
    NAME: ?*String = null,
    var instanceC: ?*AlwaysRepaintBehavior = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = AlwaysRepaintBehavior.create();
    }

    fn initFields(this: *Self) void {
        this.NAME = String.literal("AlwaysRepaintBehavior");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = RepaintBehavior.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*AlwaysRepaintBehavior {
        return Inheritance.upcast(?*AlwaysRepaintBehavior, AlwaysRepaintBehavior.instanceC);
    }
    

    pub fn repaint(self: *Self, canvas: ?*Canvas) void {
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        const openGLFeatureFactory: ?*OpenGLFeatureFactory = Inheritance.upcast(?*OpenGLFeatureFactory, OpenGLFeatureFactory.getInstance());
        if (Inheritance.call(features.?, "isFeature", .{ openGLFeatureFactory.?.OPENGL })) {
            _ = Inheritance.receiverOf(DisplayInfoSingleton.getInstance().?, "process").process();
        } else {
            const thread: ?*Thread = Inheritance.callStatic(Thread, "create2", .{ ARunnable.create() // Java anonymous class body: implement it as a named type
//                 
// 
//                 pub fn run(self: *Self) void {
//                     _ = self;
//                     { // try
//                         _ = canvas.?.repaint();
//                         _ = Inheritance.receiverOf(DisplayInfoSingleton.getInstance().?, "process").process();
//                     }
//                     // catch (Exception e):
// //                         const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
// //                         const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
// //                         _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
//                 }
, self.NAME });
            _ = thread.?.start();
        }
    }
    

    pub fn onChangeRepaint(self: *Self, canvas: ?*Canvas) void {
        _ = canvas;
        _ = self;
    }
};


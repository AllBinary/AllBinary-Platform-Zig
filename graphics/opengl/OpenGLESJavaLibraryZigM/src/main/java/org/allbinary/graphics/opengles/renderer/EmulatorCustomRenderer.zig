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
// package org.allbinary.graphics.opengles.renderer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const EGLConfig = @import("javax/microedition/khronos/egl/EGLConfig.zig").EGLConfig;
// const GL10 = @import("javax/microedition/khronos/opengles/GL10.zig").GL10;
const InitEmulatorFactory = @import("org/allbinary/emulator/InitEmulatorFactory.zig").InitEmulatorFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const RendererStrings = @import("org/allbinary/graphics/opengles/renderer/RendererStrings.zig").RendererStrings;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const EmulatorCustomRenderer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.renderer.EmulatorCustomRenderer";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    renderStrings: ?*RendererStrings = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.renderStrings = Inheritance.upcast(?*RendererStrings, RendererStrings.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn onSurfaceCreated(self: *Self, gl: ?*GL10, eglConfig: ?*EGLConfig) void {
        _ = gl;
        _ = eglConfig;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.renderStrings.?.ON_SURFACE_CREATED });
        const initEmulatorFactory: ?*InitEmulatorFactory = Inheritance.upcast(?*InitEmulatorFactory, InitEmulatorFactory.getInstance());
        if (!initEmulatorFactory.?.isInitEmulator()) {
            { // try
                const WAIT_FOR_EMULATOR: ?*String = String.literal("Waiting on Emulator Initialization");
                while (!initEmulatorFactory.?.isInitEmulator()) {
                    _ = Inheritance.callStatic(PreLogUtil, "put", .{ WAIT_FOR_EMULATOR, self, self.renderStrings.?.ON_SURFACE_CREATED });
                    _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(180), .awake) catch {});
                }
            }
            // catch (Exception e):
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.renderStrings.?.ON_SURFACE_CREATED, e });
        }
    }
};


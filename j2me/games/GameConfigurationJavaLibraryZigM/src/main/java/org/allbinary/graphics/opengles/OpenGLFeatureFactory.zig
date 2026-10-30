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
// package org.allbinary.graphics.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const OpenGLFeature = @import("org/allbinary/graphics/opengles/OpenGLFeature.zig").OpenGLFeature;

pub const OpenGLFeatureFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.OpenGLFeatureFactory";
    OPENGL_OPTIONS: ?*OpenGLFeature = null,
    OPENGL: ?*OpenGLFeature = null,
    OPENGL_SURFACE_VIEW: ?*OpenGLFeature = null,
    OPENGL_2D: ?*OpenGLFeature = null,
    OPENGL_3D: ?*OpenGLFeature = null,
    OPENGL_2D_AND_3D: ?*OpenGLFeature = null,
    OPENGL_AUTO_SELECT: ?*OpenGLFeature = null,
    OPENGL_MINIMUM: ?*OpenGLFeature = null,
    OPENGL_AS_GAME_THREAD: ?*OpenGLFeature = null,
    OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS: ?*OpenGLFeature = null,
    IMAGE_COLOR_DEPTH_4444: ?*OpenGLFeature = null,
    IMAGE_COLOR_DEPTH_8888: ?*OpenGLFeature = null,
    IMAGE_COLOR_DEPTH_565: ?*OpenGLFeature = null,
    OPENGL_COLOR_DEPTH_4444: ?*OpenGLFeature = null,
    OPENGL_COLOR_DEPTH_8888: ?*OpenGLFeature = null,
    OPENGL_COLOR_DEPTH_565: ?*OpenGLFeature = null,
    OPENGL_DRAW_TEXTURE: ?*OpenGLFeature = null,
    OPENGL_VERTEX_BUFFER_OBJECT: ?*OpenGLFeature = null,
    OPENGL_SIMPLE_OBJECT3D_PROCESSOR: ?*OpenGLFeature = null,
    OPENGL_COMPLEX_OBJECT3D_PROCESSOR: ?*OpenGLFeature = null,
    OPENGL_SIMPLE_TEXTURE_PROCESSOR: ?*OpenGLFeature = null,
    OPENGL_COMPLEX_TEXTURE_PROCESSOR: ?*OpenGLFeature = null,
    var instance: ?*OpenGLFeatureFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLFeatureFactory.create();
    }

    fn initFields(this: *Self) void {
        this.OPENGL_OPTIONS = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("OpenGL Options") });
        this.OPENGL = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("OpenGL") });
        this.OPENGL_SURFACE_VIEW = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("GLSurfaceView") });
        this.OPENGL_2D = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("OpenGL 2D") });
        this.OPENGL_3D = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("OpenGL 3D") });
        this.OPENGL_2D_AND_3D = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("OpenGL 2D/3D") });
        this.OPENGL_AUTO_SELECT = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("Auto Select") });
        this.OPENGL_MINIMUM = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("Minimum") });
        this.OPENGL_AS_GAME_THREAD = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("As game thread") });
        this.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("As different threads") });
        this.IMAGE_COLOR_DEPTH_4444 = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("4444") });
        this.IMAGE_COLOR_DEPTH_8888 = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("8888") });
        this.IMAGE_COLOR_DEPTH_565 = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("565") });
        this.OPENGL_COLOR_DEPTH_4444 = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("4444") });
        this.OPENGL_COLOR_DEPTH_8888 = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("8888") });
        this.OPENGL_COLOR_DEPTH_565 = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("565") });
        this.OPENGL_DRAW_TEXTURE = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("GL_OES_draw_texture") });
        this.OPENGL_VERTEX_BUFFER_OBJECT = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("vertex_buffer_object") });
        this.OPENGL_SIMPLE_OBJECT3D_PROCESSOR = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("Simple Object3d Processor") });
        this.OPENGL_COMPLEX_OBJECT3D_PROCESSOR = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("Complex Object3d Processor") });
        this.OPENGL_SIMPLE_TEXTURE_PROCESSOR = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("Simple Texture Processor") });
        this.OPENGL_COMPLEX_TEXTURE_PROCESSOR = Inheritance.callStatic(OpenGLFeature, "create1", .{ String.literal("Complex Texture Processor") });
    }
    

    pub fn getInstance() ?*OpenGLFeatureFactory {
        return Inheritance.upcast(?*OpenGLFeatureFactory, OpenGLFeatureFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};


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
// package org.allbinary.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const GL = @import("javax/microedition/khronos/opengles/GL.zig").GL;
// const ChoiceGroupImageFactory = @import("javax/microedition/lcdui/ChoiceGroupImageFactory.zig").ChoiceGroupImageFactory;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const PreResourceImageUtil = @import("org/allbinary/image/PreResourceImageUtil.zig").PreResourceImageUtil;

pub const ChoiceGroupImageUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.ChoiceGroupImageUtil";
    var instance: ?*ChoiceGroupImageUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ChoiceGroupImageUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*ChoiceGroupImageUtil {
        return Inheritance.upcast(?*ChoiceGroupImageUtil, ChoiceGroupImageUtil.instance);
    }
    

    pub fn init(self: *Self) void {
        _ = self;
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        const choiceGroupFactory: ?*ChoiceGroupImageFactory = Inheritance.upcast(?*ChoiceGroupImageFactory, ChoiceGroupImageFactory.getInstance());
        const imageArray: []?*Image = choiceGroupFactory.?.getImageArray();
        if (Inheritance.call(features.?, "isDefault", .{ OpenGLFeatureFactory.getInstance().?.OPENGL })) {
            const preResourceImageUtil: ?*PreResourceImageUtil = Inheritance.upcast(?*PreResourceImageUtil, PreResourceImageUtil.getInstance());
            const size: i32 = @as(i32, @intCast(imageArray.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                imageArray[@intCast(index)] = Inheritance.upcast(@TypeOf(imageArray[@intCast(index)]), Inheritance.call(preResourceImageUtil.?, "encapsulate", .{ imageArray[@intCast(index)] }));
                }
            }
            _ = Inheritance.call(choiceGroupFactory.?, "init", .{ imageArray });
        }
    }
    

    pub fn update(self: *Self, gl: ?*GL) void {
        _ = self;
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        const choiceGroupFactory: ?*ChoiceGroupImageFactory = Inheritance.upcast(?*ChoiceGroupImageFactory, ChoiceGroupImageFactory.getInstance());
        const imageArray: []?*Image = choiceGroupFactory.?.getImageArray();
        if (Inheritance.call(features.?, "isDefault", .{ OpenGLFeatureFactory.getInstance().?.OPENGL })) {
            const preResourceImageUtil: ?*PreResourceImageUtil = Inheritance.upcast(?*PreResourceImageUtil, PreResourceImageUtil.getInstance());
            const size: i32 = @as(i32, @intCast(imageArray.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                _ = Inheritance.call(preResourceImageUtil.?, "updateGL", .{ gl, imageArray[@intCast(index)] });
                }
            }
        }
        _ = Inheritance.call(choiceGroupFactory.?, "init", .{ imageArray });
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn update(self: *Self, graphics: ?*Graphics) void {
        _ = self;
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        const choiceGroupFactory: ?*ChoiceGroupImageFactory = Inheritance.upcast(?*ChoiceGroupImageFactory, ChoiceGroupImageFactory.getInstance());
        const imageArray: []?*Image = choiceGroupFactory.?.getImageArray();
        if (Inheritance.call(features.?, "isDefault", .{ OpenGLFeatureFactory.getInstance().?.OPENGL })) {
            const preResourceImageUtil: ?*PreResourceImageUtil = Inheritance.upcast(?*PreResourceImageUtil, PreResourceImageUtil.getInstance());
            const size: i32 = @as(i32, @intCast(imageArray.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                _ = Inheritance.call(preResourceImageUtil.?, "update", .{ graphics, imageArray[@intCast(index)] });
                }
            }
        }
        _ = Inheritance.call(choiceGroupFactory.?, "init", .{ imageArray });
    }
};


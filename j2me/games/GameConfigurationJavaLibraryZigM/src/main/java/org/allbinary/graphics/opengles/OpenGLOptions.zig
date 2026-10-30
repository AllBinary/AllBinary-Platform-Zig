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
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GameFeatureChoiceGroups = @import("org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.zig").GameFeatureChoiceGroups;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;

pub const OpenGLOptions = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.OpenGLOptions";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn init(self: *Self) void {
        _ = self;
        const openGLFeatureFactory: ?*OpenGLFeatureFactory = Inheritance.upcast(?*OpenGLFeatureFactory, OpenGLFeatureFactory.getInstance());
        if (Inheritance.call(Features.getInstance().?, "isFeature", .{ openGLFeatureFactory.?.OPENGL_OPTIONS })) {
            const openGLMultipleList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(openGLMultipleList.?, "add", .{ openGLFeatureFactory.?.OPENGL });
            _ = Inheritance.call(GameFeatureChoiceGroups.getMultipleInstance().?, "add", .{ String.literal("OpenGL (Complete Restart)"), openGLMultipleList });
            const openGLVersionSelectorMultipleList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(openGLVersionSelectorMultipleList.?, "add", .{ openGLFeatureFactory.?.OPENGL_AUTO_SELECT });
            _ = Inheritance.call(openGLVersionSelectorMultipleList.?, "add", .{ openGLFeatureFactory.?.OPENGL_MINIMUM });
            _ = Inheritance.call(GameFeatureChoiceGroups.getExclusiveInstance().?, "add", .{ String.literal("OpenGL Version Selector"), openGLVersionSelectorMultipleList });
            const openGLImageColorMultipleList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            _ = Inheritance.call(openGLImageColorMultipleList.?, "add", .{ openGLFeatureFactory.?.IMAGE_COLOR_DEPTH_4444 });
            _ = Inheritance.call(openGLImageColorMultipleList.?, "add", .{ openGLFeatureFactory.?.IMAGE_COLOR_DEPTH_8888 });
            _ = Inheritance.call(GameFeatureChoiceGroups.getExclusiveInstance().?, "add", .{ String.literal("OpenGL Image Color RGBA"), openGLImageColorMultipleList });
        }
    }
};


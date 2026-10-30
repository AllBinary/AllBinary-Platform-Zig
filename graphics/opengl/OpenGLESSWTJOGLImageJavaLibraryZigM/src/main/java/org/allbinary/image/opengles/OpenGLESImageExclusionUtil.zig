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
// package org.allbinary.image.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const OpenGLESImageExclusionUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.opengles.OpenGLESImageExclusionUtil";
    EXCLUSION: ?*String = null,
    list: ?*BasicArrayList = null,
    var instance: ?*OpenGLESImageExclusionUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLESImageExclusionUtil.create();
    }

    fn initFields(this: *Self) void {
        this.EXCLUSION = String.literal("font");
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn getInstance() ?*OpenGLESImageExclusionUtil {
        return Inheritance.upcast(?*OpenGLESImageExclusionUtil, OpenGLESImageExclusionUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn isCustomScaling(self: *Self, image: ?*Image) bool {
        const imageName: ?*String = Inheritance.upcast(?*String, image.?.getName());
        var isNormalScaling: bool = self.list.?.size() == 0 or Inheritance.call(imageName.?, "startsWith", .{ self.EXCLUSION });
        if (isNormalScaling) {
            return false;
        } else {
            const size: i32 = self.list.?.size();
            var name: ?*String = null;
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                name = Inheritance.cast(?*String, Inheritance.call(self.list.?, "get", .{ index }));
                if (Inheritance.call(imageName.?, "startsWith", .{ name })) {
                    isNormalScaling = true;
                }
                }
            }
        }
        if (isNormalScaling) {
            return false;
        } else {
            return true;
        }
    }
};


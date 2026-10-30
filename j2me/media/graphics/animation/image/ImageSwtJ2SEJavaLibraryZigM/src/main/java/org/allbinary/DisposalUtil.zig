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
// package org.allbinary

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Resource = @import("org/eclipse/swt/graphics/Resource.zig").Resource;
const SwtMutableImage = @import("org/microemu/device/swt/SwtMutableImage.zig").SwtMutableImage;
const System = @import("java/lang/System.zig").System;

pub const DisposalUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.DisposalUtil";
    commonStrings: ?*CommonStrings = null,
    var instance: ?*DisposalUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = DisposalUtil.create();
    }

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*DisposalUtil {
        return Inheritance.upcast(?*DisposalUtil, DisposalUtil.instance);
    }
    

    pub fn disposeImage(self: *Self, image: ?*Image) void {
        if (image == null) {
            return;
        }
        if (image.?.isMutable()) {
            const mutableImage: ?*SwtMutableImage = Inheritance.cast(?*SwtMutableImage, image);
            _ = Inheritance.call(self, "disposeResource", .{ Inheritance.cast(?*Resource, mutableImage.?.getImage()) });
        } else {
        }
    }
    

    pub fn disposeResource(self: *Self, resource: ?*Resource) void {
        if (!resource.?.isDisposed()) {
            _ = std.debug.print("{s}\n", .{String.text(self.commonStrings.?.CLOSE)});
            _ = resource.?.dispose();
        }
    }
};


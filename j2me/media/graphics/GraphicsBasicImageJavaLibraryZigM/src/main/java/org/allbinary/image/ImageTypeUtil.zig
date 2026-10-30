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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const ImageTypeUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.ImageTypeUtil";
    PNG: ?*String = null,
    JPG: ?*String = null,
    GIF: ?*String = null,
    list: ?*BasicArrayList = null,
    var SINGLETON: ?*ImageTypeUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = ImageTypeUtil.create();
    }

    fn initFields(this: *Self) void {
        this.PNG = String.literal("png");
        this.JPG = String.literal("jpg");
        this.GIF = String.literal("gif");
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this.list.?, "add", .{ this.JPG });
        _ = Inheritance.call(this.list.?, "add", .{ this.GIF });
        _ = Inheritance.call(this.list.?, "add", .{ this.PNG });
        return this;
    }
    

    pub fn isSupported(self: *Self, mediaFileTypeParameter: ?*String) bool {
        var mediaFileType = mediaFileTypeParameter;
        mediaFileType = Inheritance.upcast(@TypeOf(mediaFileType), mediaFileType.?.toLowerCase());
        {
            var index: i32 = self.list.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            const name: ?*String = Inheritance.cast(?*String, Inheritance.call(self.list.?, "get", .{ index }));
            if (Inheritance.call(mediaFileType.?, "compareTo", .{ name }) == 0) {
                return true;
            }
            }
        }
        return false;
    }
    

    pub fn getInstance() ?*ImageTypeUtil {
        return Inheritance.upcast(?*ImageTypeUtil, ImageTypeUtil.SINGLETON);
    }
};


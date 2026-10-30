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
// package org.allbinary.media.image.io

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
// const IIOImage = @import("javax/imageio/IIOImage.zig").IIOImage;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CacheableInterface = @import("org/allbinary/logic/util/cache/CacheableInterface.zig").CacheableInterface;

pub const IIOImageCacheable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.io.IIOImageCacheable";
    key: ?*String = null,
    iioImage: ?*IIOImage = null,
    // Implements CacheableInterface

    fn initFields(this: *Self) void {
        
        this.iioImage = null;
    }
    

    pub fn create1(key: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.key = key;
        return this;
    }
    

    pub fn getKey(self: *Self) ?Object {
        return Inheritance.upcast(?Object, self.key);
    }
    

    pub fn setBufferedImage(self: *Self, bufferedImage: ?*BufferedImage) void {
        _ = Inheritance.call(self, "setIioImage", .{ Inheritance.callStatic(IIOImage, "create3", .{ bufferedImage, null, null }) });
    }
    

    pub fn getIioImage(self: *Self) ?*IIOImage {
        return self.iioImage;
    }
    

    pub fn setIioImage(self: *Self, iioImage: ?*IIOImage) void {
        self.iioImage = iioImage;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(self).?.class))).?))).name) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Reusable IIOImage") });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};


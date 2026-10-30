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
const ImageCache = @import("org/allbinary/image/ImageCache.zig").ImageCache;
const ImageCacheFactory = @import("org/allbinary/image/ImageCacheFactory.zig").ImageCacheFactory;

pub const GameFeatureImageCacheFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.GameFeatureImageCacheFactory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*ImageCache {
        return Inheritance.upcast(?*ImageCache, ImageCacheFactory.getInstance());
    }
    

    pub fn init() void {
        _ = ImageCacheFactory.init();
    }
    

    pub fn releaseAll() void {
        _ = Inheritance.receiverOf(ImageCacheFactory.getInstance().?, "releaseAll").releaseAll();
    }
};


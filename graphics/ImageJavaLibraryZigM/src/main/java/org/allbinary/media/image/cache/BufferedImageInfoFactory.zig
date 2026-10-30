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
// package org.allbinary.media.image.cache

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BufferedImageInfo = @import("org/allbinary/media/image/cache/BufferedImageInfo.zig").BufferedImageInfo;

pub const BufferedImageInfoFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.cache.BufferedImageInfoFactory";
    var hashMap: ?*HashMap = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        hashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(width: i32, height: i32, @"type": i32) ?*BufferedImageInfo {
        const stringbuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringbuffer.?, "appendint", .{ width });
        _ = Inheritance.call(stringbuffer.?, "appendint", .{ height });
        _ = Inheritance.call(stringbuffer.?, "appendint", .{ @"type" });
        const key: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringbuffer)));
        var bufferedImageInfo: ?*BufferedImageInfo = Inheritance.cast(?*BufferedImageInfo, Inheritance.call(BufferedImageInfoFactory.hashMap.?, "get", .{ key }));
        if (bufferedImageInfo == null) {
            bufferedImageInfo = Inheritance.callStatic(BufferedImageInfo, "create3", .{ width, height, @"type" });
            _ = Inheritance.call(BufferedImageInfoFactory.hashMap.?, "put", .{ key, bufferedImageInfo });
        }
        return bufferedImageInfo;
    }
};


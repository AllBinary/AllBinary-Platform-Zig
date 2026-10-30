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
// package org.allbinary.logic.visual.media

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const MediaDataFactory = @import("org/allbinary/logic/visual/media/MediaDataFactory.zig").MediaDataFactory;
const MediaTypeData = @import("org/allbinary/logic/visual/media/MediaTypeData.zig").MediaTypeData;

pub const MediaData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.media.MediaData";
    name: ?*String = null,
    @"type": ?*String = null,
    extension: ?*String = null,
    var hashMap: ?*HashMap = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        hashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
    }

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
    }
    

    pub fn create1(a_Name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = a_Name;
        this.extension = Inheritance.upcast(@TypeOf(this.extension), String.plus(String.literal("."), this.name));
        this.@"type" = Inheritance.upcast(@TypeOf(this.@"type"), MediaTypeData.getInstance().?.NOT_RESIZABLE_MEDIA);
        _ = Inheritance.call(MediaData.hashMap.?, "put", .{ a_Name, this });
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getType(self: *Self) ?*String {
        return self.@"type";
    }
    

    pub fn getExtension(self: *Self) ?*String {
        return self.extension;
    }
    

    pub fn isConvertableTo(self: *Self, mediaData: ?*MediaData) bool {
        if (Object.same(self, MediaDataFactory.getInstance().?.GIF) and Object.same(mediaData, MediaDataFactory.getInstance().?.JPG)) {
            return true;
        }
        return false;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.getName());
    }
    

    // throws Exception
    pub fn get(a_Name: ?*String) ?*MediaData {
        const mediaData: ?*MediaData = Inheritance.cast(?*MediaData, Inheritance.call(MediaData.hashMap.?, "get", .{ a_Name }));
        if (mediaData != null) {
            return mediaData;
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("No Such MediaData"); break :exception error.Exception; }});
        }
    }
    

    pub fn getDefault() ?*MediaData {
        return Inheritance.upcast(?*MediaData, MediaDataFactory.getInstance().?.JPG);
    }
    

    pub fn toHashMap() ?*HashMap {
        return Inheritance.upcast(?*HashMap, MediaData.hashMap);
    }
};


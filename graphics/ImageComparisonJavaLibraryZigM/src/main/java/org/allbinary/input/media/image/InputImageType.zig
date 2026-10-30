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
// package org.allbinary.input.media.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;

pub const InputImageType = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.media.image.InputImageType";
    name: ?*String = null,
    index: i32 = 0,
    var hashMap: ?*HashMap = undefined;
    var TYPE_VECTOR: ?*BasicArrayList = undefined;
    pub var CAPTURE: ?*InputImageType = undefined;
    pub var COMPARISON: ?*InputImageType = undefined;
    pub var MOTION: ?*InputImageType = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        hashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        TYPE_VECTOR = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        CAPTURE = Inheritance.callStatic(InputImageType, "create2", .{ String.literal("Capture"), 0 });
        COMPARISON = Inheritance.callStatic(InputImageType, "create2", .{ String.literal("Comparison"), 1 });
        MOTION = Inheritance.callStatic(InputImageType, "create2", .{ String.literal("Motion"), 2 });
    }

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(name: ?*String, index: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        this.index = index;
        _ = Inheritance.call(InputImageType.TYPE_VECTOR.?, "add", .{ this });
        _ = Inheritance.call(InputImageType.hashMap.?, "put", .{ this.getName(), this });
        return this;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, String.plus(String.literal("ImageType: "), self.getName()));
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getInstance(imageTypeString: ?*String) ?*InputImageType {
        return Inheritance.cast(?*InputImageType, Inheritance.call(InputImageType.hashMap.?, "get", .{ imageTypeString }));
    }
    

    pub fn getAllAsVector() ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, InputImageType.TYPE_VECTOR);
    }
    

    pub fn getIndex(self: *Self) i32 {
        return self.index;
    }
};


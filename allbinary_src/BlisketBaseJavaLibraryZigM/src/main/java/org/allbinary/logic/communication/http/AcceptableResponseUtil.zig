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
// package org.allbinary.logic.communication.http

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const AcceptableResponseFactory = @import("org/allbinary/logic/communication/http/AcceptableResponseFactory.zig").AcceptableResponseFactory;

pub const AcceptableResponseUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.AcceptableResponseUtil";
    candidateVector: ?*BasicArrayList = null,
    tagNameVector: ?*BasicArrayList = null,
    var instance: ?*AcceptableResponseUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AcceptableResponseUtil.create();
    }

    fn initFields(this: *Self) void {
        this.candidateVector = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.tagNameVector = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*AcceptableResponseUtil {
        return Inheritance.upcast(?*AcceptableResponseUtil, AcceptableResponseUtil.instance);
    }
    

    // Java static initializer: call this once at startup
    pub fn staticInitializer() void {
        _ = Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ AcceptableResponseFactory.getInstance().?.HTML });
    }
    

    pub fn get(self: *Self, index: i32) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.candidateVector.?, "get", .{ index }));
    }
    

    pub fn getTagName(self: *Self, index: i32) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.tagNameVector.?, "get", .{ index }));
    }
    

    pub fn size(self: *Self) i32 {
        return self.candidateVector.?.size();
    }
};


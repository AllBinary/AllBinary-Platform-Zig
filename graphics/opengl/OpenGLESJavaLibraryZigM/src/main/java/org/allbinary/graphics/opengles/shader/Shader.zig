// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.graphics.opengles.shader

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;

pub const Shader = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.shader.Shader";
    shaderName: ?*String = null,
    shaderStringList: ?*BasicArrayList = null,
    shaderAsString: ?*String = null,
    shaderHandle: i32 = 0,

    fn initFields(this: *Self) void {
        this.shaderName = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.shaderStringList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
        this.shaderAsString = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.shaderHandle = 0;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};


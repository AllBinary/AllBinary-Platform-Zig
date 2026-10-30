// 
// AllBinary Open License Version 1 
// Copyright (c) 2002 AllBinary 
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
// package org.allbinary.logic.control.crypt.jcehelper

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const KeySpec = @import("java/security/spec/KeySpec.zig").KeySpec;

pub const KeySpecFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.crypt.jcehelper.KeySpecFactory";
    pub const DES: ?*String = String.literal("DES");
    pub const DESEDE: ?*String = String.literal("DESede");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(algorithm: ?*String, keyData: []i8) ?*KeySpec {
        _ = algorithm;
        _ = keyData;
        return null;
    }
};


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

pub const AbCrypt = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.crypt.jcehelper.AbCrypt";
    

    pub fn create2(algorithm: ?*String, key: ?*String) *Self {
        _ = algorithm;
        _ = key;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn encrypt(self: *Self, array: []i8) []i8 {
        _ = array;
        _ = self;
        return null;
    }
    

    pub fn decrypt(self: *Self, array: []i8) []i8 {
        _ = array;
        _ = self;
        return null;
    }
    

    pub fn mutilate(self: *Self, array: []i8) []i8 {
        _ = array;
        _ = self;
        return null;
    }
};


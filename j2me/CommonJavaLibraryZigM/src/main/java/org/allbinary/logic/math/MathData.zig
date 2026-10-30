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
// package org.allbinary.logic.math

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;

pub const MathData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.math.MathData";
    EQUALS: ?*String = null,
    PLUS: ?*String = null,
    GREATER_THAN: ?*String = null,
    MINUS: ?*String = null,
    DIVIDE: ?*String = null,
    MULTIPLY: ?*String = null,
    var instance: ?*MathData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MathData.create();
    }

    fn initFields(this: *Self) void {
        
        this.PLUS = String.literal("+");
        this.GREATER_THAN = String.literal(">");
        
        
        
    }
    

    pub fn getInstance() ?*MathData {
        return Inheritance.upcast(?*MathData, MathData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.EQUALS = Inheritance.upcast(@TypeOf(this.EQUALS), commonSeps.?.EQUALS);
        this.MINUS = Inheritance.upcast(@TypeOf(this.MINUS), commonSeps.?.DASH);
        this.DIVIDE = Inheritance.upcast(@TypeOf(this.DIVIDE), commonSeps.?.FORWARD_SLASH);
        this.MULTIPLY = Inheritance.upcast(@TypeOf(this.MULTIPLY), CommonPhoneStrings.getInstance().?.STAR);
        return this;
    }
};


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
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;

pub const HttpData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.HttpData";
    EQUALS: ?*String = null,
    PARAM_SEP: ?*String = null,
    URL_PARAM_SEP: ?*String = null,
    URL_LABEL: ?*String = null,
    var instance: ?*HttpData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = HttpData.create();
    }

    fn initFields(this: *Self) void {
        
        
        
        this.URL_LABEL = String.literal("Url: ");
    }
    

    pub fn getInstance() ?*HttpData {
        return Inheritance.upcast(?*HttpData, HttpData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.EQUALS = Inheritance.upcast(@TypeOf(this.EQUALS), commonSeps.?.EQUALS);
        this.PARAM_SEP = Inheritance.upcast(@TypeOf(this.PARAM_SEP), commonSeps.?.AMPERSAND);
        this.URL_PARAM_SEP = Inheritance.upcast(@TypeOf(this.URL_PARAM_SEP), commonSeps.?.QUESTION);
        return this;
    }
};


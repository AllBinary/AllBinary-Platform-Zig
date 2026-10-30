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
// package org.allbinary.data.tree.dom

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const URIResolverStrings = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tree.dom.URIResolverStrings";
    IMPORT_URL: ?*String = null,
    ATTEMPT: ?*String = null,
    BASE: ?*String = null,
    NEW_PATH: ?*String = null,
    NOTE: ?*String = null,
    URL_GLOBAL: ?*String = null,
    REQUIRED_EXTENSION: ?*String = null,
    RESOLVE: ?*String = null,
    var instance: ?*URIResolverStrings = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = URIResolverStrings.create();
    }

    fn initFields(this: *Self) void {
        this.IMPORT_URL = String.literal("/{import url}");
        this.ATTEMPT = String.literal("attempt to use xsl:import: href=");
        this.BASE = String.literal("\nBase= ");
        this.NEW_PATH = String.literal("\nNew path= ");
        this.NOTE = String.literal("\nNote: ");
        this.URL_GLOBAL = String.literal(" is a urlglobal");
        this.REQUIRED_EXTENSION = String.literal("\nRequired Extension: ");
        this.RESOLVE = String.literal("resolve");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*URIResolverStrings {
        return Inheritance.upcast(?*URIResolverStrings, URIResolverStrings.instance);
    }
};


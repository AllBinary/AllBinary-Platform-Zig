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
// package org.allbinary.logic.communication.http.request

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const NameSpaceRequestParamData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.request.NameSpaceRequestParamData";
    pub const NAME: ?*String = String.literal("NAMESPACE_REQUESTDATA_NAME");
    pub const VALUE: ?*String = String.literal("INPUT_VALUE");
    pub const PROPERTIES: ?*String = String.literal("_PROPERTIES_");
    pub const SEP: ?*String = String.literal("_DOT_");
    pub const PROPERTIESSEPARATOR: ?*String = String.literal("_PROPDOT_");
    pub const DOCUMENT: ?*String = String.literal("NAMESPACE_REQUESTDATA_DOCUMENT");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
};


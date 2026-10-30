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
// package org.allbinary.logic.communication.smtp.queue

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DomDocumentQueueInterface = @import("org/allbinary/data/tree/dom/document/DomDocumentQueueInterface.zig").DomDocumentQueueInterface;

pub const FileEmailQueue = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.smtp.queue.FileEmailQueue";
    domDocumentQueueInterface: ?*DomDocumentQueueInterface = null,

    fn initFields(this: *Self) void {
        this.domDocumentQueueInterface = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};


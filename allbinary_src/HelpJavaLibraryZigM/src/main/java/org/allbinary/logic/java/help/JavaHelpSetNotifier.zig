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
// package org.allbinary.logic.java.help

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const URL = @import("java/net/URL.zig").URL;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const HelpSet = @import("javax/help/HelpSet.zig").HelpSet;

pub const JavaHelpSetNotifier = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.help.JavaHelpSetNotifier";
    var vector: ?*BasicArrayList = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        vector = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn get() ?*BasicArrayList {
        return Inheritance.upcast(?*BasicArrayList, JavaHelpSetNotifier.vector);
    }
    

    pub fn isNotified(helpSet: ?*HelpSet) bool {
        var isNotified_: bool = false;
        const url: ?*URL = Inheritance.upcast(?*URL, helpSet.?.getHelpSetURL());
        const size: i32 = Inheritance.receiverOf(JavaHelpSetNotifier.vector.?, "size").size();
        const urlArray: []?Object = Inheritance.receiverOf(JavaHelpSetNotifier.vector.?, "toArray").toArray();
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const nextURL: ?*URL = Inheritance.cast(?*URL, urlArray[@intCast(i)]);
            if (Inheritance.call(Object.toString(Object.of(url)).?, "compareTo", .{ Object.toString(Object.of(nextURL)) }) == 0) {
                isNotified_ = true;
            }
            }
        }
        _ = Inheritance.call(JavaHelpSetNotifier.vector.?, "add", .{ url });
        return isNotified_;
    }
};


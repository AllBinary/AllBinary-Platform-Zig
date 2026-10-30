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
// package org.allbinary.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ARunnable = @import("org/allbinary/thread/ARunnable.zig").ARunnable;
const ImageToolJFrame = @import("org/allbinary/image/gui/ImageToolJFrame.zig").ImageToolJFrame;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const ImageTool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.ImageTool";
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn main(args: []?*String) void {
        _ = args;
        _ = Inheritance.call(java.awt.?.EventQueue.?, "invokeLater", .{ ARunnable.create() // Java anonymous class body: implement it as a named type
//             
// 
//             pub fn run(self: *Self) void {
//                 const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
//                 { // try
//                     _ = Inheritance.call(logUtil.?, "putF", .{ commonStrings.?.START, self, commonStrings.?.RUN });
//                     _ = Inheritance.call(ImageToolJFrame.create(), "setVisible", .{ true });
//                 }
//                 // catch (Exception e):
// //                     _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
//             }
 });
    }
};


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
// package org.allbinary.android.view

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const View = @import("android/view/View.zig").View;
const BaseViewWrapper = @import("org/allbinary/android/view/BaseViewWrapper.zig").BaseViewWrapper;

pub const ViewWrapper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.android.view.ViewWrapper";
    base: BaseViewWrapper = undefined,
    view: ?*View = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(view: ?*View) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BaseViewWrapper.create().*;
        this.initFields();
        this.view = view;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn invalidate(self: *Self) void {
        _ = self.view.?.invalidate();
    }
    

    pub fn postInvalidate(self: *Self) void {
        _ = self.view.?.postInvalidate();
    }
};


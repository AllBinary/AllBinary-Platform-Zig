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
// package admin.tags

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PaymentTransactionResultHelperFactory = @import("admin/taghelpers/PaymentTransactionResultHelperFactory.zig").PaymentTransactionResultHelperFactory;
const TableTag = @import("admin/tags/TableTag.zig").TableTag;

pub const PaymentTransactionResultTag = struct {
    const Self = @This();
    pub const java_name = "admin.tags.PaymentTransactionResultTag";
    base: TableTag = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TableTag.create().*;
        _ = Inheritance.call(this, "setTagHelperFactory", .{ PaymentTransactionResultHelperFactory.create() });
        _ = Inheritance.call(this, "setTagRequestHelperFactory", .{ PaymentTransactionResultHelperFactory.create() });
        Inheritance.bindOverrides(this);
        return this;
    }
};


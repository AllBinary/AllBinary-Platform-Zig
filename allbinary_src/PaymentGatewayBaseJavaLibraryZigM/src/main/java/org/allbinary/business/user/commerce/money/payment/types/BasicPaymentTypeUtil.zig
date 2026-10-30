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
// package org.allbinary.business.user.commerce.money.payment.types

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const BasicPaymentType = @import("org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType.zig").BasicPaymentType;

pub const BasicPaymentTypeUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil";
    paymentTypeVector: ?*BasicArrayList = null,
    var instance: ?*BasicPaymentTypeUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BasicPaymentTypeUtil.create();
    }

    fn initFields(this: *Self) void {
        this.paymentTypeVector = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    // Java static initializer: call this once at startup
    pub fn staticInitializer() void {
    }
    

    pub fn getInstance() ?*BasicPaymentTypeUtil {
        return Inheritance.upcast(?*BasicPaymentTypeUtil, BasicPaymentTypeUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn add(self: *Self, paymentType: ?*BasicPaymentType) void {
        _ = Inheritance.call(self.paymentTypeVector.?, "add", .{ paymentType });
    }
    

    // throws Exception
    pub fn get(self: *Self, paymentTypeString: ?*String) ?*BasicPaymentType {
        const size: i32 = self.paymentTypeVector.?.size();
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const paymentType: ?*BasicPaymentType = Inheritance.cast(?*BasicPaymentType, Inheritance.call(self.paymentTypeVector.?, "get", .{ i }));
            if (Inheritance.call(paymentType.?.getName().?, "compareTo", .{ paymentTypeString }) == 0) {
                return paymentType;
            }
            }
        }
        std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("Unknown PaymentType: "), paymentTypeString); break :exception error.Exception; }});
    }
    

    pub fn isContain(self: *Self, paymentType: ?*BasicPaymentType) bool {
        return Inheritance.call(self.paymentTypeVector.?, "contains", .{ paymentType });
    }
    

    pub fn difference(self: *Self, a_PaymentTypeVector: ?*BasicArrayList) ?*BasicArrayList {
        const diff: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const size: i32 = self.paymentTypeVector.?.size();
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const paymentType: ?*BasicPaymentType = Inheritance.cast(?*BasicPaymentType, Inheritance.call(self.paymentTypeVector.?, "get", .{ i }));
            if (!Inheritance.call(a_PaymentTypeVector.?, "contains", .{ paymentType })) {
                _ = Inheritance.call(diff.?, "add", .{ paymentType });
            }
            }
        }
        return diff;
    }
};


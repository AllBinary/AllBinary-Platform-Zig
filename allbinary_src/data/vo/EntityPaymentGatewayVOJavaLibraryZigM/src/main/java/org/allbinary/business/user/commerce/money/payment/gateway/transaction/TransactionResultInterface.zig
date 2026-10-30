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
// package org.allbinary.business.user.commerce.money.payment.gateway.transaction

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

// Java interface: an implementation is a pointer and a table of functions
pub const TransactionResultInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getValuesFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,
    getResultFn: *const fn (pointer: *anyopaque) ?*String,
    getPnRefFn: *const fn (pointer: *anyopaque) ?*String,
    getRespMsgFn: *const fn (pointer: *anyopaque) ?*String,
    getAvsAddrFn: *const fn (pointer: *anyopaque) ?*String,
    getAvsZipFn: *const fn (pointer: *anyopaque) ?*String,
    getOrigResultFn: *const fn (pointer: *anyopaque) ?*String,
    getStatusFn: *const fn (pointer: *anyopaque) ?*String,
    getFraudCodeFn: *const fn (pointer: *anyopaque) ?*String,
    getFraudMsgFn: *const fn (pointer: *anyopaque) ?*String,
    getErrCodeFn: *const fn (pointer: *anyopaque) ?*String,
    getScoreFn: *const fn (pointer: *anyopaque) ?*String,
    getReason1Fn: *const fn (pointer: *anyopaque) ?*String,
    getReason2Fn: *const fn (pointer: *anyopaque) ?*String,
    getReason3Fn: *const fn (pointer: *anyopaque) ?*String,
    getException1Fn: *const fn (pointer: *anyopaque) ?*String,
    getException2Fn: *const fn (pointer: *anyopaque) ?*String,
    getException3Fn: *const fn (pointer: *anyopaque) ?*String,
    getException4Fn: *const fn (pointer: *anyopaque) ?*String,
    getException5Fn: *const fn (pointer: *anyopaque) ?*String,
    getException6Fn: *const fn (pointer: *anyopaque) ?*String,
    getException7Fn: *const fn (pointer: *anyopaque) ?*String,

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    pub fn getValues(self: *Self) ?*BasicArrayList {
        return self.getValuesFn(self.pointer);
    }

    pub fn getResult(self: *Self) ?*String {
        return self.getResultFn(self.pointer);
    }

    pub fn getPnRef(self: *Self) ?*String {
        return self.getPnRefFn(self.pointer);
    }

    pub fn getRespMsg(self: *Self) ?*String {
        return self.getRespMsgFn(self.pointer);
    }

    pub fn getAvsAddr(self: *Self) ?*String {
        return self.getAvsAddrFn(self.pointer);
    }

    pub fn getAvsZip(self: *Self) ?*String {
        return self.getAvsZipFn(self.pointer);
    }

    pub fn getOrigResult(self: *Self) ?*String {
        return self.getOrigResultFn(self.pointer);
    }

    pub fn getStatus(self: *Self) ?*String {
        return self.getStatusFn(self.pointer);
    }

    pub fn getFraudCode(self: *Self) ?*String {
        return self.getFraudCodeFn(self.pointer);
    }

    pub fn getFraudMsg(self: *Self) ?*String {
        return self.getFraudMsgFn(self.pointer);
    }

    pub fn getErrCode(self: *Self) ?*String {
        return self.getErrCodeFn(self.pointer);
    }

    pub fn getScore(self: *Self) ?*String {
        return self.getScoreFn(self.pointer);
    }

    pub fn getReason1(self: *Self) ?*String {
        return self.getReason1Fn(self.pointer);
    }

    pub fn getReason2(self: *Self) ?*String {
        return self.getReason2Fn(self.pointer);
    }

    pub fn getReason3(self: *Self) ?*String {
        return self.getReason3Fn(self.pointer);
    }

    pub fn getException1(self: *Self) ?*String {
        return self.getException1Fn(self.pointer);
    }

    pub fn getException2(self: *Self) ?*String {
        return self.getException2Fn(self.pointer);
    }

    pub fn getException3(self: *Self) ?*String {
        return self.getException3Fn(self.pointer);
    }

    pub fn getException4(self: *Self) ?*String {
        return self.getException4Fn(self.pointer);
    }

    pub fn getException5(self: *Self) ?*String {
        return self.getException5Fn(self.pointer);
    }

    pub fn getException6(self: *Self) ?*String {
        return self.getException6Fn(self.pointer);
    }

    pub fn getException7(self: *Self) ?*String {
        return self.getException7Fn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "toString").toString());
            }
            fn getValues(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getValues").getValues());
            }
            fn getResult(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getResult").getResult());
            }
            fn getPnRef(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPnRef").getPnRef());
            }
            fn getRespMsg(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getRespMsg").getRespMsg());
            }
            fn getAvsAddr(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getAvsAddr").getAvsAddr());
            }
            fn getAvsZip(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getAvsZip").getAvsZip());
            }
            fn getOrigResult(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getOrigResult").getOrigResult());
            }
            fn getStatus(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getStatus").getStatus());
            }
            fn getFraudCode(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getFraudCode").getFraudCode());
            }
            fn getFraudMsg(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getFraudMsg").getFraudMsg());
            }
            fn getErrCode(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getErrCode").getErrCode());
            }
            fn getScore(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getScore").getScore());
            }
            fn getReason1(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getReason1").getReason1());
            }
            fn getReason2(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getReason2").getReason2());
            }
            fn getReason3(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getReason3").getReason3());
            }
            fn getException1(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getException1").getException1());
            }
            fn getException2(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getException2").getException2());
            }
            fn getException3(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getException3").getException3());
            }
            fn getException4(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getException4").getException4());
            }
            fn getException5(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getException5").getException5());
            }
            fn getException6(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getException6").getException6());
            }
            fn getException7(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getException7").getException7());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getValuesFn = Methods.getValues, .getResultFn = Methods.getResult, .getPnRefFn = Methods.getPnRef, .getRespMsgFn = Methods.getRespMsg, .getAvsAddrFn = Methods.getAvsAddr, .getAvsZipFn = Methods.getAvsZip, .getOrigResultFn = Methods.getOrigResult, .getStatusFn = Methods.getStatus, .getFraudCodeFn = Methods.getFraudCode, .getFraudMsgFn = Methods.getFraudMsg, .getErrCodeFn = Methods.getErrCode, .getScoreFn = Methods.getScore, .getReason1Fn = Methods.getReason1, .getReason2Fn = Methods.getReason2, .getReason3Fn = Methods.getReason3, .getException1Fn = Methods.getException1, .getException2Fn = Methods.getException2, .getException3Fn = Methods.getException3, .getException4Fn = Methods.getException4, .getException5Fn = Methods.getException5, .getException6Fn = Methods.getException6, .getException7Fn = Methods.getException7 };
        return this;
    }
};


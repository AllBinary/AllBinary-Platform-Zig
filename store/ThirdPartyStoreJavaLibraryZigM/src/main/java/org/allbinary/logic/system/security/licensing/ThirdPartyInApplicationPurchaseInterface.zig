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
// package org.allbinary.logic.system.security.licensing

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LockableFeature = @import("org/allbinary/logic/system/security/licensing/LockableFeature.zig").LockableFeature;

// Java interface: an implementation is a pointer and a table of functions
pub const ThirdPartyInApplicationPurchaseInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchaseInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    isPurchasedFn: *const fn (pointer: *anyopaque, lockableFeature: ?*LockableFeature) bool,
    onCreateFn: *const fn (pointer: *anyopaque, anyType: ?Object, stateObject: ?Object) void,
    onDestroyFn: *const fn (pointer: *anyopaque) void,
    onStartFn: *const fn (pointer: *anyopaque) void,
    onActivityResultFn: *const fn (pointer: *anyopaque, requestCode: i32, resultCode: i32, dataObject: ?Object) void,
    onSaveInstanceStateFn: *const fn (pointer: *anyopaque, anyType: ?Object) void,
    onStopFn: *const fn (pointer: *anyopaque) void,
    requestPurchaseFn: *const fn (pointer: *anyopaque, lockableFeature: ?*LockableFeature) void,
    requestReceiptsFn: *const fn (pointer: *anyopaque) void,
    addFn: *const fn (pointer: *anyopaque, lockableFeature: ?*LockableFeature) void,
    getUserNameFn: *const fn (pointer: *anyopaque) ?*String,
    isEnabledFn: *const fn (pointer: *anyopaque) bool,

    pub fn isPurchased(self: *Self, lockableFeature: ?*LockableFeature) bool {
        return self.isPurchasedFn(self.pointer, lockableFeature);
    }

    pub fn onCreate(self: *Self, anyType: ?Object, stateObject: ?Object) void {
        return self.onCreateFn(self.pointer, anyType, stateObject);
    }

    pub fn onDestroy(self: *Self) void {
        return self.onDestroyFn(self.pointer);
    }

    pub fn onStart(self: *Self) void {
        return self.onStartFn(self.pointer);
    }

    pub fn onActivityResult(self: *Self, requestCode: i32, resultCode: i32, dataObject: ?Object) void {
        return self.onActivityResultFn(self.pointer, requestCode, resultCode, dataObject);
    }

    pub fn onSaveInstanceState(self: *Self, anyType: ?Object) void {
        return self.onSaveInstanceStateFn(self.pointer, anyType);
    }

    pub fn onStop(self: *Self) void {
        return self.onStopFn(self.pointer);
    }

    pub fn requestPurchase(self: *Self, lockableFeature: ?*LockableFeature) void {
        return self.requestPurchaseFn(self.pointer, lockableFeature);
    }

    pub fn requestReceipts(self: *Self) void {
        return self.requestReceiptsFn(self.pointer);
    }

    pub fn add(self: *Self, lockableFeature: ?*LockableFeature) void {
        return self.addFn(self.pointer, lockableFeature);
    }

    pub fn getUserName(self: *Self) ?*String {
        return self.getUserNameFn(self.pointer);
    }

    pub fn isEnabled(self: *Self) bool {
        return self.isEnabledFn(self.pointer);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return String.valueOf(implementation);
            }
            fn isPurchased(pointer: *anyopaque, lockableFeature: ?*LockableFeature) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isPurchased").isPurchased(lockableFeature);
            }
            fn onCreate(pointer: *anyopaque, anyType: ?Object, stateObject: ?Object) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onCreate").onCreate(anyType, stateObject);
            }
            fn onDestroy(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onDestroy").onDestroy();
            }
            fn onStart(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onStart").onStart();
            }
            fn onActivityResult(pointer: *anyopaque, requestCode: i32, resultCode: i32, dataObject: ?Object) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onActivityResult").onActivityResult(requestCode, resultCode, dataObject);
            }
            fn onSaveInstanceState(pointer: *anyopaque, anyType: ?Object) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onSaveInstanceState").onSaveInstanceState(anyType);
            }
            fn onStop(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "onStop").onStop();
            }
            fn requestPurchase(pointer: *anyopaque, lockableFeature: ?*LockableFeature) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "requestPurchase").requestPurchase(lockableFeature);
            }
            fn requestReceipts(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "requestReceipts").requestReceipts();
            }
            fn add(pointer: *anyopaque, lockableFeature: ?*LockableFeature) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "add").add(lockableFeature);
            }
            fn getUserName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getUserName").getUserName());
            }
            fn isEnabled(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isEnabled").isEnabled();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .isPurchasedFn = Methods.isPurchased, .onCreateFn = Methods.onCreate, .onDestroyFn = Methods.onDestroy, .onStartFn = Methods.onStart, .onActivityResultFn = Methods.onActivityResult, .onSaveInstanceStateFn = Methods.onSaveInstanceState, .onStopFn = Methods.onStop, .requestPurchaseFn = Methods.requestPurchase, .requestReceiptsFn = Methods.requestReceipts, .addFn = Methods.add, .getUserNameFn = Methods.getUserName, .isEnabledFn = Methods.isEnabled };
        return this;
    }
};


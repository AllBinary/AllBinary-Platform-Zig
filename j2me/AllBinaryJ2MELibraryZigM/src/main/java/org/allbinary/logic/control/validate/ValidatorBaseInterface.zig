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
// package org.allbinary.logic.control.validate

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

// Java interface: an implementation is a pointer and a table of functions
pub const ValidatorBaseInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.validate.ValidatorBaseInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    isValidFn: *const fn (pointer: *anyopaque) ?*Boolean,
    validationInfoFn: *const fn (pointer: *anyopaque) ?*String,
    toHashtableFn: *const fn (pointer: *anyopaque) ?*ABHashtable,
    toListFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,

    pub fn isValid(self: *Self) ?*Boolean {
        return self.isValidFn(self.pointer);
    }

    pub fn validationInfo(self: *Self) ?*String {
        return self.validationInfoFn(self.pointer);
    }

    pub fn toHashtable(self: *Self) ?*ABHashtable {
        return self.toHashtableFn(self.pointer);
    }

    pub fn toList(self: *Self) ?*BasicArrayList {
        return self.toListFn(self.pointer);
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
            fn isValid(pointer: *anyopaque) ?*Boolean {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Boolean, Inheritance.receiver(implementation, "isValid").isValid());
            }
            fn validationInfo(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "validationInfo").validationInfo());
            }
            fn toHashtable(pointer: *anyopaque) ?*ABHashtable {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*ABHashtable, Inheritance.receiver(implementation, "toHashtable").toHashtable());
            }
            fn toList(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "toList").toList());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .isValidFn = Methods.isValid, .validationInfoFn = Methods.validationInfo, .toHashtableFn = Methods.toHashtable, .toListFn = Methods.toList };
        return this;
    }
};


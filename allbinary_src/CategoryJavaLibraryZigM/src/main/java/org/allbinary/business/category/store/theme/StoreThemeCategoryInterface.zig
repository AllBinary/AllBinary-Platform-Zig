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
// package org.allbinary.business.category.store.theme

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const CategoryInterface = @import("org/allbinary/business/category/CategoryInterface.zig").CategoryInterface;
const TableMappingInterface = @import("org/allbinary/data/tables/TableMappingInterface.zig").TableMappingInterface;
const ValidationInterface = @import("org/allbinary/logic/control/validate/ValidationInterface.zig").ValidationInterface;
const ThemeValidation = @import("org/allbinary/logic/visual/theme/ThemeValidation.zig").ThemeValidation;
const CompositeTransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/CompositeTransformInfoInterface.zig").CompositeTransformInfoInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const StoreThemeCategoryInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.category.store.theme.StoreThemeCategoryInterface";
    pointer: *anyopaque,
    object: Object,
    base: CategoryInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    addThemeFn: *const fn (pointer: *anyopaque, themeValidation: ?*ThemeValidation) void,
    getThemesFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,

    pub fn addTheme(self: *Self, themeValidation: ?*ThemeValidation) void {
        return self.addThemeFn(self.pointer, themeValidation);
    }

    pub fn getThemes(self: *Self) ?*BasicArrayList {
        return self.getThemesFn(self.pointer);
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
            fn addTheme(pointer: *anyopaque, themeValidation: ?*ThemeValidation) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "addTheme").addTheme(themeValidation);
            }
            fn getThemes(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getThemes").getThemes());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = CategoryInterface.of(object).?.*, .toStringFn = Methods.toString, .addThemeFn = Methods.addTheme, .getThemesFn = Methods.getThemes };
        return this;
    }
};


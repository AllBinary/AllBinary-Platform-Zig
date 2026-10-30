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
// package org.allbinary.logic.visual.transform.info.objectConfig

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const DomDocumentMappingInterface = @import("org/allbinary/data/tree/dom/document/mapping/DomDocumentMappingInterface.zig").DomDocumentMappingInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const TransformInfoObjectConfigInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface";
    pointer: *anyopaque,
    object: Object,
    base: DomDocumentMappingInterface,
    containsViewFn: *const fn (pointer: *anyopaque, transformInfoInterface: ?*TransformInfoInterface) bool,
    getNameFn: *const fn (pointer: *anyopaque) ?*String,
    getTransformsGroupFn: *const fn (pointer: *anyopaque, group: ?*String) ?*BasicArrayList,
    getTransformsFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,
    getParentTransformsFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,
    getGroupTransformsFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,
    getOutputTypeNameFn: *const fn (pointer: *anyopaque) ?*String,
    setOutputTypeNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    getInputOutputTypeNameFn: *const fn (pointer: *anyopaque) ?*String,
    getInputOutputTypeFileFn: *const fn (pointer: *anyopaque) ?*String,
    getImportUriPathFn: *const fn (pointer: *anyopaque) ?*String,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,

    pub fn containsView(self: *Self, transformInfoInterface: ?*TransformInfoInterface) bool {
        return self.containsViewFn(self.pointer, transformInfoInterface);
    }

    pub fn getName(self: *Self) ?*String {
        return self.getNameFn(self.pointer);
    }

    pub fn getTransformsGroup(self: *Self, group: ?*String) ?*BasicArrayList {
        return self.getTransformsGroupFn(self.pointer, group);
    }

    pub fn getTransforms(self: *Self) ?*BasicArrayList {
        return self.getTransformsFn(self.pointer);
    }

    pub fn getParentTransforms(self: *Self) ?*BasicArrayList {
        return self.getParentTransformsFn(self.pointer);
    }

    pub fn getGroupTransforms(self: *Self) ?*BasicArrayList {
        return self.getGroupTransformsFn(self.pointer);
    }

    pub fn getOutputTypeName(self: *Self) ?*String {
        return self.getOutputTypeNameFn(self.pointer);
    }

    pub fn setOutputTypeName(self: *Self, value: ?*String) void {
        return self.setOutputTypeNameFn(self.pointer, value);
    }

    pub fn getInputOutputTypeName(self: *Self) ?*String {
        return self.getInputOutputTypeNameFn(self.pointer);
    }

    pub fn getInputOutputTypeFile(self: *Self) ?*String {
        return self.getInputOutputTypeFileFn(self.pointer);
    }

    pub fn getImportUriPath(self: *Self) ?*String {
        return self.getImportUriPathFn(self.pointer);
    }

    pub fn toString(self: *Self) ?*String {
        return self.toStringFn(self.pointer);
    }

    // The interface value of an object with the methods. Like a Java class a method can be declared by the object or a superclass.
    pub fn of(object: anytype) ?*Self {
        const Implementation = @TypeOf(object);
        const Methods = struct {
            fn containsView(pointer: *anyopaque, transformInfoInterface: ?*TransformInfoInterface) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "containsView").containsView(transformInfoInterface);
            }
            fn getName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getName").getName());
            }
            fn getTransformsGroup(pointer: *anyopaque, group: ?*String) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getTransformsGroup").getTransformsGroup(group));
            }
            fn getTransforms(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getTransforms").getTransforms());
            }
            fn getParentTransforms(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getParentTransforms").getParentTransforms());
            }
            fn getGroupTransforms(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getGroupTransforms").getGroupTransforms());
            }
            fn getOutputTypeName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getOutputTypeName").getOutputTypeName());
            }
            fn setOutputTypeName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setOutputTypeName").setOutputTypeName(value);
            }
            fn getInputOutputTypeName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getInputOutputTypeName").getInputOutputTypeName());
            }
            fn getInputOutputTypeFile(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getInputOutputTypeFile").getInputOutputTypeFile());
            }
            fn getImportUriPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getImportUriPath").getImportUriPath());
            }
            fn toString(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "toString").toString());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = DomDocumentMappingInterface.of(object).?.*, .containsViewFn = Methods.containsView, .getNameFn = Methods.getName, .getTransformsGroupFn = Methods.getTransformsGroup, .getTransformsFn = Methods.getTransforms, .getParentTransformsFn = Methods.getParentTransforms, .getGroupTransformsFn = Methods.getGroupTransforms, .getOutputTypeNameFn = Methods.getOutputTypeName, .setOutputTypeNameFn = Methods.setOutputTypeName, .getInputOutputTypeNameFn = Methods.getInputOutputTypeName, .getInputOutputTypeFileFn = Methods.getInputOutputTypeFile, .getImportUriPathFn = Methods.getImportUriPath, .toStringFn = Methods.toString };
        return this;
    }
};


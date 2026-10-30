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
// package org.allbinary.logic.visual.transform.info

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const TableMappingInterface = @import("org/allbinary/data/tables/TableMappingInterface.zig").TableMappingInterface;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const TransformInfoObjectConfigInterface = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface.zig").TransformInfoObjectConfigInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;

// Java interface: an implementation is a pointer and a table of functions
pub const TransformInfoInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.TransformInfoInterface";
    pointer: *anyopaque,
    object: Object,
    base: TableMappingInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    logFn: *const fn (pointer: *anyopaque) ?*String,
    overrideFn: *const fn (pointer: *anyopaque, hashMap: ?*HashMap) void,
    getNameFn: *const fn (pointer: *anyopaque) ?*String,
    setStoreNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    getStoreNameFn: *const fn (pointer: *anyopaque) ?*String,
    getObjectFileFn: *const fn (pointer: *anyopaque) ?*String,
    getObjectFn: *const fn (pointer: *anyopaque) ?Object,
    getTemplateFilePathFn: *const fn (pointer: *anyopaque) ?*AbPath,
    getTemplateFileFn: *const fn (pointer: *anyopaque) ?*String,
    getTemplateFn: *const fn (pointer: *anyopaque) ?*String,
    getDataFilePathFn: *const fn (pointer: *anyopaque) ?*AbPath,
    getDataFileFn: *const fn (pointer: *anyopaque) ?*String,
    getDataDocumentFn: *const fn (pointer: *anyopaque) ?*Document,
    setNameFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setObjectFileFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setObjectFn: *const fn (pointer: *anyopaque, anyType: ?Object) void,
    setObjectConfigInterfaceFn: *const fn (pointer: *anyopaque, transformInfoObjectConfigInterface: ?*TransformInfoObjectConfigInterface) void,
    getObjectConfigInterfaceFn: *const fn (pointer: *anyopaque) ?*TransformInfoObjectConfigInterface,
    setTemplateFileFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setTemplateFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setDataFileFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setDataFn: *const fn (pointer: *anyopaque, value: ?*String) void,
    setChildFn: *const fn (pointer: *anyopaque) void,
    isChildFn: *const fn (pointer: *anyopaque) bool,

    pub fn log(self: *Self) ?*String {
        return self.logFn(self.pointer);
    }

    pub fn override(self: *Self, hashMap: ?*HashMap) void {
        return self.overrideFn(self.pointer, hashMap);
    }

    pub fn getName(self: *Self) ?*String {
        return self.getNameFn(self.pointer);
    }

    pub fn setStoreName(self: *Self, value: ?*String) void {
        return self.setStoreNameFn(self.pointer, value);
    }

    pub fn getStoreName(self: *Self) ?*String {
        return self.getStoreNameFn(self.pointer);
    }

    pub fn getObjectFile(self: *Self) ?*String {
        return self.getObjectFileFn(self.pointer);
    }

    pub fn getObject(self: *Self) ?Object {
        return self.getObjectFn(self.pointer);
    }

    pub fn getTemplateFilePath(self: *Self) ?*AbPath {
        return self.getTemplateFilePathFn(self.pointer);
    }

    pub fn getTemplateFile(self: *Self) ?*String {
        return self.getTemplateFileFn(self.pointer);
    }

    pub fn getTemplate(self: *Self) ?*String {
        return self.getTemplateFn(self.pointer);
    }

    pub fn getDataFilePath(self: *Self) ?*AbPath {
        return self.getDataFilePathFn(self.pointer);
    }

    pub fn getDataFile(self: *Self) ?*String {
        return self.getDataFileFn(self.pointer);
    }

    pub fn getDataDocument(self: *Self) ?*Document {
        return self.getDataDocumentFn(self.pointer);
    }

    pub fn setName(self: *Self, value: ?*String) void {
        return self.setNameFn(self.pointer, value);
    }

    pub fn setObjectFile(self: *Self, value: ?*String) void {
        return self.setObjectFileFn(self.pointer, value);
    }

    pub fn setObject(self: *Self, anyType: ?Object) void {
        return self.setObjectFn(self.pointer, anyType);
    }

    pub fn setObjectConfigInterface(self: *Self, transformInfoObjectConfigInterface: ?*TransformInfoObjectConfigInterface) void {
        return self.setObjectConfigInterfaceFn(self.pointer, transformInfoObjectConfigInterface);
    }

    pub fn getObjectConfigInterface(self: *Self) ?*TransformInfoObjectConfigInterface {
        return self.getObjectConfigInterfaceFn(self.pointer);
    }

    pub fn setTemplateFile(self: *Self, value: ?*String) void {
        return self.setTemplateFileFn(self.pointer, value);
    }

    pub fn setTemplate(self: *Self, value: ?*String) void {
        return self.setTemplateFn(self.pointer, value);
    }

    pub fn setDataFile(self: *Self, value: ?*String) void {
        return self.setDataFileFn(self.pointer, value);
    }

    pub fn setData(self: *Self, value: ?*String) void {
        return self.setDataFn(self.pointer, value);
    }

    pub fn setChild(self: *Self) void {
        return self.setChildFn(self.pointer);
    }

    pub fn isChild(self: *Self) bool {
        return self.isChildFn(self.pointer);
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
            fn log(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "log").log());
            }
            fn override(pointer: *anyopaque, hashMap: ?*HashMap) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "override").override(hashMap);
            }
            fn getName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getName").getName());
            }
            fn setStoreName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setStoreName").setStoreName(value);
            }
            fn getStoreName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getStoreName").getStoreName());
            }
            fn getObjectFile(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getObjectFile").getObjectFile());
            }
            fn getObject(pointer: *anyopaque) ?Object {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?Object, Inheritance.receiver(implementation, "getObject").getObject());
            }
            fn getTemplateFilePath(pointer: *anyopaque) ?*AbPath {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AbPath, Inheritance.receiver(implementation, "getTemplateFilePath").getTemplateFilePath());
            }
            fn getTemplateFile(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTemplateFile").getTemplateFile());
            }
            fn getTemplate(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTemplate").getTemplate());
            }
            fn getDataFilePath(pointer: *anyopaque) ?*AbPath {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*AbPath, Inheritance.receiver(implementation, "getDataFilePath").getDataFilePath());
            }
            fn getDataFile(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getDataFile").getDataFile());
            }
            fn getDataDocument(pointer: *anyopaque) ?*Document {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Document, Inheritance.receiver(implementation, "getDataDocument").getDataDocument());
            }
            fn setName(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setName").setName(value);
            }
            fn setObjectFile(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setObjectFile").setObjectFile(value);
            }
            fn setObject(pointer: *anyopaque, anyType: ?Object) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setObject").setObject(anyType);
            }
            fn setObjectConfigInterface(pointer: *anyopaque, transformInfoObjectConfigInterface: ?*TransformInfoObjectConfigInterface) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setObjectConfigInterface").setObjectConfigInterface(transformInfoObjectConfigInterface);
            }
            fn getObjectConfigInterface(pointer: *anyopaque) ?*TransformInfoObjectConfigInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*TransformInfoObjectConfigInterface, Inheritance.receiver(implementation, "getObjectConfigInterface").getObjectConfigInterface());
            }
            fn setTemplateFile(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTemplateFile").setTemplateFile(value);
            }
            fn setTemplate(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setTemplate").setTemplate(value);
            }
            fn setDataFile(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setDataFile").setDataFile(value);
            }
            fn setData(pointer: *anyopaque, value: ?*String) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setData").setData(value);
            }
            fn setChild(pointer: *anyopaque) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setChild").setChild();
            }
            fn isChild(pointer: *anyopaque) bool {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "isChild").isChild();
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = TableMappingInterface.of(object).?.*, .toStringFn = Methods.toString, .logFn = Methods.log, .overrideFn = Methods.override, .getNameFn = Methods.getName, .setStoreNameFn = Methods.setStoreName, .getStoreNameFn = Methods.getStoreName, .getObjectFileFn = Methods.getObjectFile, .getObjectFn = Methods.getObject, .getTemplateFilePathFn = Methods.getTemplateFilePath, .getTemplateFileFn = Methods.getTemplateFile, .getTemplateFn = Methods.getTemplate, .getDataFilePathFn = Methods.getDataFilePath, .getDataFileFn = Methods.getDataFile, .getDataDocumentFn = Methods.getDataDocument, .setNameFn = Methods.setName, .setObjectFileFn = Methods.setObjectFile, .setObjectFn = Methods.setObject, .setObjectConfigInterfaceFn = Methods.setObjectConfigInterface, .getObjectConfigInterfaceFn = Methods.getObjectConfigInterface, .setTemplateFileFn = Methods.setTemplateFile, .setTemplateFn = Methods.setTemplate, .setDataFileFn = Methods.setDataFile, .setDataFn = Methods.setData, .setChildFn = Methods.setChild, .isChildFn = Methods.isChild };
        return this;
    }
};


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
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const TransformInfoObjectConfigInterface = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface.zig").TransformInfoObjectConfigInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const TransformInfoObjectConfigAndManipulatorFactoryInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getInstanceFn: *const fn (pointer: *anyopaque, abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface, objectConfigFileAbPath: ?*AbPath) ?*TransformInfoObjectConfigInterface,
    getInstanceFn: *const fn (pointer: *anyopaque, abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface) ?*TransformInfoObjectConfigInterface,
    getInstanceFn: *const fn (pointer: *anyopaque, abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface, document: ?*Document) ?*TransformInfoObjectConfigInterface,

    pub fn getInstance(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface, objectConfigFileAbPath: ?*AbPath) ?*TransformInfoObjectConfigInterface {
        return self.getInstanceFn(self.pointer, abeClientInformation, transformInfoInterface, objectConfigFileAbPath);
    }

    pub fn getInstance(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface) ?*TransformInfoObjectConfigInterface {
        return self.getInstanceFn(self.pointer, abeClientInformation, transformInfoInterface);
    }

    pub fn getInstance(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface, document: ?*Document) ?*TransformInfoObjectConfigInterface {
        return self.getInstanceFn(self.pointer, abeClientInformation, transformInfoInterface, document);
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
            fn getInstance(pointer: *anyopaque, abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface, objectConfigFileAbPath: ?*AbPath) ?*TransformInfoObjectConfigInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*TransformInfoObjectConfigInterface, Inheritance.receiver(implementation, "getInstance").getInstance(abeClientInformation, transformInfoInterface, objectConfigFileAbPath));
            }
            fn getInstance(pointer: *anyopaque, abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface) ?*TransformInfoObjectConfigInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*TransformInfoObjectConfigInterface, Inheritance.receiver(implementation, "getInstance").getInstance(abeClientInformation, transformInfoInterface));
            }
            fn getInstance(pointer: *anyopaque, abeClientInformation: ?*AbeClientInformationInterface, transformInfoInterface: ?*TransformInfoInterface, document: ?*Document) ?*TransformInfoObjectConfigInterface {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*TransformInfoObjectConfigInterface, Inheritance.receiver(implementation, "getInstance").getInstance(abeClientInformation, transformInfoInterface, document));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getInstanceFn = Methods.getInstance, .getInstanceFn = Methods.getInstance, .getInstanceFn = Methods.getInstance };
        return this;
    }
};


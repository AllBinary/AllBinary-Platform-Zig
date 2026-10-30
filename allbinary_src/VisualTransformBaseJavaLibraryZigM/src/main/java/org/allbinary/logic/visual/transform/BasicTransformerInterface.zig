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
// package org.allbinary.logic.visual.transform

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const InputStream = @import("java/io/InputStream.zig").InputStream;
// const URIResolver = @import("javax/xml/transform/URIResolver.zig").URIResolver;
// const StreamSource = @import("javax/xml/transform/stream/StreamSource.zig").StreamSource;
const CompositeTransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/CompositeTransformInfoInterface.zig").CompositeTransformInfoInterface;

// Java interface: an implementation is a pointer and a table of functions
pub const BasicTransformerInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.BasicTransformerInterface";
    pointer: *anyopaque,
    object: Object,
    base: CompositeTransformInfoInterface,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    setInputStreamFn: *const fn (pointer: *anyopaque, inputStream: ?*InputStream) void,
    setURIResolverFn: *const fn (pointer: *anyopaque, uriResolver: ?*URIResolver) void,
    getStreamSourceFn: *const fn (pointer: *anyopaque) ?*StreamSource,
    getInputStreamFn: *const fn (pointer: *anyopaque) ?*InputStream,
    getURIResolverFn: *const fn (pointer: *anyopaque) ?*URIResolver,
    translateFn: *const fn (pointer: *anyopaque, xmlDocumentStr: ?*String) ?*String,

    pub fn setInputStream(self: *Self, inputStream: ?*InputStream) void {
        return self.setInputStreamFn(self.pointer, inputStream);
    }

    pub fn setURIResolver(self: *Self, uriResolver: ?*URIResolver) void {
        return self.setURIResolverFn(self.pointer, uriResolver);
    }

    pub fn getStreamSource(self: *Self) ?*StreamSource {
        return self.getStreamSourceFn(self.pointer);
    }

    pub fn getInputStream(self: *Self) ?*InputStream {
        return self.getInputStreamFn(self.pointer);
    }

    pub fn getURIResolver(self: *Self) ?*URIResolver {
        return self.getURIResolverFn(self.pointer);
    }

    pub fn translate(self: *Self, xmlDocumentStr: ?*String) ?*String {
        return self.translateFn(self.pointer, xmlDocumentStr);
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
            fn setInputStream(pointer: *anyopaque, inputStream: ?*InputStream) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setInputStream").setInputStream(inputStream);
            }
            fn setURIResolver(pointer: *anyopaque, uriResolver: ?*URIResolver) void {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "setURIResolver").setURIResolver(uriResolver);
            }
            fn getStreamSource(pointer: *anyopaque) ?*StreamSource {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*StreamSource, Inheritance.receiver(implementation, "getStreamSource").getStreamSource());
            }
            fn getInputStream(pointer: *anyopaque) ?*InputStream {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*InputStream, Inheritance.receiver(implementation, "getInputStream").getInputStream());
            }
            fn getURIResolver(pointer: *anyopaque) ?*URIResolver {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*URIResolver, Inheritance.receiver(implementation, "getURIResolver").getURIResolver());
            }
            fn translate(pointer: *anyopaque, xmlDocumentStr: ?*String) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "translate").translate(xmlDocumentStr));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .base = CompositeTransformInfoInterface.of(object).?.*, .toStringFn = Methods.toString, .setInputStreamFn = Methods.setInputStream, .setURIResolverFn = Methods.setURIResolver, .getStreamSourceFn = Methods.getStreamSource, .getInputStreamFn = Methods.getInputStream, .getURIResolverFn = Methods.getURIResolver, .translateFn = Methods.translate };
        return this;
    }
};


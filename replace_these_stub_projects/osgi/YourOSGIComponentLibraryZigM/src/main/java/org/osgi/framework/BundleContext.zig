// Generated Code Do Not Modify
// package org.osgi.framework

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Dictionary = @import("java/util/Dictionary.zig").Dictionary;
const Bundle = @import("org/osgi/framework/Bundle.zig").Bundle;
const BundleException = @import("org/osgi/framework/BundleException.zig").BundleException;
const InvalidSyntaxException = @import("org/osgi/framework/InvalidSyntaxException.zig").InvalidSyntaxException;
const ServiceReference = @import("org/osgi/framework/ServiceReference.zig").ServiceReference;
const ServiceRegistration = @import("org/osgi/framework/ServiceRegistration.zig").ServiceRegistration;

// Java interface: an implementation is a pointer and a table of functions
pub const BundleContext = struct {
    const Self = @This();
    pub const java_name = "org.osgi.framework.BundleContext";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getBundlesFn: *const fn (pointer: *anyopaque) []?*Bundle,
    installBundleFn: *const fn (pointer: *anyopaque, location: ?*String) ?*Bundle,
    registerServiceFn: *const fn (pointer: *anyopaque, clazz: ?*String, service: ?Object, properties: ?*Dictionary) ?*ServiceRegistration,
    getServiceFn: *const fn (pointer: *anyopaque, reference: ?*ServiceReference) ?Object,
    getServiceReferencesFn: *const fn (pointer: *anyopaque, clazz: ?*String, filter: ?*String) []?*ServiceReference,
    getServiceReferenceFn: *const fn (pointer: *anyopaque, clazz: ?*String) ?*ServiceReference,

    pub fn getBundles(self: *Self) []?*Bundle {
        return self.getBundlesFn(self.pointer);
    }

    pub fn installBundle(self: *Self, location: ?*String) ?*Bundle {
        return self.installBundleFn(self.pointer, location);
    }

    pub fn registerService(self: *Self, clazz: ?*String, service: ?Object, properties: ?*Dictionary) ?*ServiceRegistration {
        return self.registerServiceFn(self.pointer, clazz, service, properties);
    }

    pub fn getService(self: *Self, reference: ?*ServiceReference) ?Object {
        return self.getServiceFn(self.pointer, reference);
    }

    pub fn getServiceReferences(self: *Self, clazz: ?*String, filter: ?*String) []?*ServiceReference {
        return self.getServiceReferencesFn(self.pointer, clazz, filter);
    }

    pub fn getServiceReference(self: *Self, clazz: ?*String) ?*ServiceReference {
        return self.getServiceReferenceFn(self.pointer, clazz);
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
            fn getBundles(pointer: *anyopaque) []?*Bundle {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getBundles").getBundles();
            }
            fn installBundle(pointer: *anyopaque, location: ?*String) ?*Bundle {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*Bundle, Inheritance.receiver(implementation, "installBundle").installBundle(location));
            }
            fn registerService(pointer: *anyopaque, clazz: ?*String, service: ?Object, properties: ?*Dictionary) ?*ServiceRegistration {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*ServiceRegistration, Inheritance.receiver(implementation, "registerService").registerService(clazz, service, properties));
            }
            fn getService(pointer: *anyopaque, reference: ?*ServiceReference) ?Object {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?Object, Inheritance.receiver(implementation, "getService").getService(reference));
            }
            fn getServiceReferences(pointer: *anyopaque, clazz: ?*String, filter: ?*String) []?*ServiceReference {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.receiver(implementation, "getServiceReferences").getServiceReferences(clazz, filter);
            }
            fn getServiceReference(pointer: *anyopaque, clazz: ?*String) ?*ServiceReference {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*ServiceReference, Inheritance.receiver(implementation, "getServiceReference").getServiceReference(clazz));
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getBundlesFn = Methods.getBundles, .installBundleFn = Methods.installBundle, .registerServiceFn = Methods.registerService, .getServiceFn = Methods.getService, .getServiceReferencesFn = Methods.getServiceReferences, .getServiceReferenceFn = Methods.getServiceReference };
        return this;
    }
};


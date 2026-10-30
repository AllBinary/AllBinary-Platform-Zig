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
// package org.allbinary.business.context.modules.storefronts

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;

// Java interface: an implementation is a pointer and a table of functions
pub const BasicStoreFrontInterface = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefronts.BasicStoreFrontInterface";
    pointer: *anyopaque,
    object: Object,
    toStringFn: *const fn (pointer: *anyopaque) ?*String,
    getTestHtmlPathFn: *const fn (pointer: *anyopaque) ?*String,
    getCurrentHostNameFn: *const fn (pointer: *anyopaque) ?*String,
    getCurrentHostNamePathFn: *const fn (pointer: *anyopaque) ?*String,
    getCurrentHomeHostNameFn: *const fn (pointer: *anyopaque) ?*String,
    getCurrentHomeHostNamePathFn: *const fn (pointer: *anyopaque) ?*String,
    getNameFn: *const fn (pointer: *anyopaque) ?*String,
    getUserNameFn: *const fn (pointer: *anyopaque) ?*String,
    getBasketNameFn: *const fn (pointer: *anyopaque) ?*String,
    getHomeHostNameFn: *const fn (pointer: *anyopaque) ?*String,
    getHomeHostNamePathFn: *const fn (pointer: *anyopaque) ?*String,
    getHostNameFn: *const fn (pointer: *anyopaque) ?*String,
    getHostNamePathFn: *const fn (pointer: *anyopaque) ?*String,
    getTestHomeHostNameFn: *const fn (pointer: *anyopaque) ?*String,
    getTestHomeHostNamePathFn: *const fn (pointer: *anyopaque) ?*String,
    getTestHostNameFn: *const fn (pointer: *anyopaque) ?*String,
    getTestHostNamePathFn: *const fn (pointer: *anyopaque) ?*String,
    getStaticPathFn: *const fn (pointer: *anyopaque) ?*String,
    getCategoryPathFn: *const fn (pointer: *anyopaque) ?*String,
    getSubStoresFn: *const fn (pointer: *anyopaque) ?*BasicArrayList,
    getTagLocationFn: *const fn (pointer: *anyopaque) ?*String,
    getPackageLocationFn: *const fn (pointer: *anyopaque) ?*String,
    getInventoryControlFn: *const fn (pointer: *anyopaque) ?*String,
    getFtpFn: *const fn (pointer: *anyopaque) ?*String,
    getFtpPathFn: *const fn (pointer: *anyopaque) ?*String,
    getFtpUserNameFn: *const fn (pointer: *anyopaque) ?*String,
    getFtpPasswordFn: *const fn (pointer: *anyopaque) ?*String,
    getTestFtpFn: *const fn (pointer: *anyopaque) ?*String,
    getTestFtpPathFn: *const fn (pointer: *anyopaque) ?*String,
    getTestFtpUserNameFn: *const fn (pointer: *anyopaque) ?*String,
    getTestFtpPasswordFn: *const fn (pointer: *anyopaque) ?*String,
    getTimeCreatedFn: *const fn (pointer: *anyopaque) ?*String,
    getLastModifiedFn: *const fn (pointer: *anyopaque) ?*String,

    pub fn getTestHtmlPath(self: *Self) ?*String {
        return self.getTestHtmlPathFn(self.pointer);
    }

    pub fn getCurrentHostName(self: *Self) ?*String {
        return self.getCurrentHostNameFn(self.pointer);
    }

    pub fn getCurrentHostNamePath(self: *Self) ?*String {
        return self.getCurrentHostNamePathFn(self.pointer);
    }

    pub fn getCurrentHomeHostName(self: *Self) ?*String {
        return self.getCurrentHomeHostNameFn(self.pointer);
    }

    pub fn getCurrentHomeHostNamePath(self: *Self) ?*String {
        return self.getCurrentHomeHostNamePathFn(self.pointer);
    }

    pub fn getName(self: *Self) ?*String {
        return self.getNameFn(self.pointer);
    }

    pub fn getUserName(self: *Self) ?*String {
        return self.getUserNameFn(self.pointer);
    }

    pub fn getBasketName(self: *Self) ?*String {
        return self.getBasketNameFn(self.pointer);
    }

    pub fn getHomeHostName(self: *Self) ?*String {
        return self.getHomeHostNameFn(self.pointer);
    }

    pub fn getHomeHostNamePath(self: *Self) ?*String {
        return self.getHomeHostNamePathFn(self.pointer);
    }

    pub fn getHostName(self: *Self) ?*String {
        return self.getHostNameFn(self.pointer);
    }

    pub fn getHostNamePath(self: *Self) ?*String {
        return self.getHostNamePathFn(self.pointer);
    }

    pub fn getTestHomeHostName(self: *Self) ?*String {
        return self.getTestHomeHostNameFn(self.pointer);
    }

    pub fn getTestHomeHostNamePath(self: *Self) ?*String {
        return self.getTestHomeHostNamePathFn(self.pointer);
    }

    pub fn getTestHostName(self: *Self) ?*String {
        return self.getTestHostNameFn(self.pointer);
    }

    pub fn getTestHostNamePath(self: *Self) ?*String {
        return self.getTestHostNamePathFn(self.pointer);
    }

    pub fn getStaticPath(self: *Self) ?*String {
        return self.getStaticPathFn(self.pointer);
    }

    pub fn getCategoryPath(self: *Self) ?*String {
        return self.getCategoryPathFn(self.pointer);
    }

    pub fn getSubStores(self: *Self) ?*BasicArrayList {
        return self.getSubStoresFn(self.pointer);
    }

    pub fn getTagLocation(self: *Self) ?*String {
        return self.getTagLocationFn(self.pointer);
    }

    pub fn getPackageLocation(self: *Self) ?*String {
        return self.getPackageLocationFn(self.pointer);
    }

    pub fn getInventoryControl(self: *Self) ?*String {
        return self.getInventoryControlFn(self.pointer);
    }

    pub fn getFtp(self: *Self) ?*String {
        return self.getFtpFn(self.pointer);
    }

    pub fn getFtpPath(self: *Self) ?*String {
        return self.getFtpPathFn(self.pointer);
    }

    pub fn getFtpUserName(self: *Self) ?*String {
        return self.getFtpUserNameFn(self.pointer);
    }

    pub fn getFtpPassword(self: *Self) ?*String {
        return self.getFtpPasswordFn(self.pointer);
    }

    pub fn getTestFtp(self: *Self) ?*String {
        return self.getTestFtpFn(self.pointer);
    }

    pub fn getTestFtpPath(self: *Self) ?*String {
        return self.getTestFtpPathFn(self.pointer);
    }

    pub fn getTestFtpUserName(self: *Self) ?*String {
        return self.getTestFtpUserNameFn(self.pointer);
    }

    pub fn getTestFtpPassword(self: *Self) ?*String {
        return self.getTestFtpPasswordFn(self.pointer);
    }

    pub fn getTimeCreated(self: *Self) ?*String {
        return self.getTimeCreatedFn(self.pointer);
    }

    pub fn getLastModified(self: *Self) ?*String {
        return self.getLastModifiedFn(self.pointer);
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
            fn getTestHtmlPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestHtmlPath").getTestHtmlPath());
            }
            fn getCurrentHostName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCurrentHostName").getCurrentHostName());
            }
            fn getCurrentHostNamePath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCurrentHostNamePath").getCurrentHostNamePath());
            }
            fn getCurrentHomeHostName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCurrentHomeHostName").getCurrentHomeHostName());
            }
            fn getCurrentHomeHostNamePath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCurrentHomeHostNamePath").getCurrentHomeHostNamePath());
            }
            fn getName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getName").getName());
            }
            fn getUserName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getUserName").getUserName());
            }
            fn getBasketName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getBasketName").getBasketName());
            }
            fn getHomeHostName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getHomeHostName").getHomeHostName());
            }
            fn getHomeHostNamePath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getHomeHostNamePath").getHomeHostNamePath());
            }
            fn getHostName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getHostName").getHostName());
            }
            fn getHostNamePath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getHostNamePath").getHostNamePath());
            }
            fn getTestHomeHostName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestHomeHostName").getTestHomeHostName());
            }
            fn getTestHomeHostNamePath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestHomeHostNamePath").getTestHomeHostNamePath());
            }
            fn getTestHostName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestHostName").getTestHostName());
            }
            fn getTestHostNamePath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestHostNamePath").getTestHostNamePath());
            }
            fn getStaticPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getStaticPath").getStaticPath());
            }
            fn getCategoryPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getCategoryPath").getCategoryPath());
            }
            fn getSubStores(pointer: *anyopaque) ?*BasicArrayList {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(implementation, "getSubStores").getSubStores());
            }
            fn getTagLocation(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTagLocation").getTagLocation());
            }
            fn getPackageLocation(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getPackageLocation").getPackageLocation());
            }
            fn getInventoryControl(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getInventoryControl").getInventoryControl());
            }
            fn getFtp(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getFtp").getFtp());
            }
            fn getFtpPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getFtpPath").getFtpPath());
            }
            fn getFtpUserName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getFtpUserName").getFtpUserName());
            }
            fn getFtpPassword(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getFtpPassword").getFtpPassword());
            }
            fn getTestFtp(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestFtp").getTestFtp());
            }
            fn getTestFtpPath(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestFtpPath").getTestFtpPath());
            }
            fn getTestFtpUserName(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestFtpUserName").getTestFtpUserName());
            }
            fn getTestFtpPassword(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTestFtpPassword").getTestFtpPassword());
            }
            fn getTimeCreated(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getTimeCreated").getTimeCreated());
            }
            fn getLastModified(pointer: *anyopaque) ?*String {
                const implementation: Implementation = @ptrCast(@alignCast(pointer));
                return Inheritance.upcast(?*String, Inheritance.receiver(implementation, "getLastModified").getLastModified());
            }
        };
        const this = allocator.create(Self) catch unreachable;
        this.* = .{ .pointer = object, .object = Object.of(object).?, .toStringFn = Methods.toString, .getTestHtmlPathFn = Methods.getTestHtmlPath, .getCurrentHostNameFn = Methods.getCurrentHostName, .getCurrentHostNamePathFn = Methods.getCurrentHostNamePath, .getCurrentHomeHostNameFn = Methods.getCurrentHomeHostName, .getCurrentHomeHostNamePathFn = Methods.getCurrentHomeHostNamePath, .getNameFn = Methods.getName, .getUserNameFn = Methods.getUserName, .getBasketNameFn = Methods.getBasketName, .getHomeHostNameFn = Methods.getHomeHostName, .getHomeHostNamePathFn = Methods.getHomeHostNamePath, .getHostNameFn = Methods.getHostName, .getHostNamePathFn = Methods.getHostNamePath, .getTestHomeHostNameFn = Methods.getTestHomeHostName, .getTestHomeHostNamePathFn = Methods.getTestHomeHostNamePath, .getTestHostNameFn = Methods.getTestHostName, .getTestHostNamePathFn = Methods.getTestHostNamePath, .getStaticPathFn = Methods.getStaticPath, .getCategoryPathFn = Methods.getCategoryPath, .getSubStoresFn = Methods.getSubStores, .getTagLocationFn = Methods.getTagLocation, .getPackageLocationFn = Methods.getPackageLocation, .getInventoryControlFn = Methods.getInventoryControl, .getFtpFn = Methods.getFtp, .getFtpPathFn = Methods.getFtpPath, .getFtpUserNameFn = Methods.getFtpUserName, .getFtpPasswordFn = Methods.getFtpPassword, .getTestFtpFn = Methods.getTestFtp, .getTestFtpPathFn = Methods.getTestFtpPath, .getTestFtpUserNameFn = Methods.getTestFtpUserName, .getTestFtpPasswordFn = Methods.getTestFtpPassword, .getTimeCreatedFn = Methods.getTimeCreated, .getLastModifiedFn = Methods.getLastModified };
        return this;
    }
};


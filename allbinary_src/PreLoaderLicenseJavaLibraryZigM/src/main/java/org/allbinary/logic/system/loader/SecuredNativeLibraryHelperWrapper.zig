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
// package org.allbinary.logic.system.loader

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AbKeys = @import("org/allbinary/logic/system/security/AbKeys.zig").AbKeys;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const NativeLibraryHelperWrapper = @import("org/allbinary/logic/system/loader/NativeLibraryHelperWrapper.zig").NativeLibraryHelperWrapper;
const SecuredNativeLibraryInterface = @import("org/allbinary/logic/system/loader/SecuredNativeLibraryInterface.zig").SecuredNativeLibraryInterface;

pub const SecuredNativeLibraryHelperWrapper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.loader.SecuredNativeLibraryHelperWrapper";
    base: NativeLibraryHelperWrapper = undefined,
    securedNativeLibraryInterface: ?*SecuredNativeLibraryInterface = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(securedNativeLibraryInterface: ?*SecuredNativeLibraryInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(NativeLibraryHelperWrapper, "create1", .{ securedNativeLibraryInterface.?.getLibraryName() }).*;
        this.initFields();
        this.securedNativeLibraryInterface = securedNativeLibraryInterface;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws LicensingException
    pub fn unlock(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) bool {
        return Inheritance.call(self.securedNativeLibraryInterface.?, "unlock", .{ Inheritance.call(AbKeys.getInstance().?, "getKey", .{ abeClientInformation, self.securedNativeLibraryInterface.?.getName() }) });
    }
};


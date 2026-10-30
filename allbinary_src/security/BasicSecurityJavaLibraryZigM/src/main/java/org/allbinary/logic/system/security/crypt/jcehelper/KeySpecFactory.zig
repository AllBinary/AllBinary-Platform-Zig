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
// package org.allbinary.logic.system.security.crypt.jcehelper

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const KeySpec = @import("java/security/spec/KeySpec.zig").KeySpec;
// const DESKeySpec = @import("javax/crypto/spec/DESKeySpec.zig").DESKeySpec;
// const DESedeKeySpec = @import("javax/crypto/spec/DESedeKeySpec.zig").DESedeKeySpec;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const KeySpecFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory";
    DES: ?*String = null,
    DESEDE: ?*String = null,
    BLOWFISH: ?*String = null,
    var instance: ?*KeySpecFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = KeySpecFactory.create();
    }

    fn initFields(this: *Self) void {
        this.DES = String.literal("DES");
        this.DESEDE = String.literal("DESede");
        this.BLOWFISH = String.literal("Blowfish");
    }
    

    pub fn getInstance() ?*KeySpecFactory {
        return Inheritance.upcast(?*KeySpecFactory, KeySpecFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance2(self: *Self, algorithm: ?*String, keyData: []i8) ?*KeySpec {
        { // try
            const tsUtil: ?*TsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
            if (Inheritance.call(tsUtil.?, "compareTo", .{ algorithm, self.DES }) == 0) {
                return Inheritance.upcast(?*KeySpec, Inheritance.callStatic(DESKeySpec, "create1", .{ keyData }));
            } else if (Inheritance.call(tsUtil.?, "compareTo", .{ algorithm, self.DESEDE }) == 0) {
                return Inheritance.upcast(?*KeySpec, Inheritance.callStatic(DESedeKeySpec, "create1", .{ keyData }));
            } else {
                std.debug.panic("{any}", .{error.RuntimeException});
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.GET_INSTANCE, e });
//             std.debug.panic("{any}", .{error.RuntimeException});
    }
};


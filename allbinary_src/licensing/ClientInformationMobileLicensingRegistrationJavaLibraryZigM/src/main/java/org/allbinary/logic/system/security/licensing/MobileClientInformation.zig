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
// package org.allbinary.logic.system.security.licensing

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const RegistrationConfiguration = @import("org/allbinary/logic/system/security/licensing/registration/RegistrationConfiguration.zig").RegistrationConfiguration;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const AbeClientInformation = @import("org/allbinary/logic/system/security/licensing/AbeClientInformation.zig").AbeClientInformation;
const PartnerIdentifierFileUtil = @import("org/allbinary/logic/system/security/licensing/PartnerIdentifierFileUtil.zig").PartnerIdentifierFileUtil;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const MobileClientInformation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.MobileClientInformation";
    base: AbeClientInformation = undefined,
    pub const DESC: ?*String = String.literal("Mobile");
    pub var ANDROID_DESC: ?*String = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        ANDROID_DESC = Inheritance.upcast(?*String, String.plus(String.literal("Android"), MobileClientInformation.DESC));
    }
    

    pub fn create4(name: ?*String, version: ?*String, specialName: ?*String, shortName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbeClientInformation, "create4", .{ name, version, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ specialName }).?, "append", .{ CommonSeps.getInstance().?.SPACE }).?, "append", .{ Inheritance.receiverOf(PartnerIdentifierFileUtil.getInstance().?, "get").get() }))), shortName }).*;
        const string: ?*String = Inheritance.upcast(?*String, Inheritance.receiver(this, "getSpecialName").getSpecialName());
        const number: ?*String = Inheritance.upcast(?*String, Inheritance.call(string.?, "substring", .{ string.?.length() - 1 }));
        if (Inheritance.callStatic(Integer, "getInteger", .{ number }) == null) {
            _ = Inheritance.call(this, "setHardSale", .{ false });
        }
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        if (Inheritance.receiver(this, "isHardSale").isHardSale()) {
            _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "putF", .{ String.literal("Use Hard Coded Selling"), this, commonStrings.?.CONSTRUCTOR });
        } else {
            _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "putF", .{ String.literal("Don't Use Hard Coded Selling"), this, commonStrings.?.CONSTRUCTOR });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn toHashtable(self: *Self) ?*ABHashtable {
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, self.base.toHashtable());
        const registrationConfiguration: ?*RegistrationConfiguration = Inheritance.upcast(?*RegistrationConfiguration, RegistrationConfiguration.getInstance());
        _ = Inheritance.call(hashtable.?, "put", .{ registrationConfiguration.?.NAME, registrationConfiguration.?.getRegistrationCode() });
        return hashtable;
    }
};


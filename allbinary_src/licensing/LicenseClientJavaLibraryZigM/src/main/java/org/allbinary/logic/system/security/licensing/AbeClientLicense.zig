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
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const AbeClientInformationData = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationData.zig").AbeClientInformationData;
const AbeLicenseInterface = @import("org/allbinary/logic/system/security/licensing/AbeLicenseInterface.zig").AbeLicenseInterface;
const LicenseType = @import("org/allbinary/logic/system/security/licensing/LicenseType.zig").LicenseType;
const LicenseTypeFactory = @import("org/allbinary/logic/system/security/licensing/LicenseTypeFactory.zig").LicenseTypeFactory;

pub const AbeClientLicense = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.AbeClientLicense";
    pub const java_interfaces = .{ AbeLicenseInterface };
    hashtable: ?*ABHashtable = null,
    id: ?*String = null,
    servers: ?*BasicArrayList = null,
    special: ?*String = null,
    licenseType: ?*LicenseType = null,
    // Implements AbeLicenseInterface

    fn initFields(this: *Self) void {
        
        
        
        this.special = null;
        
    }
    

    pub fn create1(hashtable: ?*ABHashtable) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.hashtable = Inheritance.upcast(@TypeOf(this.hashtable), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        const abeClientInformationData: ?*AbeClientInformationData = Inheritance.upcast(?*AbeClientInformationData, AbeClientInformationData.getInstance());
        const keyValue: ?Object = Inheritance.upcast(?Object, Inheritance.call(hashtable.?, "get", .{ abeClientInformationData.?.KEY }));
        if (keyValue != null) {
            if (Object.instanceOf(Object.of(keyValue), String)) {
                _ = Inheritance.call(this.hashtable.?, "put", .{ abeClientInformationData.?.KEY, keyValue });
            }
        }
        this.id = Inheritance.cast(?*String, Inheritance.call(hashtable.?, "get", .{ abeClientInformationData.?.LICENSEID }));
        const vector: ?*BasicArrayList = Inheritance.cast(?*BasicArrayList, Inheritance.call(hashtable.?, "get", .{ abeClientInformationData.?.LICENSESERVERS }));
        this.servers = Inheritance.upcast(@TypeOf(this.servers), BasicArrayListD.create());
        const size: i32 = vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(this.servers.?, "add", .{ Inheritance.call(vector.?, "get", .{ index }) });
            }
        }
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        _ = Inheritance.call(this, "setSpecial", .{ Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(hashtable.?, "get", .{ abeClientInformationData.?.SPECIAL })) }) });
        const licenseTypeString: ?*String = Inheritance.upcast(?*String, Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(hashtable.?, "get", .{ abeClientInformationData.?.LICENSE_TYPE })) }));
        this.licenseType = Inheritance.upcast(@TypeOf(this.licenseType), Inheritance.call(LicenseTypeFactory.getInstance().?, "getInstance", .{ licenseTypeString }));
        return this;
    }
    

    pub fn hasRequiredKeys(resultHashtable: ?*ABHashtable) bool {
        const abeClientInformationData: ?*AbeClientInformationData = Inheritance.upcast(?*AbeClientInformationData, AbeClientInformationData.getInstance());
        if (Inheritance.call(resultHashtable.?, "containsKey", .{ abeClientInformationData.?.LICENSEID }) and Inheritance.call(resultHashtable.?, "containsKey", .{ abeClientInformationData.?.LICENSESERVERS }) and Inheritance.call(resultHashtable.?, "containsKey", .{ abeClientInformationData.?.KEY }) and Inheritance.call(resultHashtable.?, "containsKey", .{ abeClientInformationData.?.LICENSE_TYPE })) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn hasKey(self: *Self) bool {
        return self.isValid();
    }
    

    pub fn getKey(self: *Self, keyName: ?*String) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.hashtable.?, "get", .{ keyName }));
    }
    

    pub fn getLicenseId(self: *Self) ?*String {
        return self.id;
    }
    

    pub fn getServers(self: *Self) ?*BasicArrayList {
        return self.servers;
    }
    

    pub fn isValid(self: *Self) bool {
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ Inheritance.call(self, "getKey", .{ AbeClientInformationData.getInstance().?.KEY }) })) {
            return true;
        }
        return false;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const BREAK: ?*String = String.literal("<br/>");
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("License Id: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getLicenseId() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ BREAK });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Is Valid: ") });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isValid() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ BREAK });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Keys: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.hashtable)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ BREAK });
        const serverVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.getServers());
        const size: i32 = serverVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const nextServerString: ?*String = Inheritance.cast(?*String, Inheritance.call(serverVector.?, "get", .{ index }));
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Server: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ nextServerString });
            _ = Inheritance.call(stringBuffer.?, "append", .{ BREAK });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn setSpecial(self: *Self, special: ?*String) void {
        self.special = special;
    }
    

    pub fn getSpecial(self: *Self) ?*String {
        return self.special;
    }
    

    pub fn getLicenseType(self: *Self) ?*LicenseType {
        return self.licenseType;
    }
};


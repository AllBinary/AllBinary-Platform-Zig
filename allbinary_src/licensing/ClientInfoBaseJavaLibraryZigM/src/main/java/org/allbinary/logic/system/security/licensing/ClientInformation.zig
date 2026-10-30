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
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const HardwareInterface = @import("org/allbinary/logic/system/hardware/HardwareInterface.zig").HardwareInterface;
const SystemHardwareFactory = @import("org/allbinary/logic/system/hardware/SystemHardwareFactory.zig").SystemHardwareFactory;
const GenericOperatingSystem = @import("org/allbinary/logic/system/os/GenericOperatingSystem.zig").GenericOperatingSystem;
const NoOperatingSystem = @import("org/allbinary/logic/system/os/NoOperatingSystem.zig").NoOperatingSystem;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const AbeClientInformationData = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationData.zig").AbeClientInformationData;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;

// This is the information sent to the license server
pub const ClientInformation = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.ClientInformation";
    pub const java_interfaces = .{ AbeClientInformationInterface };
    operatingSystemInterface: ?*GenericOperatingSystem = null,
    tsUtil: ?*TsUtil = null,
    name: ?*String = null,
    shortName: ?*String = null,
    version: ?*String = null,
    specialName: ?*String = null,
    hardSale: bool = false,
    licenseId: ?*String = null,
    licenseServers: ?*BasicArrayList = null,
    // Implements AbeClientInformationInterface

    fn initFields(this: *Self) void {
        this.operatingSystemInterface = Inheritance.upcast(?*GenericOperatingSystem, NoOperatingSystem.NO_OPERATING_SYSTEM);
        this.tsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
        
        
        
        
        this.hardSale = true;
        this.licenseId = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.licenseServers = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(BasicArrayListUtil.getInstance().?, "getImmutableInstance").getImmutableInstance());
    }
    

    pub fn create4(name: ?*String, version: ?*String, specialName: ?*String, shortName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        this.version = version;
        this.specialName = specialName;
        this.shortName = Inheritance.upcast(@TypeOf(this.shortName), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ shortName }).?, "append", .{ CommonSeps.getInstance().?.UNDERSCORE }).?, "append", .{ version }))));
        _ = this.init();
        return this;
    }
    

    pub fn init(self: *Self) void {
        _ = self;
    }
    

    pub fn getOperatingSystemInterface(self: *Self) ?*GenericOperatingSystem {
        return self.operatingSystemInterface;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getSpecialName(self: *Self) ?*String {
        return self.specialName;
    }
    

    pub fn getVersion(self: *Self) ?*String {
        return self.version;
    }
    

    pub fn getLicenseId(self: *Self) ?*String {
        return self.licenseId;
    }
    

    pub fn getLicenseServers(self: *Self) ?*BasicArrayList {
        return self.licenseServers;
    }
    

    pub fn getLicenseServer(self: *Self, index: i32) ?*String {
        return Inheritance.cast(?*String, self.licenseServers.?.objectArray[@intCast(index)]);
    }
    

    pub fn getNumberOfLicenseServers(self: *Self) i32 {
        return self.licenseServers.?.size();
    }
    

    pub fn toHashtable(self: *Self) ?*ABHashtable {
        const abeClientInformationData: ?*AbeClientInformationData = Inheritance.upcast(?*AbeClientInformationData, AbeClientInformationData.getInstance());
        const genericOperatingSystem: ?*GenericOperatingSystem = Inheritance.upcast(?*GenericOperatingSystem, self.getOperatingSystemInterface());
        const clientInfoHashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        _ = Inheritance.call(clientInfoHashtable.?, "put", .{ abeClientInformationData.?.NAME, self.name });
        _ = Inheritance.call(clientInfoHashtable.?, "put", .{ abeClientInformationData.?.VERSION, self.version });
        _ = Inheritance.call(clientInfoHashtable.?, "put", .{ abeClientInformationData.?.SPECIALNAME, self.specialName });
        _ = Inheritance.call(clientInfoHashtable.?, "put", .{ abeClientInformationData.?.LICENSEID, self.getLicenseId() });
        _ = Inheritance.call(clientInfoHashtable.?, "put", .{ abeClientInformationData.?.OSNAME, genericOperatingSystem.?.getName() });
        _ = Inheritance.call(clientInfoHashtable.?, "put", .{ abeClientInformationData.?.OSARCH, genericOperatingSystem.?.getArch() });
        _ = Inheritance.call(clientInfoHashtable.?, "put", .{ abeClientInformationData.?.OSVERSION, genericOperatingSystem.?.getVersion() });
        _ = Inheritance.call(clientInfoHashtable.?, "put", .{ abeClientInformationData.?.OS, Object.toString(Object.of(genericOperatingSystem)) });
        const hardwareInterface: ?*HardwareInterface = Inheritance.upcast(?*HardwareInterface, Inheritance.call(SystemHardwareFactory.getInstance().?, "getInstance", .{ genericOperatingSystem }));
        const hardwareString: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(hardwareInterface)));
        _ = Inheritance.call(clientInfoHashtable.?, "put", .{ abeClientInformationData.?.HARDWARE, hardwareString });
        return clientInfoHashtable;
    }
    

    pub fn isSameId(self: *Self, alicenseId: ?*String) bool {
        if (Inheritance.call(self.tsUtil.?, "compareTo", .{ self.getLicenseId(), alicenseId }) == 0) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn isLargerOrDifferentServerList(self: *Self, list: ?*BasicArrayList) bool {
        const size: i32 = list.?.size() - 1;
        const currentSize: i32 = self.licenseServers.?.size() - 1;
        if (size > currentSize) {
            return true;
        }
        {
            var index: i32 = size;
            while (index >= 0) : (index -= 1) {
            const newServerName: ?*String = Inheritance.cast(?*String, list.?.objectArray[@intCast(index)]);
            {
                var index2: i32 = currentSize;
                while (index2 >= 0) : (index2 -= 1) {
                const nextOldServerName: ?*String = Inheritance.cast(?*String, self.licenseServers.?.objectArray[@intCast(index)]);
                if (Inheritance.call(self.tsUtil.?, "compareTo", .{ newServerName, nextOldServerName }) != 0) {
                    return true;
                }
                }
            }
            }
        }
        return false;
    }
    

    pub fn setHardSale(self: *Self, hardSale: bool) void {
        self.hardSale = hardSale;
    }
    

    pub fn isHardSale(self: *Self) bool {
        return self.hardSale;
    }
    

    pub fn setOperatingSystemInterface(self: *Self, operatingSystemInterface: ?*GenericOperatingSystem) void {
        self.operatingSystemInterface = operatingSystemInterface;
    }
    

    pub fn setLicenseId(self: *Self, licenseId: ?*String) void {
        self.licenseId = licenseId;
    }
    

    pub fn setLicenseServers(self: *Self, licenseServers: ?*BasicArrayList) void {
        self.licenseServers = licenseServers;
    }
    

    pub fn toShortString(self: *Self) ?*String {
        return self.shortName;
    }
};

